package com.mycompany.app.ocr;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/**
 * Downloads ML Kit on-device OCR dependencies from Google Maven at runtime
 * (models + native pipeline lib). Does not use Google Play Services ModuleInstall.
 *
 * The small OCR dex (ModuleDescriptors + BundledTextRecognizerCreator) remains in
 * the APK because Maven AARs ship JVM bytecode that cannot be loaded on Android.
 */
public final class OcrRuntimeInstaller {
    private static final String TAG = "OcrRuntimeInstaller";
    public static final String INSTALL_VERSION = "mlkit-text-16.0.1-common-17.0.0";

    private static final String MAVEN =
            "https://dl.google.com/dl/android/maven2/com/google/mlkit/";
    private static final String TEXT_RECOGNITION_VERSION = "16.0.1";
    private static final String BUNDLED_COMMON_VERSION = "17.0.0";
    private static final String NATIVE_LIB = "libmlkit_google_ocr_pipeline.so";

    private static final Object LOCK = new Object();
    private static volatile boolean activated;

    public interface ProgressListener {
        void onProgress(int current, int total, String message);
    }

    private OcrRuntimeInstaller() {}

    public static File rootDir(Context context) {
        return new File(context.getApplicationContext().getFilesDir(), "ocr-runtime");
    }

    public static boolean isReady(Context context) {
        File root = rootDir(context);
        File marker = new File(root, "ready");
        if (!marker.isFile()) {
            return false;
        }
        File assetsZip = assetsZip(root);
        File lib = nativeLibFile(root);
        return assetsZip.isFile() && assetsZip.length() > 0 && lib.isFile() && lib.length() > 0;
    }

    public static boolean isActivated() {
        return activated;
    }

    /** Load native lib + register model assets. Safe to call repeatedly. */
    public static void activate(Context context) throws Exception {
        synchronized (LOCK) {
            if (activated) {
                return;
            }
            if (!isReady(context)) {
                throw new IllegalStateException("OCR runtime not installed");
            }
            File root = rootDir(context);
            System.load(nativeLibFile(root).getAbsolutePath());
            addAssetPath(context.getApplicationContext().getAssets(), assetsZip(root).getAbsolutePath());
            activated = true;
            Log.i(TAG, "OCR runtime activated");
        }
    }

    public static boolean tryActivate(Context context) {
        try {
            activate(context);
            return true;
        } catch (Throwable t) {
            Log.w(TAG, "activate failed", t);
            return false;
        }
    }

    /**
     * Download + extract OCR models/libs from Google Maven if needed, then activate.
     * @return true on success
     */
    public static boolean ensureInstalled(Context context, ProgressListener listener) {
        Context app = context.getApplicationContext();
        synchronized (LOCK) {
            try {
                if (isReady(app)) {
                    activate(app);
                    progress(listener, 1, 1, null);
                    return true;
                }

                File root = rootDir(app);
                File tmp = new File(root, "tmp");
                deleteRecursive(tmp);
                if (!tmp.mkdirs() && !tmp.isDirectory()) {
                    throw new IOException("Cannot create " + tmp);
                }

                List<String> urls = downloadUrls();
                int total = urls.size() + 2; // downloads + extract + finalize
                int step = 0;

                File downloadDir = new File(tmp, "aars");
                downloadDir.mkdirs();
                List<File> aars = new ArrayList<>();
                for (String url : urls) {
                    String name = url.substring(url.lastIndexOf('/') + 1);
                    progress(listener, step, total, "Downloading " + name);
                    File dest = new File(downloadDir, name);
                    download(url, dest);
                    aars.add(dest);
                    step++;
                }

                progress(listener, step, total, "Extracting OCR models");
                File extractDir = new File(tmp, "extract");
                extractDir.mkdirs();
                File libOut = new File(root, "lib");
                deleteRecursive(libOut);
                libOut.mkdirs();
                File assetsStaging = new File(tmp, "assets-staging");
                deleteRecursive(assetsStaging);
                assetsStaging.mkdirs();

                String abi = preferredAbi();
                boolean foundLib = false;
                for (File aar : aars) {
                    extractAar(aar, extractDir, assetsStaging, libOut, abi);
                    if (nativeLibFile(root).isFile()) {
                        foundLib = true;
                    }
                }
                if (!foundLib) {
                    // Fall back: try alternate ABIs present in the AAR.
                    for (String alt : new String[] {"arm64-v8a", "armeabi-v7a", "x86_64", "x86"}) {
                        if (alt.equals(abi)) {
                            continue;
                        }
                        for (File aar : aars) {
                            extractNativeFromAar(aar, libOut, alt);
                        }
                        if (nativeLibFile(root).isFile()) {
                            foundLib = true;
                            break;
                        }
                    }
                }
                if (!foundLib || !nativeLibFile(root).isFile()) {
                    throw new IOException("Native OCR library missing for ABI " + abi);
                }

                File assetsZip = assetsZip(root);
                File assetsZipTmp = new File(tmp, "assets.zip");
                packAssetsZip(assetsStaging, assetsZipTmp);
                if (assetsZip.exists() && !assetsZip.delete()) {
                    throw new IOException("Cannot replace assets zip");
                }
                if (!assetsZipTmp.renameTo(assetsZip)) {
                    copyFile(assetsZipTmp, assetsZip);
                }

                step++;
                progress(listener, step, total, "Finalizing");

                File marker = new File(root, "ready");
                FileOutputStream fos = new FileOutputStream(marker);
                try {
                    fos.write(INSTALL_VERSION.getBytes("UTF-8"));
                } finally {
                    fos.close();
                }

                deleteRecursive(tmp);
                activate(app);
                step++;
                progress(listener, step, total, null);
                Log.i(TAG, "OCR runtime installed");
                return true;
            } catch (Throwable t) {
                Log.e(TAG, "OCR runtime install failed", t);
                return false;
            }
        }
    }

