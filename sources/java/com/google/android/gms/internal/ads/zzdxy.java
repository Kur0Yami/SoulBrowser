package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes.dex */
public final class zzdxy implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6250a;

    public zzdxy(zzijf zzijfVar) {
        this.f6250a = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzdyd zzdydVar = (zzdyd) this.f6250a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        Set a2 = zzdxt.a(zzdydVar, zzgywVar);
        zzijo.a(a2);
        return a2;
    }
}
