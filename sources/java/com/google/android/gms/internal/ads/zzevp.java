package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzevp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzesy f6994a;
    public final zzijp b;

    public zzevp(zzesy zzesyVar, zzijf zzijfVar) {
        this.f6994a = zzesyVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzesw(((zzclp) this.f6994a.f6903a).a(), zzgywVar), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ud)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
