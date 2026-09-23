package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgxb {
    public static byte a(long j) {
        boolean z;
        if ((j >> 8) == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.d("out of range: %s", j, z);
        return (byte) j;
    }
}
