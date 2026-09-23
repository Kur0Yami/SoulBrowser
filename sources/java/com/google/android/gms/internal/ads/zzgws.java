package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzgws {
    public static long a(long j, long j2, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j3 = j / j2;
        long j4 = j - (j2 * j3);
        if (j4 != 0) {
            int i = ((int) ((j ^ j2) >> 63)) | 1;
            switch (zzgwr.f8279a[roundingMode.ordinal()]) {
                case 1:
                    zzgwt.b(false);
                    return j3;
                case 2:
                    return j3;
                case 3:
                    if (i >= 0) {
                        return j3;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (i <= 0) {
                        return j3;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    long abs = Math.abs(j4);
                    long abs2 = abs - (Math.abs(j2) - abs);
                    if (abs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j3) == 0)) {
                            return j3;
                        }
                    } else if (abs2 <= 0) {
                        return j3;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return j3 + i;
        }
        return j3;
    }

    public static long b(long j, long j2) {
        zzgwt.a(j, "a");
        zzgwt.a(j2, "b");
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j3 = j >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        long j4 = j2 >> numberOfTrailingZeros2;
        while (j3 != j4) {
            long j5 = j3 - j4;
            long j6 = (j5 >> 63) & j5;
            long j7 = (j5 - j6) - j6;
            j3 = j7 >> Long.numberOfTrailingZeros(j7);
            j4 += j6;
        }
        return j3 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long c(long j, long j2) {
        boolean z;
        boolean z2;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        long j3 = j ^ j2;
        boolean z3 = false;
        if (numberOfLeadingZeros < 64) {
            z = true;
        } else {
            z = false;
        }
        if (j < 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (j2 == Long.MIN_VALUE) {
            z3 = true;
        }
        boolean z4 = z | (z3 & z2);
        long j4 = (j3 >>> 63) + LongCompanionObject.MAX_VALUE;
        if (!z4) {
            long j5 = j * j2;
            if (j == 0 || j5 / j == j2) {
                return j5;
            }
        }
        return j4;
    }
}
