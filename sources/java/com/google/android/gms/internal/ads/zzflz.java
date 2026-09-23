package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzflz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7468a;

    public zzflz(zzijf zzijfVar) {
        this.f7468a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7468a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfly(scheduledExecutorService, zzgywVar);
    }
}
