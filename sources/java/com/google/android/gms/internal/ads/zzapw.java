package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzapw {
    public static long a(zzer zzerVar, int i, int i2) {
        zzerVar.E(i);
        if (zzerVar.B() >= 5) {
            int b = zzerVar.b();
            if ((8388608 & b) == 0 && ((b >> 8) & 8191) == i2 && (b & 32) != 0 && zzerVar.K() >= 7 && zzerVar.B() >= 7 && (zzerVar.K() & 16) == 16) {
                byte[] bArr = new byte[6];
                zzerVar.H(bArr, 0, 6);
                long j = bArr[0];
                long j2 = bArr[1];
                long j3 = bArr[2];
                long j4 = bArr[3] & 255;
                return ((j & 255) << 25) | ((j2 & 255) << 17) | ((j3 & 255) << 9) | (j4 + j4) | ((bArr[4] & 255) >> 7);
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }
}
