package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzevg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6981a;
    public final zzijf b;

    public zzevg(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6981a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzexq zzexqVar = new zzexq(zzgywVar);
        Clock clock = (Clock) this.f6981a.zzb();
        zzijo.a(zzgywVar);
        return new zzeul(zzexqVar, ((Long) zzbhz.f.c()).longValue(), clock, zzgywVar, (zzdxe) this.b.zzb());
    }
}
