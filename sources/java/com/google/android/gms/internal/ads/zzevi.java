package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzevi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeym f6983a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6984c;

    public zzevi(zzeym zzeymVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6983a = zzeymVar;
        this.b = zzijfVar;
        this.f6984c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzeyk zzb = this.f6983a.zzb();
        Clock clock = (Clock) this.b.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzeul(zzb, 2147483647L, clock, zzgywVar, (zzdxe) this.f6984c.zzb());
    }
}