    private static List<String> downloadUrls() {
        List<String> urls = new ArrayList<>();
        urls.add(MAVEN + "text-recognition-bundled-common/" + BUNDLED_COMMON_VERSION
                + "/text-recognition-bundled-common-" + BUNDLED_COMMON_VERSION + ".aar");
        urls.add(MAVEN + "text-recognition/" + TEXT_RECOGNITION_VERSION
                + "/text-recognition-" + TEXT_RECOGNITION_VERSION + ".aar");
        for (String lang : new String[] {"chinese", "japanese", "korean", "devanagari"}) {
            urls.add(MAVEN + "text-recognition-" + lang + "/" + TEXT_RECOGNITION_VERSION
                    + "/text-recognition-" + lang + "-" + TEXT_RECOGNITION_VERSION + ".aar");
        }
        return urls;
    }

    private static File assetsZip(File root) {
        return new File(root, "mlkit-ocr-assets.zip");
    }

    private static File nativeLibFile(File root) {
        return new File(new File(root, "lib"), NATIVE_LIB);
    }

    private static String preferredAbi() {
        if (Build.SUPPORTED_ABIS != null && Build.SUPPORTED_ABIS.length > 0) {
            for (String abi : Build.SUPPORTED_ABIS) {
                if ("arm64-v8a".equals(abi) || "armeabi-v7a".equals(abi)
                        || "x86_64".equals(abi) || "x86".equals(abi)) {
                    return abi;
                }
            }
            return Build.SUPPORTED_ABIS[0];
        }
        return "arm64-v8a";
    }

    private static void download(String urlSpec, File dest) throws IOException {
        File parent = dest.getParentFile();
        if (parent != null) {
            parent.mkdirs();
        }
        File partial = new File(dest.getAbsolutePath() + ".part");
        HttpURLConnection conn = (HttpURLConnection) new URL(urlSpec).openConnection();
        conn.setConnectTimeout(30000);
        conn.setReadTimeout(120000);
        conn.setInstanceFollowRedirects(true);
        conn.connect();
        int code = conn.getResponseCode();
        if (code != 200) {
            conn.disconnect();
            throw new IOException("HTTP " + code + " for " + urlSpec);
        }
        InputStream in = new BufferedInputStream(conn.getInputStream());
        try {
            OutputStream out = new FileOutputStream(partial);
            try {
                byte[] buf = new byte[8192];
                int n;
                while ((n = in.read(buf)) >= 0) {
                    out.write(buf, 0, n);
                }
                out.flush();
            } finally {
                out.close();
            }
        } finally {
            in.close();
            conn.disconnect();
        }
        if (dest.exists() && !dest.delete()) {
            throw new IOException("Cannot replace " + dest);
        }
        if (!partial.renameTo(dest)) {
            copyFile(partial, dest);
            partial.delete();
        }
    }

