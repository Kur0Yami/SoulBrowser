package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeva implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzetx f6975a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6976c;

    public zzeva(zzetx zzetxVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6975a = zzetxVar;
        this.b = zzijfVar;
        this.f6976c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzetv zzb = this.f6975a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, ((Long) zzbhz.b.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6976c.zzb());
    }
}
