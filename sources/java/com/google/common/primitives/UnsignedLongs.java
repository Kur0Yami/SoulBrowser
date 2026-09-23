package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import java.math.BigInteger;
import java.util.Comparator;
import kotlin.jvm.internal.LongCompanionObject;

@GwtCompatible
/* loaded from: classes3.dex */
public final class UnsignedLongs {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class LexicographicalComparator implements Comparator<long[]> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ LexicographicalComparator[] f12528c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        LexicographicalComparator EF5;

        public static LexicographicalComparator valueOf(String str) {
            return (LexicographicalComparator) Enum.valueOf(LexicographicalComparator.class, str);
        }

        public static LexicographicalComparator[] values() {
            return (LexicographicalComparator[]) f12528c.clone();
        }

        @Override // java.util.Comparator
        public final int compare(long[] jArr, long[] jArr2) {
            long[] jArr3 = jArr;
            long[] jArr4 = jArr2;
            int min = Math.min(jArr3.length, jArr4.length);
            for (int i = 0; i < min; i++) {
                long j = jArr3[i];
                long j2 = jArr4[i];
                if (j != j2) {
                    return UnsignedLongs.a(j, j2);
                }
            }
            return jArr3.length - jArr4.length;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ParseOverflowDetection {

        /* renamed from: a, reason: collision with root package name */
        public static final long[] f12529a = new long[37];
        public static final int[] b = new int[37];

        /* renamed from: c, reason: collision with root package name */
        public static final int[] f12530c = new int[37];

        static {
            int i;
            long j;
            BigInteger shiftLeft = BigInteger.ONE.shiftLeft(64);
            for (int i2 = 2; i2 <= 36; i2++) {
                long[] jArr = f12529a;
                long j2 = i2;
                long j3 = -1;
                if (j2 < 0) {
                    if (UnsignedLongs.a(-1L, j2) < 0) {
                        j = 0;
                    } else {
                        j = 1;
                    }
                } else {
                    long j4 = (LongCompanionObject.MAX_VALUE / j2) << 1;
                    if (UnsignedLongs.a((-1) - (j4 * j2), j2) >= 0) {
                        i = 1;
                    } else {
                        i = 0;
                    }
                    j = j4 + i;
                }
                jArr[i2] = j;
                int[] iArr = b;
                if (j2 < 0) {
                    if (UnsignedLongs.a(-1L, j2) < 0) {
                        iArr[i2] = (int) j3;
                        f12530c[i2] = shiftLeft.toString(i2).length() - 1;
                    }
                } else {
                    j3 = (-1) - (((LongCompanionObject.MAX_VALUE / j2) << 1) * j2);
                    if (UnsignedLongs.a(j3, j2) < 0) {
                        j2 = 0;
                    }
                }
                j3 -= j2;
                iArr[i2] = (int) j3;
                f12530c[i2] = shiftLeft.toString(i2).length() - 1;
            }
        }
    }

    public static int a(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
    }

    public static String b(long j) {
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, 10);
        }
        char[] cArr = new char[64];
        long j2 = (j >>> 1) / 5;
        long j3 = 10;
        int i = 63;
        cArr[63] = Character.forDigit((int) (j - (j2 * j3)), 10);
        while (j2 > 0) {
            i--;
            cArr[i] = Character.forDigit((int) (j2 % j3), 10);
            j2 /= j3;
        }
        return new String(cArr, i, 64 - i);
    }
}
