package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzdqb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6017a;
    public final zzijp b;

    public zzdqb(zzijp zzijpVar, zzijp zzijpVar2) {
        this.f6017a = zzijpVar;
        this.b = zzijpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        com.google.android.gms.ads.internal.util.zzbl zzblVar = (com.google.android.gms.ads.internal.util.zzbl) this.f6017a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdqa(zzblVar, clock, zzgywVar);
    }
}
