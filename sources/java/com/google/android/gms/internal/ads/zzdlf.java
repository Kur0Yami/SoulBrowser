package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzdlf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5874a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzelk f5875c;
    public final zzeoc d;

    public zzdlf(zzijf zzijfVar, zzijf zzijfVar2, zzelk zzelkVar, zzeoc zzeocVar) {
        this.f5874a = zzijfVar;
        this.b = zzijfVar2;
        this.f5875c = zzelkVar;
        this.d = zzeocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f5874a.zzb();
        zzgyw zzgywVar = (zzgyw) this.b.zzb();
        zzelk zzelkVar = this.f5875c;
        return new zzeoi(zzfmuVar, zzgywVar, this.d.zzb(), new zzelj((Context) zzelkVar.f6640a.zzb(), (zzdkz) zzelkVar.b.f9006a));
    }
}
