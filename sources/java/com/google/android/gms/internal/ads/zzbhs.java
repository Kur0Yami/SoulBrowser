package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzbhs implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f4689a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f4690c;

    public zzbhs(zzijp zzijpVar, zzijp zzijpVar2, zzijf zzijfVar) {
        this.f4689a = zzijpVar;
        this.b = zzijpVar2;
        this.f4690c = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ((zzclp) this.f4689a).a();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.b.zzb();
        return new zzbhr(scheduledExecutorService);
    }
}
