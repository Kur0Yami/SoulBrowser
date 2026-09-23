package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeux implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzerp f6967a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6968c;

    public zzeux(zzerp zzerpVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6967a = zzerpVar;
        this.b = zzijfVar;
        this.f6968c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzern zzernVar = new zzern(((zzclp) this.f6967a.f6852a).a());
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzernVar, 2147483647L, clock, zzgywVar, (zzdxe) this.f6968c.zzb());
    }
}
