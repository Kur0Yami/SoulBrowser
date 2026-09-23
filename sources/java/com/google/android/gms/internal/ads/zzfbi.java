package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfbi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfcd f7191a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7192c;

    public zzfbi(zzfcd zzfcdVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f7191a = zzfcdVar;
        this.b = zzijfVar;
        this.f7192c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzijo.a(this.f7191a.f7211a.f7210a.h);
        zzcda zzcdaVar = (zzcda) this.b.zzb();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f7192c.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfbg(zzcdaVar, scheduledExecutorService, zzgywVar);
    }
}
