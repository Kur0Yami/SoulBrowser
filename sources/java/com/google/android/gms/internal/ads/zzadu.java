package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzadu implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final zzadx f3937a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3938c;
    public final long d;
    public final long e;
    public final long f;

    public zzadu(zzadx zzadxVar, long j, long j2, long j3, long j4, long j5) {
        this.f3937a = zzadxVar;
        this.b = j;
        this.f3938c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzafs zzafsVar = new zzafs(j, zzadw.a(this.f3937a.a(j), 0L, this.f3938c, this.d, this.e, this.f));
        return new zzafp(zzafsVar, zzafsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
