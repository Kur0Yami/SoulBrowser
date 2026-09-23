package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzczc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5614a;
    public final zzcwb b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5615c;
    public final zzcwc d;
    public final zzijf e;

    public zzczc(zzijf zzijfVar, zzcwb zzcwbVar, zzijf zzijfVar2, zzcwc zzcwcVar, zzijf zzijfVar3) {
        this.f5614a = zzijfVar;
        this.b = zzcwbVar;
        this.f5615c = zzijfVar2;
        this.d = zzcwcVar;
        this.e = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdbc zzdbcVar = (zzdbc) this.f5614a.zzb();
        zzfhr a2 = this.b.a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f5615c.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzczb(zzdbcVar, a2, scheduledExecutorService, zzgywVar, this.d.f5527a.f5525c, (zzddd) this.e.zzb());
    }
}
