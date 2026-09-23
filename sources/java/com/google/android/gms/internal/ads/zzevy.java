package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevy implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7006a;

    public zzevy(zzijf zzijfVar) {
        this.f7006a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzewt(zzgywVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Dd)).intValue(), (ScheduledExecutorService) this.f7006a.zzb());
    }
}
