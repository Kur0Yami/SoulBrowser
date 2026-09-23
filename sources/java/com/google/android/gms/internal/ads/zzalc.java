package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzalc implements zzali {

    /* renamed from: a, reason: collision with root package name */
    public final zzafb f4154a;
    public final zzafa b;

    /* renamed from: c, reason: collision with root package name */
    public long f4155c = -1;
    public long d = -1;

    public zzalc(zzafb zzafbVar, zzafa zzafaVar) {
        this.f4154a = zzafbVar;
        this.b = zzafaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void a(long j) {
        long[] jArr = this.b.f3965a;
        this.d = jArr[zzfj.q(jArr, j, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final long d(zzaep zzaepVar) {
        long j = this.d;
        if (j < 0) {
            return -1L;
        }
        this.d = -1L;
        return -(j + 2);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final zzafr zzc() {
        boolean z;
        if (this.f4155c != -1) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        return new zzaez(this.f4154a, this.f4155c);
    }
}
