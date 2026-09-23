package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdom implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5965a;
    public final zzdab b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f5966c;
    public final zzdoe d;
    public final zzijg e;
    public final zzijg f;
    public final zzijp g;
    public final zzijf h;

    public zzdom(zzclj zzcljVar, zzdab zzdabVar, zzijp zzijpVar, zzdoe zzdoeVar, zzijg zzijgVar, zzijg zzijgVar2, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5965a = zzcljVar;
        this.b = zzdabVar;
        this.f5966c = zzijpVar;
        this.d = zzdoeVar;
        this.e = zzijgVar;
        this.f = zzijgVar2;
        this.g = zzijfVar;
        this.h = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdol zzb() {
        com.google.android.gms.ads.internal.util.zzj zzb = ((zzclj) this.f5965a).zzb();
        zzfik a2 = this.b.a();
        zzdnr zzdnrVar = (zzdnr) this.f5966c.zzb();
        zzdnm a3 = this.d.a();
        zzdoz zzdozVar = (zzdoz) this.e.zzb();
        zzdph zzdphVar = (zzdph) this.f.zzb();
        Executor executor = (Executor) this.g.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdol(zzb, a2, zzdnrVar, a3, zzdozVar, zzdphVar, executor, zzgywVar, (zzdnj) this.h.zzb());
    }
}
