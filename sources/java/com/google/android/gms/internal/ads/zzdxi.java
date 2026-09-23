package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzdxi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6232a;
    public final zzijs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6233c;

    public zzdxi(zzijf zzijfVar, zzijs zzijsVar, zzijf zzijfVar2) {
        this.f6232a = zzijfVar;
        this.b = zzijsVar;
        this.f6233c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdxh((zzdwy) this.f6232a.zzb(), this.b.zzb(), (Clock) this.f6233c.zzb());
    }
}
