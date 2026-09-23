package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* loaded from: classes.dex */
final class zzala implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzalb f4151a;

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzalb zzalbVar = this.f4151a;
        BigInteger valueOf = BigInteger.valueOf((zzalbVar.d.i * j) / 1000000);
        long j2 = zzalbVar.f4153c;
        long j3 = zzalbVar.b;
        long longValue = valueOf.multiply(BigInteger.valueOf(j2 - j3)).divide(BigInteger.valueOf(zzalbVar.f)).longValue() + j3;
        String str = zzfj.f7405a;
        zzafs zzafsVar = new zzafs(j, Math.max(j3, Math.min(longValue - 30000, j2 - 1)));
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        zzalb zzalbVar = this.f4151a;
        zzalm zzalmVar = zzalbVar.d;
        return (zzalbVar.f * 1000000) / zzalmVar.i;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
