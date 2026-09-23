package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes.dex */
public final class zzcxn implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5568a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdab f5569c;
    public final zzijf d;

    public zzcxn(zzijp zzijpVar, zzijp zzijpVar2, zzdab zzdabVar, zzijf zzijfVar) {
        this.f5568a = zzijpVar;
        this.b = zzijpVar2;
        this.f5569c = zzdabVar;
        this.d = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcxm((Clock) this.f5568a.zzb(), (zzcxo) this.b.zzb(), this.f5569c.a(), (String) this.d.zzb());
    }
}
