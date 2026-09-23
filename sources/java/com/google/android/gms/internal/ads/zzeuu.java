package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeuu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeue f6961a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6962c;

    public zzeuu(zzeue zzeueVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6961a = zzeueVar;
        this.b = zzijfVar;
        this.f6962c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzeuc zzeucVar = new zzeuc(this.f6961a.f6943a.a(), zzgywVar);
        Clock clock = (Clock) this.b.zzb();
        zzijo.a(zzgywVar);
        return new zzeul(zzeucVar, ((Long) zzbhz.f4698c.c()).longValue(), clock, zzgywVar, (zzdxe) this.f6962c.zzb());
    }
}
