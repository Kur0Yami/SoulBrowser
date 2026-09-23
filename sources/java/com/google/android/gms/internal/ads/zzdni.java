package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdni implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcxr f5935a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdoe f5936c;
    public final zzijg d;
    public final zzdom e;
    public final zzijp f;
    public final zzijp g;
    public final zzijf h;
    public final zzijf i;
    public final zzijf j;
    public final zzijf k;
    public final zzijf l;
    public final zzdoc m;
    public final zzijp n;
    public final zzijp o;
    public final zzijp p;
    public final zzijf q;
    public final zzijf r;
    public final zzijp s;

    public zzdni(zzcxr zzcxrVar, zzijf zzijfVar, zzdoe zzdoeVar, zzijg zzijgVar, zzdom zzdomVar, zzijp zzijpVar, zzdlt zzdltVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5, zzijf zzijfVar6, zzdoc zzdocVar, zzijf zzijfVar7, zzcmg zzcmgVar, zzclp zzclpVar, zzijf zzijfVar8, zzijf zzijfVar9, zzijf zzijfVar10) {
        this.f5935a = zzcxrVar;
        this.b = zzijfVar;
        this.f5936c = zzdoeVar;
        this.d = zzijgVar;
        this.e = zzdomVar;
        this.f = zzijpVar;
        this.g = zzdltVar;
        this.h = zzijfVar2;
        this.i = zzijfVar3;
        this.j = zzijfVar4;
        this.k = zzijfVar5;
        this.l = zzijfVar6;
        this.m = zzdocVar;
        this.n = zzijfVar7;
        this.o = zzcmgVar;
        this.p = zzclpVar;
        this.q = zzijfVar8;
        this.r = zzijfVar9;
        this.s = zzijfVar10;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzcvj zzb = this.f5935a.zzb();
        Executor executor = (Executor) this.b.zzb();
        zzdnm a2 = this.f5936c.a();
        zzdnu zzdnuVar = (zzdnu) this.d.zzb();
        zzdol zzb2 = this.e.zzb();
        zzdnr zzdnrVar = (zzdnr) this.f.zzb();
        zzdnw zzdnwVar = ((zzdlt) this.g).f5891a.f5888a;
        zzijo.a(zzdnwVar);
        zzija b = zzijf.b(this.h);
        zzija b2 = zzijf.b(this.i);
        zzija b3 = zzijf.b(this.j);
        zzija b4 = zzijf.b(this.k);
        zzija b5 = zzijf.b(this.l);
        zzdoc zzdocVar = this.m;
        zzcbt zzcbtVar = new zzcbt(((zzclp) zzdocVar.f5955a).a(), zzdocVar.b.a().g);
        zzayq zzayqVar = (zzayq) this.n.zzb();
        VersionInfoParcel a3 = ((zzcmg) this.o).a();
        Context a4 = ((zzclp) this.p).a();
        zzdnj zzdnjVar = (zzdnj) this.q.zzb();
        zzeqs zzeqsVar = (zzeqs) this.r.zzb();
        return new zzdnh(zzb, executor, a2, zzdnuVar, zzb2, zzdnrVar, zzdnwVar, b, b2, b3, b4, b5, zzcbtVar, zzayqVar, a3, a4, zzdnjVar, zzeqsVar);
    }
}
