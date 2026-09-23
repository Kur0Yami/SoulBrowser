package com.google.android.gms.internal.ads;

import java.util.Arrays;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzhgi {
    public static byte[] a(byte[] bArr, byte[] bArr2) {
        long b = b(bArr, 0) & 67108863;
        int i = 3;
        long b2 = (b(bArr, 3) >> 2) & 67108611;
        long b3 = (b(bArr, 6) >> 4) & 67092735;
        long b4 = (b(bArr, 9) >> 6) & 66076671;
        long b5 = (b(bArr, 12) >> 8) & 1048575;
        byte[] bArr3 = new byte[17];
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        int i2 = 0;
        while (true) {
            int length = bArr2.length;
            if (i2 < length) {
                int min = Math.min(16, length - i2);
                System.arraycopy(bArr2, i2, bArr3, 0, min);
                bArr3[min] = 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, 17, (byte) 0);
                }
                long j6 = b5 * 5;
                long j7 = b4 * 5;
                long j8 = b3 * 5;
                long b6 = j5 + (b(bArr3, 0) & 67108863);
                long b7 = j2 + ((b(bArr3, i) >> 2) & 67108863);
                long b8 = j + ((b(bArr3, 6) >> 4) & 67108863);
                long b9 = j3 + ((b(bArr3, 9) >> 6) & 67108863);
                long j9 = b2;
                long b10 = j4 + (((b(bArr3, 12) >> 8) & 67108863) | (bArr3[16] << 24));
                long j10 = b7 * b;
                long j11 = b7 * j9;
                long j12 = b8 * b;
                long j13 = b7 * b3;
                long j14 = b8 * j9;
                long j15 = b9 * b;
                long j16 = b7 * b4;
                long j17 = b8 * b3;
                long j18 = b9 * j9;
                long j19 = b10 * b;
                long j20 = (b2 * 5 * b10) + (b9 * j8) + (b8 * j7) + (b7 * j6) + (b6 * b);
                long j21 = j20 & 67108863;
                long j22 = b9 * j7;
                long j23 = j8 * b10;
                long j24 = j23 + j22 + (b8 * j6) + (b6 * j9) + j10 + (j20 >> 26);
                long j25 = j7 * b10;
                long j26 = j25 + (b9 * j6) + (b6 * b3) + j11 + j12 + (j24 >> 26);
                long j27 = (b10 * j6) + (b6 * b4) + j13 + j14 + j15 + (j26 >> 26);
                long j28 = (b6 * b5) + j16 + j17 + j18 + j19 + (j27 >> 26);
                long j29 = ((j28 >> 26) * 5) + j21;
                j2 = (j24 & 67108863) + (j29 >> 26);
                i2 += 16;
                j = j26 & 67108863;
                j3 = j27 & 67108863;
                j4 = j28 & 67108863;
                j5 = j29 & 67108863;
                b2 = j9;
                i = 3;
            } else {
                long j30 = j + (j2 >> 26);
                long j31 = j30 & 67108863;
                long j32 = j3 + (j30 >> 26);
                long j33 = j32 & 67108863;
                long j34 = j4 + (j32 >> 26);
                long j35 = j34 & 67108863;
                long j36 = ((j34 >> 26) * 5) + j5;
                long j37 = j36 >> 26;
                long j38 = j36 & 67108863;
                long j39 = j38 + 5;
                long j40 = (j2 & 67108863) + j37;
                long j41 = j40 + (j39 >> 26);
                long j42 = j31 + (j41 >> 26);
                long j43 = j33 + (j42 >> 26);
                long j44 = (j35 + (j43 >> 26)) - 67108864;
                long j45 = j44 >> 63;
                long j46 = ~j45;
                long j47 = (j40 & j45) | (j41 & 67108863 & j46);
                long j48 = (j31 & j45) | (j42 & 67108863 & j46);
                long j49 = (j33 & j45) | (j43 & 67108863 & j46);
                long j50 = (j35 & j45) | (j44 & j46);
                long b11 = b(bArr, 16) + (((j39 & 67108863 & j46) | (j38 & j45) | (j47 << 26)) & 4294967295L);
                long b12 = b(bArr, 20) + (((j47 >> 6) | (j48 << 20)) & 4294967295L);
                long b13 = b(bArr, 24);
                long b14 = b(bArr, 28) + (((j49 >> 18) | (j50 << 8)) & 4294967295L);
                byte[] bArr4 = new byte[16];
                c(bArr4, 0, b11 & 4294967295L);
                long j51 = b12 + (b11 >> 32);
                c(bArr4, 4, j51 & 4294967295L);
                long j52 = b13 + (((j49 << 14) | (j48 >> 12)) & 4294967295L) + (j51 >> 32);
                c(bArr4, 8, j52 & 4294967295L);
                c(bArr4, 12, (b14 + (j52 >> 32)) & 4294967295L);
                return bArr4;
            }
        }
    }

    public static long b(byte[] bArr, int i) {
        int i2 = bArr[i] & UByte.MAX_VALUE;
        int i3 = bArr[i + 1] & UByte.MAX_VALUE;
        int i4 = bArr[i + 2] & UByte.MAX_VALUE;
        return (((bArr[i + 3] & UByte.MAX_VALUE) << 24) | (i3 << 8) | i2 | (i4 << 16)) & 4294967295L;
    }

    public static void c(byte[] bArr, int i, long j) {
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i + i2] = (byte) (255 & j);
            j >>= 8;
        }
    }
}
