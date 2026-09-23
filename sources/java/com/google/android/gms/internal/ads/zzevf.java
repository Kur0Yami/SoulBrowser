package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzevf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzexk f6979a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6980c;

    public zzevf(zzexk zzexkVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6979a = zzexkVar;
        this.b = zzijfVar;
        this.f6980c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzexi zzb = this.f6979a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, ((Long) zzbhz.e.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6980c.zzb());
    }
}
