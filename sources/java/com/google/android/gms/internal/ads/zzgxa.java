package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgxa {
    public static long[] a(long[]... jArr) {
        boolean z;
        long j = 0;
        for (long[] jArr2 : jArr) {
            j += jArr2.length;
        }
        int i = (int) j;
        if (j == i) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.d("the total number of elements (%s) in the arrays must fit in an int", j, z);
        long[] jArr3 = new long[i];
        int i2 = 0;
        for (long[] jArr4 : jArr) {
            int length = jArr4.length;
            System.arraycopy(jArr4, 0, jArr3, i2, length);
            i2 += length;
        }
        return jArr3;
    }
}
