package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* loaded from: classes.dex */
final class zzaqh implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final zzaqe f4344a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4345c;
    public final long d;
    public final long e;

    public zzaqh(zzaqe zzaqeVar, int i, long j, long j2) {
        this.f4344a = zzaqeVar;
        this.b = i;
        this.f4345c = j;
        long j3 = (j2 - j) / zzaqeVar.f4341c;
        this.d = j3;
        this.e = c(j3);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        long j2 = this.b;
        zzaqe zzaqeVar = this.f4344a;
        long j3 = (zzaqeVar.b * j) / (j2 * 1000000);
        String str = zzfj.f7405a;
        long j4 = this.d - 1;
        long max = Math.max(0L, Math.min(j3, j4));
        long j5 = zzaqeVar.f4341c;
        long c2 = c(max);
        long j6 = this.f4345c;
        zzafs zzafsVar = new zzafs(c2, (max * j5) + j6);
        if (c2 < j && max != j4) {
            long j7 = max + 1;
            return new zzafp(zzafsVar, new zzafs(c(j7), (j5 * j7) + j6));
        }
        return new zzafp(zzafsVar, zzafsVar);
    }

    public final long c(long j) {
        return zzfj.u(j * this.b, 1000000L, this.f4344a.b, RoundingMode.DOWN);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
