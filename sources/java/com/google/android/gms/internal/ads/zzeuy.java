package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeuy implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzetg f6969a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6970c;

    public zzeuy(zzetg zzetgVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6969a = zzetgVar;
        this.b = zzijfVar;
        this.f6970c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzete zzb = this.f6969a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, ((Long) zzbhz.f4697a.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6970c.zzb());
    }
}
