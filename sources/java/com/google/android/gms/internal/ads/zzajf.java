package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes.dex */
final class zzajf implements zzajk {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f4087a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4088c;

    public zzajf(long j, long[] jArr, long[] jArr2) {
        this.f4087a = jArr;
        this.b = jArr2;
        this.f4088c = j == -9223372036854775807L ? zzfj.s(jArr2[jArr2.length - 1]) : j;
    }

    public static Pair c(long j, long[] jArr, long[] jArr2) {
        double d;
        int q = zzfj.q(jArr, j, true);
        long j2 = jArr[q];
        long j3 = jArr2[q];
        int i = q + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            d = (j - j2) / (j4 - j2);
        }
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) (d * (j5 - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long a(long j) {
        return zzfj.s(((Long) c(j, this.f4087a, this.b).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        String str = zzfj.f7405a;
        Pair c2 = c(zzfj.r(Math.max(0L, Math.min(j, this.f4088c))), this.b, this.f4087a);
        zzafs zzafsVar = new zzafs(zzfj.s(((Long) c2.first).longValue()), ((Long) c2.second).longValue());
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f4088c;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final long zzf() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzajk
    public final int zzg() {
        return -2147483647;
    }
}
