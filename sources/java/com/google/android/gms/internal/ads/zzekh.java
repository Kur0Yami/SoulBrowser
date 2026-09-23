package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzekh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijh f6591a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6592c;
    public final zzijf d;
    public final zzdab e;
    public final zzijf f;
    public final zzijf g;

    public zzekh(zzijh zzijhVar, zzijf zzijfVar, zzijp zzijpVar, zzijf zzijfVar2, zzdab zzdabVar, zzijf zzijfVar3, zzijf zzijfVar4) {
        this.f6591a = zzijhVar;
        this.b = zzijfVar;
        this.f6592c = zzijpVar;
        this.d = zzijfVar2;
        this.e = zzdabVar;
        this.f = zzijfVar3;
        this.g = zzijfVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzekg zzb() {
        return new zzekg((zzcuh) this.f6591a.f9006a, (Context) this.b.zzb(), (Executor) this.f6592c.zzb(), (zzdua) this.d.zzb(), this.e.a(), (zzgpr) this.f.zzb(), (zzdwy) this.g.zzb());
    }
}
