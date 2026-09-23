package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzdqv implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6044a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f6045c;
    public final zzijp d;
    public final zzijp e;
    public final zzijf f;
    public final zzdab g;
    public final zzijf h;
    public final zzijf i;
    public final zzijp j;
    public final zzijp k;
    public final zzijp l;
    public final zzijp m;
    public final zzijf n;
    public final zzijp o;
    public final zzijp p;
    public final zzijf q;
    public final zzijp r;

    public zzdqv(zzijf zzijfVar, zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijf zzijfVar2, zzdab zzdabVar, zzijf zzijfVar3, zzijf zzijfVar4, zzijp zzijpVar5, zzijp zzijpVar6, zzijp zzijpVar7, zzijp zzijpVar8, zzijf zzijfVar5, zzijp zzijpVar9, zzijp zzijpVar10, zzijf zzijfVar6, zzijp zzijpVar11) {
        this.f6044a = zzijfVar;
        this.b = zzijpVar;
        this.f6045c = zzijpVar2;
        this.d = zzijpVar3;
        this.e = zzijpVar4;
        this.f = zzijfVar2;
        this.g = zzdabVar;
        this.h = zzijfVar3;
        this.i = zzijfVar4;
        this.j = zzijpVar5;
        this.k = zzijpVar6;
        this.l = zzijpVar7;
        this.m = zzijpVar8;
        this.n = zzijfVar5;
        this.o = zzijpVar9;
        this.p = zzijpVar10;
        this.q = zzijfVar6;
        this.r = zzijpVar11;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzdqu zzb() {
        Context context = (Context) this.f6044a.zzb();
        zzdqa zzdqaVar = (zzdqa) this.b.zzb();
        zzayq zzayqVar = (zzayq) this.f6045c.zzb();
        VersionInfoParcel a2 = ((zzcmg) this.d).a();
        zzcod zzcodVar = ((zzcoe) this.e).f5336a;
        com.google.android.gms.ads.internal.zza a3 = zzcoe.a();
        zzbfj zzbfjVar = (zzbfj) this.f.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzdqu(context, zzdqaVar, zzayqVar, a2, a3, zzbfjVar, zzgywVar, this.g.a(), (zzdrm) this.h.zzb(), (zzdua) this.i.zzb(), (ScheduledExecutorService) this.j.zzb(), (zzdxe) this.k.zzb(), (zzfpi) this.l.zzb(), (zzehu) this.m.zzb(), (zzdsv) this.n.zzb(), (zzeif) this.o.zzb(), (zzfio) this.p.zzb(), (zzdwy) this.q.zzb(), (zzdyh) this.r.zzb());
    }
}
