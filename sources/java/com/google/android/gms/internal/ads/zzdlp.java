package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzdlp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijk f5886a;
    public final zzijk b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijk f5887c;
    public final zzijf d;
    public final zzdlt e;

    public zzdlp(zzijk zzijkVar, zzijk zzijkVar2, zzijk zzijkVar3, zzijf zzijfVar, zzdlt zzdltVar) {
        this.f5886a = zzijkVar;
        this.b = zzijkVar2;
        this.f5887c = zzijkVar3;
        this.d = zzijfVar;
        this.e = zzdltVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Map zzb = this.f5886a.zzb();
        Map zzb2 = this.b.zzb();
        Map zzb3 = this.f5887c.zzb();
        zzdnw zzdnwVar = this.e.f5891a.f5888a;
        zzijo.a(zzdnwVar);
        return new zzdlo(zzb, zzb2, zzb3, this.d, zzdnwVar);
    }
}
