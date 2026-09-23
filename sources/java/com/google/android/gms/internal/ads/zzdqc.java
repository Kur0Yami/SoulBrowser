package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzdqc implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdwm f6018a;
    public final /* synthetic */ zzdqf b;

    public zzdqc(zzdqf zzdqfVar, zzdwm zzdwmVar) {
        this.f6018a = zzdwmVar;
        this.b = zzdqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        androidx.work.impl.workers.a.z(this.f6018a.f6209c, this.b.d.e);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
