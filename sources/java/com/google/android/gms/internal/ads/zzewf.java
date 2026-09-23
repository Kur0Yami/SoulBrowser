package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeyd f7016a;
    public final zzijp b;

    public zzewf(zzeyd zzeydVar, zzijf zzijfVar) {
        this.f7016a = zzeydVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzeyb(((zzclp) this.f7016a.f7077a).a(), zzgywVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.zd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
