package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzcup implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5485a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzekq f5486c;
    public final zzeoc d;

    public zzcup(zzijf zzijfVar, zzijp zzijpVar, zzekq zzekqVar, zzeoc zzeocVar) {
        this.f5485a = zzijfVar;
        this.b = zzijpVar;
        this.f5486c = zzekqVar;
        this.d = zzeocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f5485a.zzb();
        zzgyw zzgywVar = (zzgyw) this.b.zzb();
        zzekq zzekqVar = this.f5486c;
        return new zzeoi(zzfmuVar, zzgywVar, this.d.zzb(), new zzekp((Context) zzekqVar.f6606a.zzb(), (zzcuh) zzekqVar.b.f9006a));
    }
}
