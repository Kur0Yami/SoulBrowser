package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfcb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7209a;
    public final zzijp b;

    public zzfcb(zzclp zzclpVar, zzijf zzijfVar) {
        this.f7209a = zzijfVar;
        this.b = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7209a.zzb();
        ((zzclp) this.b).a();
        return new zzfbz(scheduledExecutorService);
    }
}
