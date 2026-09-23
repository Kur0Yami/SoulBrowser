package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* loaded from: classes.dex */
public final class zzexz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdab f7071a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7072c;

    public zzexz(zzdab zzdabVar, zzijf zzijfVar, zzclj zzcljVar) {
        this.f7071a = zzdabVar;
        this.b = zzijfVar;
        this.f7072c = zzcljVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzexx(zzgywVar, this.f7071a.a(), (PackageInfo) this.b.zzb(), ((zzclj) this.f7072c).zzb());
    }
}
