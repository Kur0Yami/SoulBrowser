package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzcsv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5441a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzejz f5442c;
    public final zzeoc d;

    public zzcsv(zzijf zzijfVar, zzijf zzijfVar2, zzejz zzejzVar, zzeoc zzeocVar) {
        this.f5441a = zzijfVar;
        this.b = zzijfVar2;
        this.f5442c = zzejzVar;
        this.d = zzeocVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f5441a.zzb();
        zzgyw zzgywVar = (zzgyw) this.b.zzb();
        zzejz zzejzVar = this.f5442c;
        return new zzeoi(zzfmuVar, zzgywVar, this.d.zzb(), new zzejy((Context) zzejzVar.f6580a.zzb(), (zzcsq) zzejzVar.b.f9006a));
    }
}
