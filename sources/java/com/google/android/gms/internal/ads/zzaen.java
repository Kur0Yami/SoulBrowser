package com.google.android.gms.internal.ads;

import java.util.Arrays;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaen {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f3960a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    public static final int[] b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f3961c = {64, 112, Uuid.SIZE_BITS, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, ConstantsKt.DEFAULT_BLOCK_SIZE, 6144, 7680};
    public static final int[] d = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};
    public static final int[] e = {5, 8, 10, 12};
    public static final int[] f = {6, 9, 12, 15};
    public static final int[] g = {2, 4, 6, 8};
    public static final int[] h = {9, 11, 13, 16};
    public static final int[] i = {5, 8, 10, 12};

    public static int a(int i2) {
        if (i2 == 2147385345 || i2 == -25230976 || i2 == 536864768 || i2 == -14745368) {
            return 1;
        }
        if (i2 == 1683496997 || i2 == 622876772) {
            return 2;
        }
        if (i2 == 1078008818 || i2 == -233094848) {
            return 3;
        }
        return (i2 == 1908687592 || i2 == -398277519) ? 4 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4e
            r2 = -1
            if (r1 == r2) goto L3e
            r2 = 31
            if (r1 == r2) goto L26
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r7 = r7[r3]
        L1f:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r1 = r1 | r2
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L5c
        L26:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r2 = 8
            r7 = r7[r2]
        L35:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r0 = r0 | r1
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = r5
            goto L5c
        L3e:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r2 = 9
            r7 = r7[r2]
            goto L35
        L4e:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r7 = r7[r4]
            goto L1f
        L5c:
            if (r0 == 0) goto L62
            int r7 = r7 * 16
            int r7 = r7 / 14
        L62:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaen.b(byte[]):int");
    }

    public static int c(zzeq zzeqVar, int[] iArr) {
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && zzeqVar.g(); i3++) {
            i2++;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 += 1 << iArr[i5];
        }
        return zzeqVar.h(iArr[i2]) + i4;
    }

    public static zzeq d(byte[] bArr) {
        byte b2 = bArr[0];
        if (b2 != Byte.MAX_VALUE && b2 != 100 && b2 != 64 && b2 != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b3 = copyOf[0];
            if (b3 == -2 || b3 == -1 || b3 == 37 || b3 == -14 || b3 == -24) {
                for (int i2 = 0; i2 < copyOf.length - 1; i2 += 2) {
                    byte b4 = copyOf[i2];
                    int i3 = i2 + 1;
                    copyOf[i2] = copyOf[i3];
                    copyOf[i3] = b4;
                }
            }
            int length = copyOf.length;
            zzeq zzeqVar = new zzeq(copyOf, length);
            if (copyOf[0] == 31) {
                zzeq zzeqVar2 = new zzeq(copyOf, length);
                while (zzeqVar2.b() >= 16) {
                    zzeqVar2.f(2);
                    int h2 = zzeqVar2.h(14);
                    int min = Math.min(8 - zzeqVar.f6807c, 14);
                    int i4 = zzeqVar.f6807c;
                    int i5 = (8 - i4) - min;
                    byte[] bArr2 = zzeqVar.f6806a;
                    int i6 = zzeqVar.b;
                    byte b5 = (byte) (((65280 >> i4) | ((1 << i5) - 1)) & bArr2[i6]);
                    bArr2[i6] = b5;
                    int i7 = 14 - min;
                    int i8 = h2 & 16383;
                    bArr2[i6] = (byte) (b5 | ((i8 >>> i7) << i5));
                    int i9 = i6 + 1;
                    while (i7 > 8) {
                        i7 -= 8;
                        zzeqVar.f6806a[i9] = (byte) (i8 >>> i7);
                        i9++;
                    }
                    byte[] bArr3 = zzeqVar.f6806a;
                    byte b6 = (byte) (bArr3[i9] & ((1 << r7) - 1));
                    bArr3[i9] = b6;
                    bArr3[i9] = (byte) (((i8 & ((1 << i7) - 1)) << (8 - i7)) | b6);
                    zzeqVar.f(14);
                    zzeqVar.m();
                }
            }
            int length2 = copyOf.length;
            zzeqVar.f6806a = copyOf;
            zzeqVar.b = 0;
            zzeqVar.f6807c = 0;
            zzeqVar.d = length2;
            return zzeqVar;
        }
        return new zzeq(bArr, bArr.length);
    }
}