    private static void extractAar(
            File aar,
            File extractDir,
            File assetsStaging,
            File libOut,
            String abi) throws IOException {
        ZipFile zip = new ZipFile(aar);
        try {
            java.util.Enumeration<? extends ZipEntry> entries = zip.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                String name = entry.getName();
                if (entry.isDirectory()) {
                    continue;
                }
                if (name.startsWith("assets/")) {
                    File out = new File(assetsStaging, name.substring("assets/".length()));
                    writeZipEntry(zip, entry, out);
                } else if (name.equals("jni/" + abi + "/" + NATIVE_LIB)) {
                    File out = new File(libOut, NATIVE_LIB);
                    writeZipEntry(zip, entry, out);
                }
            }
        } finally {
            zip.close();
        }
    }

    private static void extractNativeFromAar(File aar, File libOut, String abi) throws IOException {
        ZipFile zip = new ZipFile(aar);
        try {
            ZipEntry entry = zip.getEntry("jni/" + abi + "/" + NATIVE_LIB);
            if (entry != null) {
                writeZipEntry(zip, entry, new File(libOut, NATIVE_LIB));
            }
        } finally {
            zip.close();
        }
    }

    private static void writeZipEntry(ZipFile zip, ZipEntry entry, File out) throws IOException {
        File parent = out.getParentFile();
        if (parent != null) {
            parent.mkdirs();
        }
        InputStream in = zip.getInputStream(entry);
        try {
            OutputStream os = new FileOutputStream(out);
            try {
                byte[] buf = new byte[8192];
                int n;
                while ((n = in.read(buf)) >= 0) {
                    os.write(buf, 0, n);
                }
            } finally {
                os.close();
            }
        } finally {
            in.close();
        }
    }

    /** Zip layout: assets/mlkit-google-ocr-models/... for AssetManager.addAssetPath. */
    private static void packAssetsZip(File assetsStaging, File zipOut) throws IOException {
        File parent = zipOut.getParentFile();
        if (parent != null) {
            parent.mkdirs();
        }
        ZipOutputStream zos = new ZipOutputStream(new FileOutputStream(zipOut));
        try {
            // Store empty marker so zip is valid even if empty (should not happen).
            addFileToZip(zos, assetsStaging, assetsStaging, "assets/");
        } finally {
            zos.close();
        }
        if (!zipOut.isFile() || zipOut.length() == 0) {
            throw new IOException("Failed to pack OCR assets");
        }
    }

    private static void addFileToZip(ZipOutputStream zos, File root, File file, String prefix)
            throws IOException {
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) {
                return;
            }
            for (File child : children) {
                addFileToZip(zos, root, child, prefix);
            }
            return;
        }
        String rel = root.toURI().relativize(file.toURI()).getPath();
        ZipEntry entry = new ZipEntry(prefix + rel);
        zos.putNextEntry(entry);
        FileInputStream fis = new FileInputStream(file);
        try {
            byte[] buf = new byte[8192];
            int n;
            while ((n = fis.read(buf)) >= 0) {
                zos.write(buf, 0, n);
            }
        } finally {
            fis.close();
        }
        zos.closeEntry();
    }

    private static void addAssetPath(AssetManager am, String path) throws Exception {
        Method m = AssetManager.class.getDeclaredMethod("addAssetPath", String.class);
        m.setAccessible(true);
        Object result = m.invoke(am, path);
        if (result instanceof Integer && ((Integer) result) == 0) {
            throw new IOException("addAssetPath failed for " + path);
        }
    }

    private static void progress(ProgressListener listener, int current, int total, String message) {
        if (listener != null) {
            listener.onProgress(current, total, message);
        }
    }

    private static void copyFile(File from, File to) throws IOException {
        InputStream in = new FileInputStream(from);
        try {
            OutputStream out = new FileOutputStream(to);
            try {
                byte[] buf = new byte[8192];
                int n;
                while ((n = in.read(buf)) >= 0) {
                    out.write(buf, 0, n);
                }
            } finally {
                out.close();
            }
        } finally {
            in.close();
        }
    }

    private static void deleteRecursive(File f) {
        if (f == null || !f.exists()) {
            return;
        }
        if (f.isDirectory()) {
            File[] children = f.listFiles();
            if (children != null) {
                for (File c : children) {
                    deleteRecursive(c);
                }
            }
        }
        //noinspection ResultOfMethodCallIgnored
        f.delete();
    }
}
