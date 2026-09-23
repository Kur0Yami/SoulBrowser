package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfmw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7488a;
    public final zzfmx b;

    public zzfmw(zzijf zzijfVar, zzfmx zzfmxVar) {
        this.f7488a = zzijfVar;
        this.b = zzfmxVar;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzdgi, com.google.android.gms.internal.ads.zzfmn] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzfmm(zzgywVar, (ScheduledExecutorService) this.f7488a.zzb(), new zzdgi(this.b.f7489a.zzb()));
    }
}
