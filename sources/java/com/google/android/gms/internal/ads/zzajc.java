package com.google.android.gms.internal.ads;

import kotlin.UByte;

/* loaded from: classes.dex */
final class zzajc {
    public static final long[] d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4085a = new byte[8];
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f4086c;

    public static long b(byte[] bArr, int i, boolean z) {
        long j = bArr[0] & 255;
        if (z) {
            j &= ~d[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        return j;
    }

    public final long a(zzaep zzaepVar, boolean z, boolean z2, int i) {
        int i2;
        int i3 = this.b;
        byte[] bArr = this.f4085a;
        if (i3 == 0) {
            if (!zzaepVar.k(bArr, 0, 1, z)) {
                return -1L;
            }
            int i4 = bArr[0] & UByte.MAX_VALUE;
            int i5 = 0;
            while (true) {
                if (i5 < 8) {
                    i2 = i5 + 1;
                    if ((d[i5] & i4) != 0) {
                        break;
                    }
                    i5 = i2;
                } else {
                    i2 = -1;
                    break;
                }
            }
            this.f4086c = i2;
            if (i2 != -1) {
                this.b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
        }
        int i6 = this.f4086c;
        if (i6 > i) {
            this.b = 0;
            return -2L;
        }
        if (i6 != 1) {
            zzaepVar.i(bArr, 1, i6 - 1);
        }
        this.b = 0;
        return b(bArr, this.f4086c, z2);
    }
}
