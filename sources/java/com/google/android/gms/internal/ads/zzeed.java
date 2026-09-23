package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzeed implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijn f6417a;
    public final zzddp b;

    public zzeed(zzijn zzijnVar, zzddp zzddpVar) {
        this.f6417a = zzijnVar;
        this.b = zzddpVar;
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzddo, com.google.android.gms.internal.ads.zzdgi] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Map map = this.f6417a.f9002a;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeec(map, zzgywVar, new zzdgi(this.b.f5716a.zzb()));
    }
}
