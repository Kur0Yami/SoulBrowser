package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzejs implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f6570a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6571c;
    public final zzijf d;
    public final zzdab e;
    public final zzijp f;
    public final zzijp g;
    public final zzijf h;
    public final zzijp i;

    public zzejs(zzcmg zzcmgVar, zzdab zzdabVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5, zzijf zzijfVar6, zzijh zzijhVar) {
        this.f6570a = zzijhVar;
        this.b = zzijfVar;
        this.f6571c = zzijfVar2;
        this.d = zzijfVar3;
        this.e = zzdabVar;
        this.f = zzcmgVar;
        this.g = zzijfVar4;
        this.h = zzijfVar5;
        this.i = zzijfVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzcsq zzcsqVar = (zzcsq) this.f6570a.f9006a;
        return new zzejr(zzcsqVar, (Executor) this.f6571c.zzb(), (zzdua) this.d.zzb(), this.e.a(), ((zzcmg) this.f).a(), new zzbnq(), (zzeif) this.g.zzb(), (zzdwy) this.h.zzb(), (zzdxe) this.i.zzb());
    }
}
