package com.mycompany.app.compress;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import java.io.File;
import java.io.InputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class CompressUtil {

    /* renamed from: a, reason: collision with root package name */
    public static final ArrayList f12874a = new ArrayList();

    /* loaded from: classes3.dex */
    public interface CompressListener {
        void a(String str, boolean z);

        void b(long j, long j2, String str);

        void c(String str);

        boolean isCancelled();
    }

    /* loaded from: classes3.dex */
    public static class CompressSort implements Comparator<Compress.SortItem> {
        @Override // java.util.Comparator
        public final int compare(Compress.SortItem sortItem, Compress.SortItem sortItem2) {
            Compress.SortItem sortItem3 = sortItem;
            Compress.SortItem sortItem4 = sortItem2;
            if (sortItem3 == null && sortItem4 == null) {
                return 0;
            }
            if (sortItem3 == null) {
                return 1;
            }
            if (sortItem4 == null) {
                return -1;
            }
            int n = MainUtil.n(sortItem3.b, sortItem4.b, false);
            if (n != 0) {
                return n;
            }
            return MainUtil.m(sortItem3.f12870c, sortItem4.f12870c, false);
        }
    }

    public static void a(final Context context) {
        if (context == null) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.compress.CompressUtil.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    MainUtil.z(MainUtil.k0(context, ".viewer"));
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.mycompany.app.compress.Compress$SortItem] */
    public static Compress.SortItem b(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ?? obj = new Object();
        while (str.endsWith("/")) {
            if (str.length() <= 1) {
                obj.f12869a = str;
                obj.b = null;
                obj.f12870c = str;
                return obj;
            }
            str = a.d(1, 0, str);
        }
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf != -1 && (i = lastIndexOf + 1) < str.length()) {
            obj.f12869a = str;
            obj.b = str.substring(0, lastIndexOf);
            obj.f12870c = str.substring(i);
            return obj;
        }
        obj.f12869a = str;
        obj.b = null;
        obj.f12870c = str;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator, java.lang.Object] */
    public static String c(Context context, String str) {
        ArrayList arrayList;
        if (!MainUri.q(str)) {
            return str;
        }
        String i = MainUri.i(context, str);
        try {
            if (new File(i).canRead()) {
                return i;
            }
        } catch (Exception unused) {
        }
        String k0 = MainUtil.k0(context, ".viewer");
        try {
            File file = new File(k0);
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception unused2) {
        }
        String a2 = new Object().a(str);
        String D = a.D(k0, "/", a2);
        try {
            arrayList = f12874a;
        } catch (Exception unused3) {
        }
        if (arrayList.contains(a2)) {
            if (new File(D).exists()) {
                return D;
            }
        } else {
            arrayList.add(a2);
            if (arrayList.size() > 10) {
                new File(k0 + "/" + ((String) arrayList.get(0))).delete();
                arrayList.remove(0);
            }
        }
        if (!MainUri.b(context, str, D, true, false)) {
            String str2 = null;
            if (!TextUtils.isEmpty(str) && str.startsWith("content://")) {
                try {
                    String decode = URLDecoder.decode(str, "UTF-8");
                    int indexOf = decode.indexOf("file://", 10);
                    if (indexOf != -1) {
                        str2 = decode.substring(indexOf);
                    }
                } catch (Exception unused4) {
                }
            }
            if (!MainUtil.u(str2, D)) {
                return str;
            }
        }
        return D;
    }

    public static byte[] d(InputStream inputStream, int i) {
        byte[] bArr = null;
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr2 = new byte[i];
            int i2 = 0;
            while (i > 0) {
                int read = inputStream.read(bArr2, i2, i);
                if (read == -1) {
                    break;
                }
                i2 += read;
                i -= read;
            }
            if (i != 0) {
                Log.e("CompressUtil", "size = " + i);
            }
            bArr = bArr2;
        } catch (Exception | OutOfMemoryError unused) {
        }
        try {
            inputStream.close();
        } catch (Exception unused2) {
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(android.content.Context r9, net.lingala.zip4j.io.ZipInputStream r10, java.lang.String r11, java.lang.String r12, long r13, com.mycompany.app.compress.CompressUtil.CompressListener r15) {
        /*
            boolean r1 = android.text.TextUtils.isEmpty(r11)
            r6 = 0
            if (r1 != 0) goto L6a
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto Lf
            goto L6a
        Lf:
            r1 = 0
            int r3 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            r7 = 1
            r4 = 0
            if (r3 != 0) goto L1e
            com.mycompany.app.main.MainUri$UriItem r9 = com.mycompany.app.main.MainUri.c(r9, r11, r4, r12)
            if (r9 == 0) goto L6a
            return r7
        L1e:
            com.mycompany.app.main.MainUri$UriItem r11 = com.mycompany.app.main.MainUri.c(r9, r11, r4, r12)
            if (r11 != 0) goto L25
            goto L6a
        L25:
            android.content.ContentResolver r9 = r9.getContentResolver()     // Catch: java.lang.Exception -> L2f
            android.net.Uri r11 = r11.b     // Catch: java.lang.Exception -> L2f
            java.io.OutputStream r4 = r9.openOutputStream(r11)     // Catch: java.lang.Exception -> L2f
        L2f:
            r9 = r4
            if (r15 == 0) goto L35
            r15.c(r12)
        L35:
            if (r15 == 0) goto L3f
            boolean r11 = r15.isCancelled()
            if (r11 == 0) goto L3f
        L3d:
            r6 = r7
            goto L65
        L3f:
            if (r9 != 0) goto L42
            goto L65
        L42:
            r11 = 8192(0x2000, float:1.148E-41)
            byte[] r8 = new byte[r11]     // Catch: java.lang.Exception -> L65
        L46:
            int r3 = r10.read(r8, r6, r11)     // Catch: java.lang.Exception -> L65
            r4 = -1
            if (r3 == r4) goto L3d
            if (r15 == 0) goto L56
            boolean r4 = r15.isCancelled()     // Catch: java.lang.Exception -> L65
            if (r4 == 0) goto L56
            goto L3d
        L56:
            r9.write(r8, r6, r3)     // Catch: java.lang.Exception -> L65
            long r3 = (long) r3     // Catch: java.lang.Exception -> L65
            long r3 = r3 + r1
            if (r15 == 0) goto L63
            r5 = r12
            r1 = r13
            r0 = r15
            r0.b(r1, r3, r5)     // Catch: java.lang.Exception -> L65
        L63:
            r1 = r3
            goto L46
        L65:
            if (r9 == 0) goto L6a
            r9.close()     // Catch: java.lang.Exception -> L6a
        L6a:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtil.e(android.content.Context, net.lingala.zip4j.io.ZipInputStream, java.lang.String, java.lang.String, long, com.mycompany.app.compress.CompressUtil$CompressListener):boolean");
    }
}
