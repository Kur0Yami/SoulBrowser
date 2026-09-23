package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzemz implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6705a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6706c;
    public final zzijf d;
    public final zzijf e;
    public final zzijp f;
    public final zzijf g;
    public final zzijp h;
    public final zzijf i;
    public final zzijf j;
    public final zzemd k;
    public final zzijf l;

    public zzemz(zzijp zzijpVar, zzijf zzijfVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijp zzijpVar2, zzijf zzijfVar5, zzijp zzijpVar3, zzijf zzijfVar6, zzijf zzijfVar7, zzemd zzemdVar, zzijf zzijfVar8) {
        this.f6705a = zzijpVar;
        this.b = zzijfVar;
        this.f6706c = zzijfVar2;
        this.d = zzijfVar3;
        this.e = zzijfVar4;
        this.f = zzijpVar2;
        this.g = zzijfVar5;
        this.h = zzijpVar3;
        this.i = zzijfVar6;
        this.j = zzijfVar7;
        this.k = zzemdVar;
        this.l = zzijfVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzemy zzb() {
        Context a2 = ((zzclp) this.f6705a).a();
        zzfmu zzfmuVar = (zzfmu) this.b.zzb();
        zzemr zzemrVar = (zzemr) this.f6706c.zzb();
        zzdam zzdamVar = (zzdam) this.d.zzb();
        zzfpe zzfpeVar = (zzfpe) this.e.zzb();
        zzfpi zzfpiVar = (zzfpi) this.f.zzb();
        zzcvn zzcvnVar = (zzcvn) this.g.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzemy(a2, zzfmuVar, zzemrVar, zzdamVar, zzfpeVar, zzfpiVar, zzcvnVar, zzgywVar, (ScheduledExecutorService) this.h.zzb(), (zzejl) this.i.zzb(), (zzfno) this.j.zzb(), this.k.zzb(), (zzdwy) this.l.zzb());
    }
}
