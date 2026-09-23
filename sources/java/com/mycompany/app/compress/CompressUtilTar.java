package com.mycompany.app.compress;

import android.text.TextUtils;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.commons.compress.archivers.tar.TarArchiveEntry;
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream;

/* loaded from: classes3.dex */
public class CompressUtilTar extends Compress {
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, java.util.Comparator] */
    @Override // com.mycompany.app.compress.Compress
    public final void M() {
        TarArchiveInputStream tarArchiveInputStream;
        ArrayList arrayList;
        ArrayList arrayList2;
        Compress.SortItem b;
        int i = 0;
        this.j = 0;
        if (!TextUtils.isEmpty(this.b)) {
            this.i = new ArrayList();
            this.j = 0;
            boolean z = true;
            try {
                tarArchiveInputStream = V(this.b);
            } catch (Exception unused) {
                tarArchiveInputStream = null;
            }
            if (tarArchiveInputStream != null) {
                while (true) {
                    try {
                        TarArchiveEntry e = tarArchiveInputStream.e();
                        if (e != null) {
                            if (!e.isDirectory()) {
                                String name = e.getName();
                                if (Compress.C(name, true, true) && (b = CompressUtil.b(name)) != null) {
                                    ArrayList arrayList3 = this.i;
                                    if (arrayList3 == null) {
                                        break;
                                    } else {
                                        arrayList3.add(b);
                                    }
                                }
                            }
                        } else {
                            z = false;
                            break;
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (tarArchiveInputStream != null) {
                    try {
                        tarArchiveInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                if (z) {
                    this.i = null;
                    return;
                }
                ArrayList arrayList4 = this.i;
                if (arrayList4 != null && !arrayList4.isEmpty()) {
                    int size = this.i.size();
                    this.j = size;
                    if (size > 0 && (arrayList = this.i) != null && this.h != null) {
                        try {
                            Collections.sort(arrayList, new Object());
                        } catch (Exception unused4) {
                        }
                        ArrayList arrayList5 = this.i;
                        int size2 = arrayList5.size();
                        while (i < size2) {
                            Object obj = arrayList5.get(i);
                            i++;
                            Compress.SortItem sortItem = (Compress.SortItem) obj;
                            if (this.i != null && (arrayList2 = this.h) != null) {
                                arrayList2.add(sortItem.f12869a);
                            } else {
                                return;
                            }
                        }
                        this.i = null;
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean N() {
        /*
            r5 = this;
            r0 = 0
            r5.j = r0
            java.lang.String r1 = r5.b
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto Lc
            goto L2c
        Lc:
            r1 = 1
            r2 = 0
            java.lang.String r3 = r5.b     // Catch: java.lang.Exception -> L23
            org.apache.commons.compress.archivers.tar.TarArchiveInputStream r2 = r5.V(r3)     // Catch: java.lang.Exception -> L23
            if (r2 != 0) goto L17
            goto L2c
        L17:
            r3 = r0
        L18:
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r4 = r2.e()     // Catch: java.lang.Exception -> L24
            if (r4 == 0) goto L21
            int r3 = r3 + 1
            goto L18
        L21:
            r4 = r0
            goto L25
        L23:
            r3 = r0
        L24:
            r4 = r1
        L25:
            if (r2 == 0) goto L2a
            r2.close()     // Catch: java.lang.Exception -> L2a
        L2a:
            if (r4 == 0) goto L2d
        L2c:
            return r0
        L2d:
            r5.j = r3
            if (r3 <= 0) goto L32
            r0 = r1
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilTar.N():boolean");
    }

    public final TarArchiveInputStream V(String str) {
        boolean z;
        TarArchiveInputStream tarArchiveInputStream = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (TextUtils.isEmpty(this.f)) {
                this.f = MainConst.J;
            }
            z = false;
            tarArchiveInputStream = new TarArchiveInputStream(MainUtil.Y1(this.f12867a, str), this.f);
        } catch (Exception unused) {
            z = !"UTF-8".equals(this.f);
        }
        if (z) {
            try {
                this.f = "UTF-8";
                return new TarArchiveInputStream(MainUtil.Y1(this.f12867a, str), this.f);
            } catch (Exception unused2) {
                return tarArchiveInputStream;
            }
        }
        return tarArchiveInputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        if (r0 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
    
        r2 = r0.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        if (r2 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
    
        if (r5.equals(r2.getName()) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0045, code lost:
    
        return r0;
     */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream o(java.lang.String r5) {
        /*
            r4 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            r1 = 0
            if (r0 == 0) goto L8
            goto L4c
        L8:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = r4.b
            java.lang.String r3 = "/"
            java.lang.String r0 = android.support.v4.media.a.p(r0, r2, r3)
            boolean r2 = r5.startsWith(r0)
            if (r2 == 0) goto L24
            int r0 = r0.length()
            java.lang.String r5 = r5.substring(r0)
            goto L25
        L24:
            r5 = r1
        L25:
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto L2c
            goto L4c
        L2c:
            java.lang.String r0 = r4.b     // Catch: java.lang.Exception -> L46
            org.apache.commons.compress.archivers.tar.TarArchiveInputStream r0 = r4.V(r0)     // Catch: java.lang.Exception -> L46
            if (r0 != 0) goto L35
            goto L4c
        L35:
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r2 = r0.e()     // Catch: java.lang.Exception -> L47
            if (r2 == 0) goto L47
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Exception -> L47
            boolean r2 = r5.equals(r2)     // Catch: java.lang.Exception -> L47
            if (r2 == 0) goto L35
            return r0
        L46:
            r0 = r1
        L47:
            if (r0 == 0) goto L4c
            r0.close()     // Catch: java.lang.Exception -> L4c
        L4c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilTar.o(java.lang.String):java.io.InputStream");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0040, code lost:
    
        if (r0 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0043, code lost:
    
        r3 = r0.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
    
        if (r3 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0051, code lost:
    
        if (r6.equals(r3.getName()) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0053, code lost:
    
        r6 = com.mycompany.app.compress.CompressUtil.d(r0, (int) r3.getSize());
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0067  */
    @Override // com.mycompany.app.compress.Compress
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap p(int r6) {
        /*
            r5 = this;
            java.lang.String r0 = r5.b
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 == 0) goto Lb
            goto L8d
        Lb:
            java.util.ArrayList r0 = r5.h
            if (r0 == 0) goto L8d
            if (r6 < 0) goto L8d
            int r0 = r0.size()
            r2 = 1
            int r0 = r0 - r2
            if (r6 <= r0) goto L1b
            goto L8d
        L1b:
            java.lang.String r0 = r5.n(r6)
            android.graphics.Bitmap r0 = com.mycompany.app.main.MainUtil.U2(r0)
            boolean r3 = com.mycompany.app.main.MainUtil.f6(r0)
            if (r3 == 0) goto L2a
            return r0
        L2a:
            java.util.ArrayList r0 = r5.h
            java.lang.Object r6 = r0.get(r6)
            java.lang.String r6 = (java.lang.String) r6
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L3a
        L38:
            r6 = r1
            goto L64
        L3a:
            java.lang.String r0 = r5.b     // Catch: java.lang.Exception -> L5d
            org.apache.commons.compress.archivers.tar.TarArchiveInputStream r0 = r5.V(r0)     // Catch: java.lang.Exception -> L5d
            if (r0 != 0) goto L43
            goto L38
        L43:
            org.apache.commons.compress.archivers.tar.TarArchiveEntry r3 = r0.e()     // Catch: java.lang.Exception -> L5e
            if (r3 == 0) goto L5e
            java.lang.String r4 = r3.getName()     // Catch: java.lang.Exception -> L5e
            boolean r4 = r6.equals(r4)     // Catch: java.lang.Exception -> L5e
            if (r4 == 0) goto L43
            long r3 = r3.getSize()     // Catch: java.lang.Exception -> L5e
            int r6 = (int) r3     // Catch: java.lang.Exception -> L5e
            byte[] r6 = com.mycompany.app.compress.CompressUtil.d(r0, r6)     // Catch: java.lang.Exception -> L5e
            goto L64
        L5d:
            r0 = r1
        L5e:
            if (r0 == 0) goto L38
            r0.close()     // Catch: java.lang.Exception -> L38
            goto L38
        L64:
            if (r6 != 0) goto L67
            goto L8d
        L67:
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r0.inJustDecodeBounds = r2
            int r1 = r6.length
            com.mycompany.app.main.BitmapUtil.b(r6, r1, r0)
            int r1 = r0.outWidth
            int r2 = com.mycompany.app.main.MainApp.g1
            if (r1 > r2) goto L7c
            int r3 = r0.outHeight
            if (r3 <= r2) goto L84
        L7c:
            int r3 = r0.outHeight
            int r1 = com.mycompany.app.main.MainUtil.e0(r1, r3, r2, r2)
            r0.inSampleSize = r1
        L84:
            r1 = 0
            r0.inJustDecodeBounds = r1
            int r1 = r6.length
            android.graphics.Bitmap r6 = com.mycompany.app.main.BitmapUtil.b(r6, r1, r0)
            return r6
        L8d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.compress.CompressUtilTar.p(int):android.graphics.Bitmap");
    }

    @Override // com.mycompany.app.compress.Compress
    public final int s() {
        return 2;
    }
}
