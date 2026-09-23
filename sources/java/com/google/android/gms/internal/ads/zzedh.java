package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzedh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6397a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6398c;
    public final zzdab d;
    public final zzijg e;
    public final zzijf f;
    public final zzijf g;
    public final zzijp h;
    public final zzijp i;
    public final zzddp j;

    public zzedh(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzdab zzdabVar, zzijg zzijgVar, zzijf zzijfVar, zzijf zzijfVar2, zzijp zzijpVar4, zzijp zzijpVar5, zzddp zzddpVar) {
        this.f6397a = zzijpVar;
        this.b = zzijpVar2;
        this.f6398c = zzijpVar3;
        this.d = zzdabVar;
        this.e = zzijgVar;
        this.f = zzijfVar;
        this.g = zzijfVar2;
        this.h = zzijpVar4;
        this.i = zzijpVar5;
        this.j = zzddpVar;
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [com.google.android.gms.internal.ads.zzbzi, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.google.android.gms.internal.ads.zzddo, com.google.android.gms.internal.ads.zzdgi] */
    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzedg zzb() {
        zzclg zzclgVar = (zzclg) this.f6397a.zzb();
        Context a2 = ((zzclp) this.b).a();
        VersionInfoParcel a3 = ((zzcmg) this.f6398c).a();
        zzfik a4 = this.d.a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzedg(zzclgVar, a2, a3, a4, zzgywVar, (String) this.e.zzb(), (zzfno) this.f.zzb(), (zzdwy) this.g.zzb(), new Object(), (ScheduledExecutorService) this.h.zzb(), (zzfpi) this.i.zzb(), new zzdgi(this.j.f5716a.zzb()));
    }
}
