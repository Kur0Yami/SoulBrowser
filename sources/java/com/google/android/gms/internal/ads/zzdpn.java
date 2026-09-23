package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdpn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdoe f5999a;
    public final zzdml b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6000c;

    public zzdpn(zzdoe zzdoeVar, zzdml zzdmlVar, zzijf zzijfVar) {
        this.f5999a = zzdoeVar;
        this.b = zzdmlVar;
        this.f6000c = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdnm a2 = this.f5999a.a();
        zzdnq zzdnqVar = (zzdnq) this.b.f5911a.zzb();
        zzijo.a(zzdnqVar);
        Executor executor = (Executor) this.f6000c.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdpm(a2, zzdnqVar, executor, zzgywVar);
    }
}
