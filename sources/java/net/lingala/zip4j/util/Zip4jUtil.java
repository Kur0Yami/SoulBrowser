package net.lingala.zip4j.util;

import android.support.v4.media.a;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.model.CentralDirectory;
import net.lingala.zip4j.model.FileHeader;
import net.lingala.zip4j.model.ZipModel;

/* loaded from: classes4.dex */
public class Zip4jUtil {
    public static boolean a(String str) {
        if (l(str)) {
            return new File(str).exists();
        }
        throw new ZipException("path is null");
    }

    public static boolean b(String str) {
        if (l(str)) {
            if (a(str)) {
                try {
                    return new File(str).canRead();
                } catch (Exception unused) {
                    throw new ZipException("cannot read zip file");
                }
            }
            throw new ZipException(a.C("file does not exist: ", str));
        }
        throw new ZipException("path is null");
    }

    public static byte[] c(String str) {
        try {
            String e = e(str);
            if (e.equals("UTF8")) {
                return str.getBytes("UTF8");
            }
            if (e.equals("Cp850")) {
                return str.getBytes("Cp850");
            }
            return str.getBytes();
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        } catch (Exception e2) {
            throw new ZipException(e2);
        }
    }

    public static String d(byte[] bArr, boolean z) {
        if (z) {
            try {
                return new String(bArr, "UTF8");
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        try {
            return new String(bArr, "Cp850");
        } catch (UnsupportedEncodingException unused2) {
            return new String(bArr);
        }
    }

    public static String e(String str) {
        if (str != null) {
            try {
                if (str.equals(new String(str.getBytes("UTF8"), "UTF8"))) {
                    return "UTF8";
                }
                if (str.equals(new String(str.getBytes("Cp850"), "Cp850"))) {
                    return "Cp850";
                }
                return InternalZipConstants.f22018a;
            } catch (UnsupportedEncodingException unused) {
                return InternalZipConstants.f22018a;
            } catch (Exception unused2) {
                return InternalZipConstants.f22018a;
            }
        }
        throw new ZipException("input string is null, cannot detect charset");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.nio.ByteBuffer] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.nio.Buffer] */
    public static int f(String str, String str2) {
        if (l(str)) {
            if (l(str2)) {
                try {
                    if (str2.equals("UTF8")) {
                        str = ByteBuffer.wrap(str.getBytes("UTF8"));
                    } else if (str2.equals("Cp850")) {
                        str = ByteBuffer.wrap(str.getBytes("Cp850"));
                    } else {
                        str = ByteBuffer.wrap(str.getBytes(str2));
                    }
                } catch (UnsupportedEncodingException unused) {
                    str = ByteBuffer.wrap(str.getBytes());
                } catch (Exception e) {
                    throw new ZipException(e);
                }
                return str.limit();
            }
            throw new ZipException("encoding is not defined, cannot calculate string length");
        }
        throw new ZipException("input string is null, cannot calculate encoded String length");
    }

    public static FileHeader g(ZipModel zipModel, String str) {
        if (zipModel != null) {
            if (l(str)) {
                FileHeader h = h(zipModel, str);
                if (h == null) {
                    String replaceAll = str.replaceAll("\\\\", "/");
                    FileHeader h2 = h(zipModel, replaceAll);
                    if (h2 == null) {
                        return h(zipModel, replaceAll.replaceAll("/", "\\\\"));
                    }
                    return h2;
                }
                return h;
            }
            throw new ZipException(a.C("file name is null, cannot determine file header for fileName: ", str));
        }
        throw new ZipException(a.C("zip model is null, cannot determine file header for fileName: ", str));
    }

    public static FileHeader h(ZipModel zipModel, String str) {
        if (zipModel != null) {
            if (l(str)) {
                CentralDirectory centralDirectory = zipModel.f;
                if (centralDirectory != null) {
                    ArrayList arrayList = centralDirectory.f21997a;
                    if (arrayList != null) {
                        if (arrayList.size() <= 0) {
                            return null;
                        }
                        ArrayList arrayList2 = zipModel.f.f21997a;
                        for (int i = 0; i < arrayList2.size(); i++) {
                            FileHeader fileHeader = (FileHeader) arrayList2.get(i);
                            String str2 = fileHeader.p;
                            if (l(str2) && str.equalsIgnoreCase(str2)) {
                                return fileHeader;
                            }
                        }
                        return null;
                    }
                    throw new ZipException(a.C("file Headers are null, cannot determine file header with exact match for fileName: ", str));
                }
                throw new ZipException(a.C("central directory is null, cannot determine file header with exact match for fileName: ", str));
            }
            throw new ZipException(a.C("file name is null, cannot determine file header with exact match for fileName: ", str));
        }
        throw new ZipException(a.C("zip model is null, cannot determine file header with exact match for fileName: ", str));
    }

    public static long i(File file) {
        if (file != null) {
            if (file.isDirectory()) {
                return -1L;
            }
            return file.length();
        }
        throw new ZipException("input file is null, cannot calculate file length");
    }

    public static int j(ZipModel zipModel, FileHeader fileHeader) {
        if (zipModel != null) {
            CentralDirectory centralDirectory = zipModel.f;
            if (centralDirectory != null) {
                ArrayList arrayList = centralDirectory.f21997a;
                if (arrayList != null) {
                    if (arrayList.size() > 0) {
                        String str = fileHeader.p;
                        if (l(str)) {
                            ArrayList arrayList2 = zipModel.f.f21997a;
                            for (int i = 0; i < arrayList2.size(); i++) {
                                String str2 = ((FileHeader) arrayList2.get(i)).p;
                                if (l(str2) && str.equalsIgnoreCase(str2)) {
                                    return i;
                                }
                            }
                            return -1;
                        }
                        throw new ZipException("file name in file header is empty or null, cannot determine index of file header");
                    }
                    return -1;
                }
                throw new ZipException("file Headers are null, cannot determine index of file header");
            }
            throw new ZipException("central directory is null, ccannot determine index of file header");
        }
        throw new ZipException("input parameters is null, cannot determine index of file header");
    }

    public static String k(String str) {
        String name;
        if (l(str)) {
            File file = new File(str);
            if (file.isDirectory()) {
                name = file.getName() + "/";
            } else {
                File file2 = new File(str);
                if (file2.isDirectory()) {
                    name = null;
                } else {
                    name = file2.getName();
                }
            }
            if (l(name)) {
                return name;
            }
            throw new ZipException("Error determining file name");
        }
        throw new ZipException("input file path/name is empty, cannot calculate relative file name");
    }

    public static boolean l(String str) {
        if (str != null && str.trim().length() > 0) {
            return true;
        }
        return false;
    }
}
