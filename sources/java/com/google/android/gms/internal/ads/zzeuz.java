package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzeuz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzett f6971a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6972c;

    public zzeuz(zzett zzettVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6971a = zzettVar;
        this.b = zzijfVar;
        this.f6972c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzetr zzb = this.f6971a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, 2147483647L, clock, zzgywVar, (zzdxe) this.f6972c.zzb());
    }
}
