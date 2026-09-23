package com.mycompany.app.compress;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedList;
import net.lingala.zip4j.model.FileHeader;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;

/* loaded from: classes3.dex */
public class CompressUtilZip extends Compress {
    public ZipFile l;
    public CompressUtilZip2 m;

    public static boolean V(Context context, String str) {
        InputStream inputStream;
        boolean z = false;
        if (context == null) {
            return false;
        }
        try {
            inputStream = MainUtil.Y1(context, str);
            try {
                byte[] bArr = new byte[2];
                if (inputStream.read(bArr, 0, 2) == 2 && bArr[0] == 80) {
                    if (bArr[1] == 75) {
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            inputStream = null;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused3) {
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, java.util.Comparator] */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M() {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilZip.M():void");
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.compress.CompressUtilZip2, java.lang.Object] */
    @Override // com.mycompany.app.compress.Compress
    public final boolean N() {
        int size;
        int size2;
        boolean z;
        int size3;
        int size4;
        this.j = 0;
        if (!TextUtils.isEmpty(this.b)) {
            if (TextUtils.isEmpty(this.f)) {
                this.f = MainConst.J;
            }
            ArrayList arrayList = null;
            this.m = null;
            if (TextUtils.isEmpty(this.g) && MainUtil.g1(this.f12867a, this.b) < 2146435072) {
                if (TextUtils.isEmpty(this.d)) {
                    this.d = CompressUtil.c(this.f12867a, this.b);
                }
                try {
                    ZipFile zipFile = new ZipFile(this.d, this.f);
                    this.l = zipFile;
                    LinkedList linkedList = zipFile.f22305c;
                    if (linkedList == null) {
                        size4 = 0;
                    } else {
                        size4 = linkedList.size();
                    }
                    this.j = size4;
                    z = false;
                } catch (Exception unused) {
                    z = !"UTF-8".equals(this.f);
                }
                if (z) {
                    try {
                        this.f = "UTF-8";
                        ZipFile zipFile2 = new ZipFile(this.d, this.f);
                        this.l = zipFile2;
                        LinkedList linkedList2 = zipFile2.f22305c;
                        if (linkedList2 == null) {
                            size3 = 0;
                        } else {
                            size3 = linkedList2.size();
                        }
                        this.j = size3;
                    } catch (Exception unused2) {
                    }
                }
                if (this.j <= 0) {
                    return false;
                }
                return true;
            }
            this.m = new Object();
            if (TextUtils.isEmpty(this.d)) {
                this.d = CompressUtil.c(this.f12867a, this.b);
            }
            if (this.m.b(this.d, this.f, this.g)) {
                net.lingala.zip4j.core.ZipFile zipFile3 = this.m.f12876a;
                if (zipFile3 != null) {
                    try {
                        arrayList = zipFile3.d();
                    } catch (Exception unused3) {
                    }
                }
                if (arrayList == null) {
                    size2 = 0;
                } else {
                    size2 = arrayList.size();
                }
                this.j = size2;
            } else if (!"UTF-8".equals(this.f)) {
                this.f = "UTF-8";
                if (this.m.b(this.d, "UTF-8", this.g)) {
                    net.lingala.zip4j.core.ZipFile zipFile4 = this.m.f12876a;
                    if (zipFile4 != null) {
                        try {
                            arrayList = zipFile4.d();
                        } catch (Exception unused4) {
                        }
                    }
                    if (arrayList == null) {
                        size = 0;
                    } else {
                        size = arrayList.size();
                    }
                    this.j = size;
                }
            }
            if (this.j > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mycompany.app.compress.Compress
    public final void a() {
        super.a();
        CompressUtilZip2 compressUtilZip2 = this.m;
        if (compressUtilZip2 != null) {
            compressUtilZip2.f12876a = null;
            this.m = null;
        }
        ZipFile zipFile = this.l;
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (Exception unused) {
            }
            this.l = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c8  */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(java.lang.String r17, com.mycompany.app.compress.CompressUtil.CompressListener r18) {
        /*
            r16 = this;
            r0 = r16
            java.lang.String r1 = r0.b
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r8 = 0
            if (r1 == 0) goto Ld
            goto Lcf
        Ld:
            com.mycompany.app.compress.CompressUtilZip2 r9 = r0.m
            if (r9 == 0) goto Lcf
            android.content.Context r1 = r0.f12867a
            net.lingala.zip4j.core.ZipFile r2 = r9.f12876a
            if (r2 != 0) goto L19
            goto Lcf
        L19:
            r10 = 0
            java.util.ArrayList r2 = r2.d()     // Catch: java.lang.Exception -> L20
            r11 = r2
            goto L21
        L20:
            r11 = r10
        L21:
            if (r11 == 0) goto Lcf
            boolean r2 = r11.isEmpty()
            if (r2 == 0) goto L2b
            goto Lcf
        L2b:
            int r2 = r11.size()
            int r2 = com.mycompany.app.main.MainUtil.y0(r2)
            java.lang.String r12 = com.mycompany.app.main.MainUtil.x0(r2)
            int r13 = r11.size()
            r2 = r8
            r3 = r2
        L3d:
            r4 = 1
            if (r3 >= r13) goto Lce
            java.lang.Object r5 = r11.get(r3)
            int r14 = r3 + 1
            net.lingala.zip4j.model.FileHeader r5 = (net.lingala.zip4j.model.FileHeader) r5
            if (r18 == 0) goto L52
            boolean r3 = r18.isCancelled()
            if (r3 == 0) goto L52
            goto Lcf
        L52:
            if (r5 != 0) goto L56
        L54:
            r3 = r14
            goto L3d
        L56:
            if (r2 != 0) goto L5b
            int r2 = r2 + 1
            goto L54
        L5b:
            boolean r3 = r5.q     // Catch: java.lang.Exception -> L7c
            if (r3 != 0) goto La4
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7c
            r3.<init>()     // Catch: java.lang.Exception -> L7c
            boolean r6 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Exception -> L7c
            if (r6 != 0) goto L80
            java.util.Locale r6 = java.util.Locale.US     // Catch: java.lang.Exception -> L7c
            java.lang.Integer r7 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L7c
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L7c
            r4[r8] = r7     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = java.lang.String.format(r6, r12, r4)     // Catch: java.lang.Exception -> L7c
            r3.append(r4)     // Catch: java.lang.Exception -> L7c
            goto L83
        L7c:
            r7 = r18
            r4 = r10
            goto Laa
        L80:
            r3.append(r2)     // Catch: java.lang.Exception -> L7c
        L83:
            java.lang.String r4 = ".jpg"
            r3.append(r4)     // Catch: java.lang.Exception -> L7c
            java.lang.String r4 = r3.toString()     // Catch: java.lang.Exception -> L7c
            int r15 = r2 + 1
            net.lingala.zip4j.core.ZipFile r2 = r9.f12876a     // Catch: java.lang.Exception -> La1
            net.lingala.zip4j.io.ZipInputStream r2 = r2.e(r5)     // Catch: java.lang.Exception -> La1
            long r5 = r5.j     // Catch: java.lang.Exception -> La1
            r3 = r17
            r7 = r18
            boolean r2 = com.mycompany.app.compress.CompressUtil.e(r1, r2, r3, r4, r5, r7)     // Catch: java.lang.Exception -> L9f
            goto Lac
        L9f:
            r2 = r15
            goto Laa
        La1:
            r7 = r18
            goto L9f
        La4:
            r7 = r18
            r15 = r2
            r2 = r8
            r4 = r10
            goto Lac
        Laa:
            r15 = r2
            r2 = r8
        Lac:
            if (r7 == 0) goto Lc8
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r5 = r17
            r3.append(r5)
            java.lang.String r6 = "/"
            r3.append(r6)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r7.a(r3, r2)
            goto Lca
        Lc8:
            r5 = r17
        Lca:
            r3 = r14
            r2 = r15
            goto L3d
        Lce:
            r8 = r4
        Lcf:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilZip.c(java.lang.String, com.mycompany.app.compress.CompressUtil$CompressListener):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.mycompany.app.compress.CompressUtilZip2, java.lang.Object] */
    @Override // com.mycompany.app.compress.Compress
    public final Bitmap d() {
        ArrayList d;
        if (!TextUtils.isEmpty(this.b)) {
            ArrayList arrayList = this.h;
            if (arrayList == null || arrayList.isEmpty()) {
                this.m = new Object();
                if (TextUtils.isEmpty(this.d)) {
                    this.d = CompressUtil.c(this.f12867a, this.b);
                }
                if (this.m.b(this.d, null, "debug_logger_tag")) {
                    net.lingala.zip4j.core.ZipFile zipFile = this.m.f12876a;
                    if (zipFile != null) {
                        try {
                            d = zipFile.d();
                        } catch (Exception unused) {
                        }
                        if (d != null && !d.isEmpty()) {
                            ArrayList arrayList2 = new ArrayList();
                            this.h = arrayList2;
                            arrayList2.add(((FileHeader) d.get(0)).p);
                        }
                    }
                    d = null;
                    if (d != null) {
                        ArrayList arrayList22 = new ArrayList();
                        this.h = arrayList22;
                        arrayList22.add(((FileHeader) d.get(0)).p);
                    }
                }
            }
            ArrayList arrayList3 = this.h;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                return p(0);
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.mycompany.app.compress.CompressUtilZip2, java.lang.Object] */
    @Override // com.mycompany.app.compress.Compress
    public final InputStream e() {
        ArrayList d;
        if (!TextUtils.isEmpty(this.b)) {
            ArrayList arrayList = this.h;
            if (arrayList == null || arrayList.isEmpty()) {
                this.m = new Object();
                if (TextUtils.isEmpty(this.d)) {
                    this.d = CompressUtil.c(this.f12867a, this.b);
                }
                if (this.m.b(this.d, null, "debug_logger_tag")) {
                    net.lingala.zip4j.core.ZipFile zipFile = this.m.f12876a;
                    if (zipFile != null) {
                        try {
                            d = zipFile.d();
                        } catch (Exception unused) {
                        }
                        if (d != null && !d.isEmpty()) {
                            ArrayList arrayList2 = new ArrayList();
                            this.h = arrayList2;
                            arrayList2.add(((FileHeader) d.get(0)).p);
                        }
                    }
                    d = null;
                    if (d != null) {
                        ArrayList arrayList22 = new ArrayList();
                        this.h = arrayList22;
                        arrayList22.add(((FileHeader) d.get(0)).p);
                    }
                }
            }
            ArrayList arrayList3 = this.h;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                return o((String) this.h.get(0));
            }
        }
        return null;
    }

    @Override // com.mycompany.app.compress.Compress
    public final InputStream o(String str) {
        String str2;
        ZipArchiveEntry zipArchiveEntry;
        if (!TextUtils.isEmpty(str)) {
            String p = a.p(new StringBuilder(), this.b, "/");
            if (str.startsWith(p)) {
                str2 = str.substring(p.length());
            } else {
                str2 = null;
            }
            if (!TextUtils.isEmpty(str2)) {
                CompressUtilZip2 compressUtilZip2 = this.m;
                try {
                    if (compressUtilZip2 != null) {
                        net.lingala.zip4j.core.ZipFile zipFile = compressUtilZip2.f12876a;
                        if (zipFile != null) {
                            return zipFile.e(zipFile.c(str2));
                        }
                    } else {
                        ZipFile zipFile2 = this.l;
                        if (zipFile2 != null) {
                            LinkedList linkedList = (LinkedList) zipFile2.f.get(str2);
                            if (linkedList != null) {
                                zipArchiveEntry = (ZipArchiveEntry) linkedList.getFirst();
                            } else {
                                zipArchiveEntry = null;
                            }
                            if (zipArchiveEntry != null) {
                                return this.l.a(zipArchiveEntry);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x009c  */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap p(int r9) {
        /*
            r8 = this;
            java.lang.String r0 = r8.b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto Lb
            goto Lc1
        Lb:
            java.util.ArrayList r0 = r8.h
            if (r0 == 0) goto Lc1
            if (r9 < 0) goto Lc1
            int r0 = r0.size()
            r2 = 1
            int r0 = r0 - r2
            if (r9 <= r0) goto L1b
            goto Lc1
        L1b:
            java.lang.String r0 = r8.n(r9)
            android.graphics.Bitmap r0 = com.mycompany.app.main.MainUtil.U2(r0)
            boolean r3 = com.mycompany.app.main.MainUtil.f6(r0)
            if (r3 == 0) goto L2a
            return r0
        L2a:
            java.util.ArrayList r0 = r8.h
            java.lang.Object r9 = r0.get(r9)
            java.lang.String r9 = (java.lang.String) r9
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            r3 = 0
            if (r0 == 0) goto L3b
        L39:
            r0 = r1
            goto L99
        L3b:
            com.mycompany.app.compress.CompressUtilZip2 r0 = r8.m
            if (r0 == 0) goto L72
            net.lingala.zip4j.core.ZipFile r0 = r0.f12876a
            if (r0 != 0) goto L44
            goto L39
        L44:
            net.lingala.zip4j.model.FileHeader r9 = r0.c(r9)     // Catch: java.lang.Exception -> L39
            net.lingala.zip4j.io.ZipInputStream r9 = r0.e(r9)     // Catch: java.lang.Exception -> L39
            java.util.ArrayList r0 = com.mycompany.app.compress.CompressUtil.f12874a     // Catch: java.lang.Exception -> L39
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L6d
            r0.<init>()     // Catch: java.lang.Throwable -> L6d
            r4 = 8192(0x2000, float:1.148E-41)
            byte[] r5 = new byte[r4]     // Catch: java.lang.Throwable -> L6d
        L57:
            int r6 = r9.read(r5, r3, r4)     // Catch: java.lang.Throwable -> L6d
            r7 = -1
            if (r6 == r7) goto L62
            r0.write(r5, r3, r6)     // Catch: java.lang.Throwable -> L6d
            goto L57
        L62:
            r0.flush()     // Catch: java.lang.Throwable -> L6d
            r0.close()     // Catch: java.lang.Throwable -> L6d
            byte[] r0 = r0.toByteArray()     // Catch: java.lang.Throwable -> L6d
            goto L6e
        L6d:
            r0 = r1
        L6e:
            r9.close()     // Catch: java.lang.Exception -> L99
            goto L99
        L72:
            org.apache.commons.compress.archivers.zip.ZipFile r0 = r8.l
            if (r0 != 0) goto L77
            goto L39
        L77:
            java.util.HashMap r0 = r0.f
            java.lang.Object r9 = r0.get(r9)
            java.util.LinkedList r9 = (java.util.LinkedList) r9
            if (r9 == 0) goto L88
            java.lang.Object r9 = r9.getFirst()
            org.apache.commons.compress.archivers.zip.ZipArchiveEntry r9 = (org.apache.commons.compress.archivers.zip.ZipArchiveEntry) r9
            goto L89
        L88:
            r9 = r1
        L89:
            if (r9 != 0) goto L8c
            goto L39
        L8c:
            org.apache.commons.compress.archivers.zip.ZipFile r0 = r8.l     // Catch: java.lang.Exception -> L39
            java.io.InputStream r0 = r0.a(r9)     // Catch: java.lang.Exception -> L39
            long r4 = r9.f     // Catch: java.lang.Exception -> L39
            int r9 = (int) r4     // Catch: java.lang.Exception -> L39
            byte[] r0 = com.mycompany.app.compress.CompressUtil.d(r0, r9)     // Catch: java.lang.Exception -> L39
        L99:
            if (r0 != 0) goto L9c
            goto Lc1
        L9c:
            android.graphics.BitmapFactory$Options r9 = new android.graphics.BitmapFactory$Options
            r9.<init>()
            r9.inJustDecodeBounds = r2
            int r1 = r0.length
            com.mycompany.app.main.BitmapUtil.b(r0, r1, r9)
            int r1 = r9.outWidth
            int r2 = com.mycompany.app.main.MainApp.g1
            if (r1 > r2) goto Lb1
            int r4 = r9.outHeight
            if (r4 <= r2) goto Lb9
        Lb1:
            int r4 = r9.outHeight
            int r1 = com.mycompany.app.main.MainUtil.e0(r1, r4, r2, r2)
            r9.inSampleSize = r1
        Lb9:
            r9.inJustDecodeBounds = r3
            int r1 = r0.length
            android.graphics.Bitmap r9 = com.mycompany.app.main.BitmapUtil.b(r0, r1, r9)
            return r9
        Lc1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilZip.p(int):android.graphics.Bitmap");
    }

    @Override // com.mycompany.app.compress.Compress
    public int s() {
        return 2;
    }
}
