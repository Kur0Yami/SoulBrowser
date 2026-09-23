package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeyh f7017a;
    public final zzijp b;

    public zzewg(zzeyh zzeyhVar, zzijf zzijfVar) {
        this.f7017a = zzeyhVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzeyf(zzgywVar, (zzdyh) this.f7017a.f7081a.zzb()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Bd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
