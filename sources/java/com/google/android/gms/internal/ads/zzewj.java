package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzezj f7021a;
    public final zzijp b;

    public zzewj(zzezj zzezjVar, zzijf zzijfVar) {
        this.f7021a = zzezjVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzezj zzezjVar = this.f7021a;
        zzcbw zzcbwVar = (zzcbw) zzezjVar.f7125a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzezh(zzcbwVar, zzgywVar, ((zzclp) zzezjVar.b).a()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.wd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
