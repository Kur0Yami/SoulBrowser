package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzyd implements zzxw {

    /* renamed from: a, reason: collision with root package name */
    public final zzxw f9384a;
    public final long b;

    public zzyd(zzxw zzxwVar, long j) {
        this.f9384a = zzxwVar;
        this.b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final int a(long j) {
        return this.f9384a.a(j - this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final int b(zzle zzleVar, zzih zzihVar, int i) {
        int b = this.f9384a.b(zzleVar, zzihVar, i);
        if (b == -4) {
            zzihVar.f += this.b;
            return -4;
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final boolean zzb() {
        return this.f9384a.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final void zzc() {
        this.f9384a.zzc();
    }
}
