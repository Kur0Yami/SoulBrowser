package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzgm {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8111a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c, reason: collision with root package name */
    public static final Object f8112c = new Object();
    public static int[] d = new int[10];

    public static int a(byte[] bArr, int i) {
        int i2;
        synchronized (f8112c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 < i - 2) {
                            int i5 = i3 + 1;
                            if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                                break;
                            }
                            i3 = i5;
                        } else {
                            i3 = i;
                            break;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = d;
                    int length = iArr.length;
                    if (length <= i4) {
                        d = Arrays.copyOf(iArr, length + length);
                    }
                    d[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = d[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i10 + 2;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    public static int b(zzv zzvVar) {
        String l = l(zzvVar);
        if (Objects.equals(l, "video/avc")) {
            return 1;
        }
        if (Objects.equals(l, "video/hevc")) {
            return 2;
        }
        return 0;
    }

    public static boolean c(byte[] bArr, int i, zzv zzvVar) {
        int i2;
        String str = zzvVar.m;
        if (Objects.equals(str, "video/avc")) {
            byte b2 = bArr[4];
            if (((b2 & 96) >> 5) == 0 && ((i2 = b2 & 31) == 1 || i2 == 9 || i2 == 14)) {
                return false;
            }
        } else if (Objects.equals(str, "video/hevc")) {
            zzga i3 = i(new zzgn(bArr, 4, i + 4));
            int i4 = i3.f7767a;
            if (i4 != 35) {
                if (i4 <= 14 && i4 % 2 == 0 && i3.f7768c == zzvVar.D - 1) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x020b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzgl d(byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.d(byte[], int, int):com.google.android.gms.internal.ads.zzgl");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013b  */
    /* JADX WARN: Type inference failed for: r10v7, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /* JADX WARN: Type inference failed for: r9v26, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzgj e(byte[] r38, int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2081
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.e(byte[], int, int):com.google.android.gms.internal.ads.zzgj");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzgg f(byte[] r32, int r33, int r34, com.google.android.gms.internal.ads.zzgj r35) {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.f(byte[], int, int, com.google.android.gms.internal.ads.zzgj):com.google.android.gms.internal.ads.zzgg");
    }

    public static int g(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3 = i2 - i;
        boolean z4 = false;
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            h(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            h(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            h(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b2 = bArr[i5];
            if ((b2 & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b2 == 1) {
                    h(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        if (i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !zArr[2] || bArr[i2 - 2] != 0 || bArr[i4] != 1) : !(bArr[i2 - 3] != 0 || bArr[i2 - 2] != 0 || bArr[i4] != 1)) {
            z2 = true;
        } else {
            z2 = false;
        }
        zArr[0] = z2;
        if (i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : !(bArr[i2 - 2] != 0 || bArr[i4] != 0)) {
            z3 = true;
        } else {
            z3 = false;
        }
        zArr[1] = z3;
        if (bArr[i4] == 0) {
            z4 = true;
        }
        zArr[2] = z4;
        return i2;
    }

    public static void h(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static zzga i(zzgn zzgnVar) {
        zzgnVar.a();
        return new zzga(zzgnVar.e(6), zzgnVar.e(6), zzgnVar.e(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzgb j(com.google.android.gms.internal.ads.zzgn r18, boolean r19, int r20, com.google.android.gms.internal.ads.zzgb r21) {
        /*
            r0 = r18
            r1 = r20
            r2 = r21
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 8
            r6 = 0
            if (r19 == 0) goto L41
            r2 = 2
            int r2 = r0.e(r2)
            boolean r7 = r0.d()
            r8 = 5
            int r8 = r0.e(r8)
            r9 = r6
            r10 = r9
        L1e:
            r11 = 32
            if (r9 >= r11) goto L2e
            boolean r11 = r0.d()
            if (r11 == 0) goto L2b
            r11 = 1
            int r11 = r11 << r9
            r10 = r10 | r11
        L2b:
            int r9 = r9 + 1
            goto L1e
        L2e:
            r9 = r6
        L2f:
            if (r9 >= r3) goto L3a
            int r11 = r0.e(r5)
            r4[r9] = r11
            int r9 = r9 + 1
            goto L2f
        L3a:
            r12 = r2
        L3b:
            r16 = r4
            r13 = r7
            r14 = r8
            r15 = r10
            goto L55
        L41:
            if (r2 == 0) goto L4f
            int r3 = r2.f7788a
            boolean r7 = r2.b
            int r8 = r2.f7789c
            int r10 = r2.d
            int[] r4 = r2.e
            r12 = r3
            goto L3b
        L4f:
            r16 = r4
            r12 = r6
            r13 = r12
            r14 = r13
            r15 = r14
        L55:
            int r17 = r0.e(r5)
            r2 = r6
        L5a:
            if (r6 >= r1) goto L6f
            boolean r3 = r0.d()
            if (r3 == 0) goto L64
            int r2 = r2 + 88
        L64:
            boolean r3 = r0.d()
            if (r3 == 0) goto L6c
            int r2 = r2 + 8
        L6c:
            int r6 = r6 + 1
            goto L5a
        L6f:
            r0.b(r2)
            if (r1 <= 0) goto L79
            int r5 = r5 - r1
            int r5 = r5 + r5
            r0.b(r5)
        L79:
            com.google.android.gms.internal.ads.zzgb r11 = new com.google.android.gms.internal.ads.zzgb
            r11.<init>(r12, r13, r14, r15, r16, r17)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgm.j(com.google.android.gms.internal.ads.zzgn, boolean, int, com.google.android.gms.internal.ads.zzgb):com.google.android.gms.internal.ads.zzgb");
    }

    public static void k(zzgn zzgnVar) {
        int g = zzgnVar.g() + 1;
        zzgnVar.b(8);
        for (int i = 0; i < g; i++) {
            zzgnVar.g();
            zzgnVar.g();
            zzgnVar.a();
        }
        zzgnVar.b(20);
    }

    public static String l(zzv zzvVar) {
        String str;
        String str2 = zzvVar.m;
        if (Objects.equals(str2, "video/dolby-vision") && (str = zzvVar.j) != null) {
            if (!str.startsWith("dva1") && !str.startsWith("dvav")) {
                if (str.startsWith("dvh1") || str.startsWith("dvhe")) {
                    return "video/hevc";
                }
            } else {
                return "video/avc";
            }
        }
        return str2;
    }
}
