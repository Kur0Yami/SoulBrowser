package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzdto implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6131a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeni f6132c;
    public final zzeoc d;

    public zzdto(zzijf zzijfVar, zzijf zzijfVar2, zzeni zzeniVar, zzeoc zzeocVar) {
        this.f6131a = zzijfVar;
        this.b = zzijfVar2;
        this.f6132c = zzeniVar;
        this.d = zzeocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f6131a.zzb();
        zzgyw zzgywVar = (zzgyw) this.b.zzb();
        zzeni zzeniVar = this.f6132c;
        return new zzeoi(zzfmuVar, zzgywVar, this.d.zzb(), new zzenh((Context) zzeniVar.f6718a.zzb(), (zzdtj) zzeniVar.b.f9006a));
    }
}
