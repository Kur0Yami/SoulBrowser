package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzezf implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7118a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7119c;
    public final zzijf d;
    public final zzdab e;
    public final zzijf f;
    public final zzijp g;
    public final zzijp h;
    public final zzijf i;

    public zzezf(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijf zzijfVar, zzdab zzdabVar, zzijf zzijfVar2, zzijp zzijpVar4, zzijp zzijpVar5, zzijf zzijfVar3) {
        this.f7118a = zzijpVar;
        this.b = zzijpVar2;
        this.f7119c = zzijpVar3;
        this.d = zzijfVar;
        this.e = zzdabVar;
        this.f = zzijfVar2;
        this.g = zzijpVar4;
        this.h = zzijpVar5;
        this.i = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzezd(zzgywVar, (ScheduledExecutorService) this.f7118a.zzb(), (String) this.b.zzb(), (zzepk) this.f7119c.zzb(), (Context) this.d.zzb(), this.e.a(), (zzepf) this.f.zzb(), (zzduu) this.g.zzb(), (zzdzr) this.h.zzb(), ((Integer) this.i.zzb()).intValue());
    }
}
