package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzdaz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzday f5666a;
    public final zzijs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5667c;

    public zzdaz(zzday zzdayVar, zzijs zzijsVar, zzijf zzijfVar) {
        this.f5666a = zzdayVar;
        this.b = zzijsVar;
        this.f5667c = zzijfVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzdgi, com.google.android.gms.internal.ads.zzdat] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        ?? zzdgiVar = new zzdgi(this.f5666a.f5665a.zzb());
        Set zzb = this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdax(zzdgiVar, zzb, zzgywVar, (ScheduledExecutorService) this.f5667c.zzb());
    }
}
