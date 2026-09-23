package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeuw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfaj f6965a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6966c;

    public zzeuw(zzfaj zzfajVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6965a = zzfajVar;
        this.b = zzijfVar;
        this.f6966c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzfaj zzfajVar = this.f6965a;
        zzfai zzfaiVar = new zzfai(zzgywVar, zzfajVar.f7159a.a(), (zzebp) zzfajVar.b.zzb());
        Clock clock = (Clock) this.b.zzb();
        zzijo.a(zzgywVar);
        return new zzeul(zzfaiVar, ((Long) zzbhz.d.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6966c.zzb());
    }
}
