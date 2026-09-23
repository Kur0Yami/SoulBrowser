package com.mycompany.app.web;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.URLUtil;
import android.content.DialogInterface;
import com.mycompany.app.main.MainUtil;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * Downloads a network PDF to cache and opens it in the in-app ImageViewPdf viewer,
 * so PDF links are previewed instead of being forced through the download dialog.
 */
public final class PdfPreview {
    public interface Fallback {
        void run();
    }

    private PdfPreview() {
    }

    public static boolean isPdf(String url, String mimeType) {
        if (!TextUtils.isEmpty(mimeType)) {
            String mime = mimeType.toLowerCase(Locale.US);
            if (mime.contains("application/pdf") || mime.equals("application/x-pdf")) {
                return true;
            }
        }
        return isPdfUrl(url);
    }

    public static boolean isPdfUrl(String url) {
        if (TextUtils.isEmpty(url) || !URLUtil.isNetworkUrl(url)) {
            return false;
        }
        String path = url;
        int q = path.indexOf('?');
        if (q >= 0) {
            path = path.substring(0, q);
        }
        int h = path.indexOf('#');
        if (h >= 0) {
            path = path.substring(0, h);
        }
        return path.toLowerCase(Locale.US).endsWith(".pdf");
    }

    public static void open(final Activity activity, final String url, final String userAgent,
            final Fallback fallback) {
        if (activity == null || activity.isFinishing() || TextUtils.isEmpty(url)
                || !URLUtil.isNetworkUrl(url)) {
            if (fallback != null) {
                fallback.run();
            }
            return;
        }

        // Always cache + open ImageViewPdf. QUICK_VIEW resolves to Google Drive
        // (or other external PDF handlers) when installed, which defeats in-app preview.
        final Handler main = new Handler(Looper.getMainLooper());
        final AtomicBoolean cancelled = new AtomicBoolean(false);
        final ProgressDialog dialog = new ProgressDialog(activity);
        try {
            int loadingId = activity.getResources().getIdentifier(
                    "loading", "string", activity.getPackageName());
            dialog.setMessage(loadingId != 0 ? activity.getString(loadingId) : "Loading…");
            dialog.setIndeterminate(true);
            dialog.setCancelable(true);
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override
                public void onCancel(DialogInterface d) {
                    cancelled.set(true);
                }
            });
            dialog.show();
        } catch (Exception ignored) {
        }

        Thread worker = new Thread(new Runnable() {
            @Override
            public void run() {
                File out = null;
                try {
                    String[] headerName = new String[1];
                    out = downloadToCache(activity, url, userAgent, headerName);
                    if (cancelled.get()) {
                        deleteQuietly(out);
                        return;
                    }
                    if (out == null || !out.isFile() || out.length() == 0L) {
                        throw new IOException("empty pdf");
                    }
                    final File pdfFile = out;
                    final String displayName = resolveDisplayName(url, headerName[0]);
                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            dismissQuietly(dialog);
                            if (cancelled.get() || activity.isFinishing()) {
                                deleteQuietly(pdfFile);
                                return;
                            }
                            if (!openLocalPdf(activity, pdfFile, displayName)) {
                                deleteQuietly(pdfFile);
                                if (fallback != null) {
                                    fallback.run();
                                }
                            }
                        }
                    });
                } catch (Exception e) {
                    deleteQuietly(out);
                    main.post(new Runnable() {
                        @Override
                        public void run() {
                            dismissQuietly(dialog);
                            if (!cancelled.get() && fallback != null) {
                                fallback.run();
                            }
                        }
                    });
                }
            }
        }, "pdf-preview");
        worker.start();
    }

    private static boolean openLocalPdf(Activity activity, File file, String name) {
        try {
            Intent intent = new Intent();
            intent.setClassName(activity.getPackageName(),
                    "com.mycompany.app.image.ImageViewPdf");
            intent.putExtra("EXTRA_TYPE", 2);
            intent.putExtra("EXTRA_PATH", file.getAbsolutePath());
            intent.putExtra("EXTRA_INDEX", 0);
            if (!TextUtils.isEmpty(name)) {
                intent.putExtra("EXTRA_NAME", name);
            }
            activity.startActivity(intent);
            return true;
        } catch (Exception e) {
            // Do not fall back to ACTION_VIEW: that also hands the PDF to Drive/etc.
            return false;
        }
    }

    /** Prefer Content-Disposition, then query params like file=, else URL path. */
    static String resolveDisplayName(String url, String contentDispositionName) {
        if (!TextUtils.isEmpty(contentDispositionName)) {
            return ensurePdfSuffix(MainUtil.p3(basename(contentDispositionName)));
        }
        String fromQuery = nameFromQuery(url);
        if (!TextUtils.isEmpty(fromQuery)) {
            return ensurePdfSuffix(MainUtil.p3(fromQuery));
        }
        return nameFromUrl(url);
    }

    private static String nameFromQuery(String url) {
        if (TextUtils.isEmpty(url)) {
            return null;
        }
        try {
            Uri uri = Uri.parse(url);
            String[] keys = {"file", "filename", "path", "name", "f", "doc", "document"};
            for (String key : keys) {
                String value = uri.getQueryParameter(key);
                String base = basename(value);
                if (!TextUtils.isEmpty(base) && base.indexOf('.') > 0) {
                    return base;
                }
            }
        } catch (Exception ignored) {
        }
        return null;
    }

    private static String basename(String value) {
        if (TextUtils.isEmpty(value)) {
            return null;
        }
        String name = value.trim();
        int slash = Math.max(name.lastIndexOf('/'), name.lastIndexOf('\\'));
        if (slash >= 0 && slash + 1 < name.length()) {
            name = name.substring(slash + 1);
        }
        return TextUtils.isEmpty(name) ? null : name;
    }

    private static String ensurePdfSuffix(String name) {
        if (TextUtils.isEmpty(name)) {
            return "document.pdf";
        }
        if (!name.toLowerCase(Locale.US).endsWith(".pdf")) {
            return name + ".pdf";
        }
        return name;
    }

    private static String nameFromUrl(String url) {
        if (TextUtils.isEmpty(url)) {
            return "document.pdf";
        }
        String path = url;
        int q = path.indexOf('?');
        if (q >= 0) {
            path = path.substring(0, q);
        }
        int h = path.indexOf('#');
        if (h >= 0) {
            path = path.substring(0, h);
        }
        int slash = path.lastIndexOf('/');
        String name = slash >= 0 ? path.substring(slash + 1) : path;
        if (TextUtils.isEmpty(name)) {
            return "document.pdf";
        }
        String lower = name.toLowerCase(Locale.US);
        // downloadfile.php?file=book.pdf → path is downloadfile.php; don't invent downloadfile.php.pdf
        if (lower.endsWith(".php") || lower.endsWith(".asp") || lower.endsWith(".aspx")
                || lower.endsWith(".jsp") || lower.endsWith(".cgi")) {
            return "document.pdf";
        }
        if (!lower.endsWith(".pdf")) {
            name = name + ".pdf";
        }
        return MainUtil.p3(name);
    }

    private static File downloadToCache(Activity activity, String url, String userAgent,
            String[] contentDispositionNameOut) throws Exception {
        File dir = new File(activity.getCacheDir(), "pdf_preview");
        if (!dir.exists() && !dir.mkdirs()) {
            throw new IOException("cache dir");
        }
        // Keep only a few recent previews.
        File[] old = dir.listFiles();
        if (old != null && old.length > 8) {
            for (File f : old) {
                //noinspection ResultOfMethodCallIgnored
                f.delete();
            }
        }
        String name = "preview_" + System.currentTimeMillis() + ".pdf";
        File out = new File(dir, name);

        HttpURLConnection conn = null;
        InputStream in = null;
        FileOutputStream fos = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setConnectTimeout(15000);
            conn.setReadTimeout(30000);
            conn.setInstanceFollowRedirects(true);
            if (!TextUtils.isEmpty(userAgent)) {
                conn.setRequestProperty("User-Agent", userAgent);
            }
            try {
                String cookie = CookieManager.getInstance().getCookie(url);
                if (!TextUtils.isEmpty(cookie)) {
                    conn.setRequestProperty("Cookie", cookie);
                }
            } catch (Exception ignored) {
            }
            conn.connect();
            int code = conn.getResponseCode();
            if (code >= 400) {
                throw new IOException("http " + code);
            }
            if (contentDispositionNameOut != null && contentDispositionNameOut.length > 0) {
                try {
                    contentDispositionNameOut[0] = MainUtil.z2(
                            conn.getHeaderField("Content-Disposition"));
                } catch (Exception ignored) {
                    contentDispositionNameOut[0] = null;
                }
            }
            in = conn.getInputStream();
            fos = new FileOutputStream(out);
            byte[] buf = new byte[8192];
            int n;
            long total = 0L;
            while ((n = in.read(buf)) >= 0) {
                fos.write(buf, 0, n);
                total += n;
                if (total > 200L * 1024L * 1024L) {
                    throw new IOException("too large");
                }
            }
            fos.flush();
            return out;
        } finally {
            try {
                if (fos != null) {
                    fos.close();
                }
            } catch (Exception ignored) {
            }
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception ignored) {
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
    }

    private static void dismissQuietly(ProgressDialog dialog) {
        try {
            if (dialog != null && dialog.isShowing()) {
                dialog.dismiss();
            }
        } catch (Exception ignored) {
        }
    }

    private static void deleteQuietly(File file) {
        if (file != null) {
            try {
                //noinspection ResultOfMethodCallIgnored
                file.delete();
            } catch (Exception ignored) {
            }
        }
    }
}
