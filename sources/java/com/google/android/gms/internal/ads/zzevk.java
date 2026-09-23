package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzevk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfan f6987a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6988c;

    public zzevk(zzfan zzfanVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6987a = zzfanVar;
        this.b = zzijfVar;
        this.f6988c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfam zzb = this.f6987a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, ((Long) zzbhz.h.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6988c.zzb());
    }
}
