package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdro implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdab f6071a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6072c;
    public final zzijf d;
    public final zzijp e;
    public final zzijp f;
    public final zzijp g;
    public final zzijf h;
    public final zzijf i;
    public final zzijp j;

    public zzdro(zzdab zzdabVar, zzijp zzijpVar, zzijf zzijfVar, zzijf zzijfVar2, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijf zzijfVar3, zzijf zzijfVar4, zzijp zzijpVar5) {
        this.f6071a = zzdabVar;
        this.b = zzijpVar;
        this.f6072c = zzijfVar;
        this.d = zzijfVar2;
        this.e = zzijpVar2;
        this.f = zzijpVar3;
        this.g = zzijpVar4;
        this.h = zzijfVar3;
        this.i = zzijfVar4;
        this.j = zzijpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdrm(this.f6071a.a(), (Executor) this.b.zzb(), (zzdua) this.f6072c.zzb(), (Context) this.d.zzb(), (zzdxe) this.e.zzb(), (zzfpi) this.f.zzb(), (zzehu) this.g.zzb(), (zzdsv) this.h.zzb(), (zzdwy) this.i.zzb(), (zzdyh) this.j.zzb());
    }
}
