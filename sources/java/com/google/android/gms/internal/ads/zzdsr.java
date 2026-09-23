package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdsr implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f6111a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6112c;
    public final zzcmg d;
    public final zzijf e;
    public final zzijf f;
    public final zzijf g;
    public final zzijf h;
    public final zzijf i;

    public zzdsr(zzclp zzclpVar, zzijf zzijfVar, zzijf zzijfVar2, zzcmg zzcmgVar, zzcoe zzcoeVar, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5, zzijf zzijfVar6, zzijf zzijfVar7) {
        this.f6111a = zzclpVar;
        this.b = zzijfVar;
        this.f6112c = zzijfVar2;
        this.d = zzcmgVar;
        this.e = zzijfVar3;
        this.f = zzijfVar4;
        this.g = zzijfVar5;
        this.h = zzijfVar6;
        this.i = zzijfVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return new zzdsn(this.f6111a.a(), (Executor) this.b.zzb(), (zzayq) this.f6112c.zzb(), this.d.a(), zzcoe.a(), (zzehu) this.e.zzb(), (zzfpi) this.f.zzb(), (zzdxe) this.g.zzb(), (zzeif) this.h.zzb(), (zzfio) this.i.zzb());
    }
}
