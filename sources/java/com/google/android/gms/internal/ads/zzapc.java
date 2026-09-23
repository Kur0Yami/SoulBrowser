package com.google.android.gms.internal.ads;

import kotlin.UByte;

/* loaded from: classes.dex */
final class zzapc {

    /* renamed from: c, reason: collision with root package name */
    public boolean f4307c;
    public boolean d;
    public boolean e;

    /* renamed from: a, reason: collision with root package name */
    public final zzfg f4306a = new zzfg();
    public long f = -9223372036854775807L;
    public long g = -9223372036854775807L;
    public long h = -9223372036854775807L;
    public final zzer b = new zzer();

    public static long a(zzer zzerVar) {
        int i = zzerVar.b;
        if (zzerVar.B() >= 9) {
            byte[] bArr = new byte[9];
            zzerVar.H(bArr, 0, 9);
            zzerVar.E(i);
            byte b = bArr[0];
            if ((b & 196) == 68) {
                byte b2 = bArr[2];
                if ((b2 & 4) == 4) {
                    byte b3 = bArr[4];
                    if ((b3 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                        long j = b;
                        long j2 = b2;
                        long j3 = (248 & j2) >> 3;
                        long j4 = (bArr[1] & 255) << 20;
                        long j5 = (j2 & 3) << 13;
                        return j5 | j4 | ((j & 3) << 28) | (((j & 56) >> 3) << 30) | (j3 << 15) | ((bArr[3] & 255) << 5) | ((b3 & 248) >> 3);
                    }
                    return -9223372036854775807L;
                }
                return -9223372036854775807L;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    public static final int b(byte[] bArr, int i) {
        return (bArr[i + 3] & UByte.MAX_VALUE) | ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8);
    }
}
