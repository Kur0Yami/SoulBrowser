package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzewc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzexo f7012a;
    public final zzijp b;

    public zzewc(zzexo zzexoVar, zzijf zzijfVar) {
        this.f7012a = zzexoVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeyj(new zzexm(zzgywVar, (zzeak) this.f7012a.f7059a.zzb()), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Cd)).intValue(), (ScheduledExecutorService) this.b.zzb());
    }
}
