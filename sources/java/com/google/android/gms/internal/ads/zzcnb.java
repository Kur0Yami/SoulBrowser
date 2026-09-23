package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzcnb extends zzctd {

    /* renamed from: a, reason: collision with root package name */
    public final zzctj f5287a;
    public final zzcwa b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcmv f5288c;
    public final zzcnd d;
    public final zzijf e;
    public final zzijf f;
    public final zzijf g;
    public final zzijf h;
    public final zzijf i;
    public final zzijf j;
    public final zzijf k;
    public final zzijf l;
    public final zzijf m;
    public final zzijf n;
    public final zzijf o;
    public final zzijf p;
    public final zzijf q;
    public final zzijf r;
    public final zzijf s;
    public final zzijf t;
    public final zzijf u;
    public final zzijf v;
    public final zzijf w;
    public final zzije x;
    public final zzijf y;
    public final zzijf z;

    /* JADX WARN: Type inference failed for: r6v43, types: [com.google.android.gms.internal.ads.zzije, java.lang.Object] */
    public zzcnb(zzcmv zzcmvVar, zzcnd zzcndVar, zzcwa zzcwaVar, zzctj zzctjVar) {
        this.f5288c = zzcmvVar;
        this.d = zzcndVar;
        this.f5287a = zzctjVar;
        this.b = zzcwaVar;
        zzcwb zzcwbVar = new zzcwb(zzcwaVar);
        zzijf zzijfVar = zzcndVar.j;
        zzijf a2 = zzijf.a(new zzczh(zzcwbVar, zzijfVar));
        zzijf a3 = zzijf.a(new zzcyn(a2));
        zzijf a4 = zzijf.a(new zzcsc(zzcmvVar.H0));
        zzijf a5 = zzijf.a(new zzcsi(zzcwbVar));
        zzcmg zzcmgVar = zzcmvVar.j;
        zzcuo zzcuoVar = zzcun.f5484a;
        zzijf a6 = zzijf.a(new zzcsb(zzcmgVar, a5, zzcuoVar));
        zzclp zzclpVar = zzcmvVar.h;
        zzijf a7 = zzijf.a(new zzcry(a4, zzijf.a(new zzcru(zzclpVar, a6)), zzcmvVar.d, zzijf.a(new zzcrz(a6, a4)), zzcmvVar.g));
        this.e = a7;
        zzijf a8 = zzijf.a(new zzcsd(a7, a5));
        zzcua zzcuaVar = new zzcua(zzctjVar);
        zzdul zzdulVar = new zzdul(new zzduj(zzcuaVar));
        int i = zzijs.f9008c;
        zzijr zzijrVar = new zzijr(2, 3);
        zzijrVar.b(zzcndVar.u);
        zzijrVar.b(zzcndVar.v);
        zzijrVar.a(a3);
        zzijrVar.b(a8);
        zzijrVar.a(zzdulVar);
        zzijf a9 = zzijf.a(new zzdbk(zzijrVar.c()));
        this.f = a9;
        zzijf a10 = zzijf.a(zzdfc.f5756a);
        this.g = a10;
        zzijf zzijfVar2 = zzcmvVar.d;
        zzijf a11 = zzijf.a(new zzcxz(a10, zzijfVar2));
        zzcwe zzcweVar = new zzcwe(zzcwaVar);
        zzcwd zzcwdVar = new zzcwd(zzcwaVar);
        zzclp zzclpVar2 = zzcmvVar.h;
        zzijf a12 = zzijf.a(new zzejd(zzclpVar2));
        zzijf a13 = zzijf.a(zzdug.f6153a);
        zzijf a14 = zzijf.a(new zzcrb(zzclpVar2, zzcmvVar.Z, a12, a13, zzcmvVar.F0, zzcmvVar.e));
        zzijf a15 = zzijf.a(new zzfiy(zzcmvVar.K, zzcmvVar.J, zzcwbVar, zzcwdVar, a14, zzcndVar.l));
        zzctl zzctlVar = new zzctl(zzctjVar);
        zzijf a16 = zzijf.a(new zzcyg(a10, zzijfVar2));
        zzijr zzijrVar2 = new zzijr(1, 1);
        zzijrVar2.b(zzcndVar.A);
        zzijrVar2.a(a16);
        zzijf a17 = zzijf.a(new zzdda(zzijrVar2.c(), zzcwbVar, zzcweVar));
        zzijf a18 = zzijf.a(new zzczf(zzcweVar));
        this.h = a18;
        zzijf a19 = zzijf.a(new zzcrn(zzcmvVar.h, zzcmvVar.d, zzcmvVar.e, zzcweVar, zzcwbVar, zzcndVar.p, a15, zzctlVar, zzcuaVar, zzcmvVar.G, zzcndVar.q, zzcndVar.l, zzcndVar.z, a17, a18, zzcndVar.k));
        this.i = a19;
        zzcxe zzcxeVar = new zzcxe(a19);
        zzcyw zzcywVar = new zzcyw(zzijf.a(new zzcrd(zzcwbVar, zzcmvVar.X)));
        zzijr zzijrVar3 = new zzijr(4, 2);
        zzijrVar3.a(zzcndVar.w);
        zzijrVar3.b(zzcndVar.x);
        zzijrVar3.b(zzcndVar.y);
        zzijrVar3.a(a11);
        zzijrVar3.a(zzcxeVar);
        zzijrVar3.a(zzcywVar);
        zzijf a20 = zzijf.a(new zzdbs(zzijrVar3.c()));
        this.j = a20;
        zzijf a21 = zzijf.a(new zzdwj(zzcmvVar.h, zzcmvVar.E0, zzcmvVar.l, zzcweVar, zzcwbVar, zzcmvVar.I, zzcuoVar));
        zzijf a22 = zzijf.a(new zzcyk(a21));
        zzijf a23 = zzijf.a(new zzcxy(a10, zzijfVar2));
        zzijf a24 = zzijf.a(new zzcyi(zzijf.a(new zzcxl(zzcmvVar.A0, zzcndVar.f))));
        zzcxd zzcxdVar = new zzcxd(a19);
        zzijr zzijrVar4 = new zzijr(5, 3);
        zzijrVar4.a(zzcndVar.B);
        zzijrVar4.a(zzcndVar.C);
        zzijrVar4.b(zzcndVar.D);
        zzijrVar4.b(zzcndVar.E);
        zzijrVar4.a(a22);
        zzijrVar4.a(a23);
        zzijrVar4.b(a24);
        zzijrVar4.a(zzcxdVar);
        zzijf a25 = zzijf.a(new zzdaj(zzijrVar4.c()));
        this.k = a25;
        zzclp zzclpVar3 = zzcmvVar.h;
        zzcmg zzcmgVar2 = zzcmvVar.j;
        zzijf zzijfVar3 = zzcmvVar.l;
        zzijf a26 = zzijf.a(new zzeja(zzclpVar3, zzcmgVar2, zzcwbVar, zzcuaVar, zzijfVar3));
        this.l = a26;
        zzijf a27 = zzijf.a(new zzcuy(zzclpVar3, zzcuaVar, zzcwbVar, zzcmgVar2, a26));
        this.m = a27;
        zzctu zzctuVar = new zzctu(a27);
        zzctq zzctqVar = new zzctq(new zzcuf(zzcuaVar, zzijfVar3, zzcwbVar));
        zzijf a28 = zzijf.a(new zzcyl(a21));
        zzijf a29 = zzijf.a(new zzcyc(a10, zzijfVar2));
        zzcwh zzcwhVar = new zzcwh(a17);
        zzcxg zzcxgVar = new zzcxg(a19);
        zzijf a30 = zzijf.a(new zzcsa(a7, a5));
        zzijr zzijrVar5 = new zzijr(8, 3);
        zzijrVar5.a(zzcndVar.F);
        zzijrVar5.a(zzcndVar.G);
        zzijrVar5.b(zzcndVar.H);
        zzijrVar5.b(zzcndVar.I);
        zzijrVar5.a(zzctuVar);
        zzijrVar5.a(zzctqVar);
        zzijrVar5.a(a28);
        zzijrVar5.a(a29);
        zzijrVar5.a(zzcwhVar);
        zzijrVar5.a(zzcxgVar);
        zzijrVar5.b(a30);
        zzijf a31 = zzijf.a(new zzdbd(zzijrVar5.c()));
        this.n = a31;
        zzcxj zzcxjVar = new zzcxj(a19);
        zzijr zzijrVar6 = new zzijr(1, 1);
        zzijrVar6.b(zzcndVar.J);
        zzijrVar6.a(zzcxjVar);
        zzijf a32 = zzijf.a(new zzdih(zzijrVar6.c()));
        this.o = a32;
        zzcxc zzcxcVar = new zzcxc(zzijf.a(new zzdiw(zzcwbVar, zzcmvVar.K)));
        zzijr zzijrVar7 = new zzijr(1, 1);
        zzijrVar7.b(zzcndVar.K);
        zzijrVar7.a(zzcxcVar);
        zzijf a33 = zzijf.a(new zzdiu(zzijrVar7.c()));
        this.p = a33;
        zzijf a34 = zzijf.a(new zzcym(a10, zzijfVar2));
        zzijr zzijrVar8 = new zzijr(1, 1);
        zzijrVar8.b(zzcndVar.L);
        zzijrVar8.a(a34);
        zzijf a35 = zzijf.a(new zzdiq(zzijrVar8.c()));
        this.q = a35;
        zzijf a36 = zzijf.a(new zzcyd(a10, zzijfVar2));
        zzcwi zzcwiVar = new zzcwi(a17);
        zzijr zzijrVar9 = new zzijr(2, 1);
        zzijrVar9.b(zzcndVar.S);
        zzijrVar9.a(a36);
        zzijrVar9.a(zzcwiVar);
        zzijf a37 = zzijf.a(new zzdci(zzijrVar9.c()));
        zzijf a38 = zzijf.a(new zzcyh(a21));
        zzcxi zzcxiVar = new zzcxi(a19);
        zzijr zzijrVar10 = new zzijr(2, 1);
        zzijrVar10.b(zzcndVar.T);
        zzijrVar10.a(a38);
        zzijrVar10.a(zzcxiVar);
        zzijf a39 = zzijf.a(new zzcva(zzcwbVar, a31, a37, zzijf.a(new zzdde(zzijrVar10.c()))));
        this.r = a39;
        zzijf a40 = zzijf.a(new zzcyo(a2));
        this.s = a40;
        zzcyf zzcyfVar = new zzcyf(zzijf.a(new zzcwg(a20)));
        zzijf a41 = zzijf.a(new zzcye(a10, zzijfVar2));
        zzijr zzijrVar11 = new zzijr(2, 1);
        zzijrVar11.b(zzcndVar.V);
        zzijrVar11.a(zzcyfVar);
        zzijrVar11.a(a41);
        zzijf a42 = zzijf.a(new zzdcw(zzijrVar11.c()));
        this.t = a42;
        zzijr zzijrVar12 = new zzijr(0, 1);
        zzijrVar12.b(zzcndVar.W);
        this.u = zzijf.a(new zzdjo(zzijrVar12.c()));
        zzcto zzctoVar = new zzcto(a39);
        zzijf a43 = zzijf.a(new zzcyj(a21));
        zzijr zzijrVar13 = new zzijr(1, 1);
        zzijrVar13.b(zzctoVar);
        zzijrVar13.a(a43);
        this.v = zzijf.a(new zzdfl(zzijrVar13.c()));
        zzijf a44 = zzijf.a(new zzcyb(a10, zzijfVar2));
        zzcxf zzcxfVar = new zzcxf(a19);
        zzijr zzijrVar14 = new zzijr(2, 1);
        zzijrVar14.b(zzcndVar.X);
        zzijrVar14.a(a44);
        zzijrVar14.a(zzcxfVar);
        zzday zzdayVar = new zzday(zzijrVar14.c());
        zzijf a45 = zzijf.a(new zzcya(a21));
        zzijr zzijrVar15 = new zzijr(1, 0);
        zzijrVar15.a(a45);
        this.w = zzijf.a(new zzdaz(zzdayVar, zzijrVar15.c(), zzcmvVar.e));
        zzctt zzcttVar = new zzctt(zzctjVar, a39);
        zzctv zzctvVar = new zzctv(zzctjVar, a27);
        zzcts zzctsVar = new zzcts(zzctjVar, zzcndVar.j, zzcmvVar.j, zzcwbVar, zzcndVar.f);
        zzcxh zzcxhVar = new zzcxh(a19);
        zzijr zzijrVar16 = new zzijr(9, 5);
        zzijrVar16.a(zzcndVar.M);
        zzijrVar16.b(zzcndVar.N);
        zzijrVar16.a(zzcndVar.O);
        zzijrVar16.a(zzcndVar.P);
        zzijrVar16.b(zzcndVar.Z);
        zzijrVar16.b(zzcndVar.a0);
        zzijrVar16.b(zzcndVar.b0);
        zzijrVar16.a(zzcndVar.Q);
        zzijrVar16.a(zzcndVar.R);
        zzijrVar16.b(zzcttVar);
        zzijrVar16.a(zzctvVar);
        zzijrVar16.a(zzctsVar);
        zzijrVar16.a(a40);
        zzijrVar16.a(zzcxhVar);
        zzctk zzctkVar = new zzctk(zzctjVar, zzijrVar16.c());
        zzdae zzdaeVar = new zzdae(zzcwbVar, new zzcwc(zzcwaVar), zzcndVar.o, zzcwdVar, zzcndVar.g);
        zzijr zzijrVar17 = new zzijr(1, 1);
        zzijrVar17.b(zzcndVar.d0);
        zzijrVar17.a(zzcndVar.e0);
        zzcxr zzcxrVar = new zzcxr(zzcweVar, zzcwbVar, a9, zzctkVar, zzcndVar.c0, zzdaeVar, a10, new zzdcb(zzijrVar17.c()), a32, a18, zzcmvVar.p0);
        zzctm zzctmVar = new zzctm(zzctjVar);
        zzctn zzctnVar = new zzctn(zzctjVar);
        ?? obj = new Object();
        this.x = obj;
        zzijf zzijfVar4 = zzcndVar.j;
        zzctp zzctpVar = new zzctp(new zzctg(zzcxrVar, zzijfVar4, zzctmVar, zzctlVar, zzcuaVar, zzctnVar, zzcndVar.f0, a33, obj, zzcmvVar.d));
        zzdlr zzdlrVar = zzcndVar.Y;
        zzdab zzdabVar = zzcndVar.f;
        zzepq zzepqVar = new zzepq(zzijfVar4, zzdlrVar, zzdabVar, zzctpVar, zzcmvVar.l);
        if (obj.f9003a == null) {
            obj.f9003a = zzepqVar;
            zzctw zzctwVar = new zzctw(a39);
            zzcty zzctyVar = new zzcty(zzijf.a(new zzcvh(new zzctx(zzclpVar, zzdabVar))));
            zzctr zzctrVar = new zzctr(new zzcuv(zzcuaVar, zzijfVar2));
            zzijf a46 = zzijf.a(new zzcse(a7, a5));
            zzijr zzijrVar18 = new zzijr(1, 4);
            zzijrVar18.b(zzcndVar.h0);
            zzijrVar18.b(zzctwVar);
            zzijrVar18.a(zzctyVar);
            zzijrVar18.b(zzctrVar);
            zzijrVar18.b(a46);
            zzijf a47 = zzijf.a(new zzdim(zzijfVar, zzijrVar18.c(), zzcwbVar));
            this.y = a47;
            zzijf a48 = zzijf.a(new zzdag(zzijfVar, zzcmgVar, zzcwbVar));
            zzijf a49 = zzijf.a(new zzcxt(zzijfVar, a48));
            zzctz zzctzVar = new zzctz(zzcndVar.r);
            zzijr zzijrVar19 = new zzijr(1, 1);
            zzijrVar19.b(zzcndVar.i0);
            zzijrVar19.a(zzctzVar);
            zzijf a50 = zzijf.a(new zzdfg(zzijrVar19.c()));
            zzijf zzijfVar5 = zzcmvVar.g;
            zzijf zzijfVar6 = zzcmvVar.l;
            this.z = zzijf.a(new zzdub(a25, a20, zzcndVar.g0, a42, zzcndVar.U, zzcmvVar.d, a47, a7, a49, a48, zzcmvVar.G, a50, zzcmvVar.I, zzcmvVar.K, zzijfVar6, a35, a14, a13, zzcmvVar.p0, zzijf.a(new zzczk(zzcweVar, zzcwbVar, zzijfVar5, zzijfVar6, zzcmvVar.e)), a18));
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.ads.zzcvl
    public final zzdbj a() {
        return (zzdbj) this.f.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcvl
    public final zzdbc c() {
        return (zzdbc) this.n.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcvl
    public final zzeok e() {
        return new zzeok((zzdai) this.k.zzb(), (zzdip) this.q.zzb(), (zzdbc) this.n.zzb(), (zzdbr) this.j.zzb(), j(), (zzdfo) this.d.U.zzb(), (zzdcv) this.t.zzb(), (zzdjn) this.u.zzb(), (zzdfk) this.v.zzb(), (zzdax) this.w.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcvl
    public final zzeoe f() {
        return new zzeoe((zzdai) this.k.zzb(), (zzdip) this.q.zzb(), (zzdbc) this.n.zzb(), (zzdbr) this.j.zzb(), j(), (zzdfo) this.d.U.zzb(), (zzdcv) this.t.zzb(), (zzdjn) this.u.zzb(), (zzdfk) this.v.zzb(), (zzdax) this.w.zzb());
    }

    /* JADX WARN: Type inference failed for: r8v3, types: [com.google.android.gms.internal.ads.zzdca, com.google.android.gms.internal.ads.zzdgi] */
    @Override // com.google.android.gms.internal.ads.zzctd
    public final zzctc g() {
        zzcwa zzcwaVar = this.b;
        zzfic zzficVar = zzcwaVar.f5524a;
        zzijo.a(zzficVar);
        zzfhr zzfhrVar = zzcwaVar.b;
        zzijo.a(zzfhrVar);
        zzdbj zzdbjVar = (zzdbj) this.f.zzb();
        zzdbw j = j();
        zzcnd zzcndVar = this.d;
        zzdgk zzdgkVar = zzcndVar.f5291a;
        zzfdr zzfdrVar = zzdgkVar.o;
        zzdad zzdadVar = new zzdad(zzfhrVar, zzcwaVar.f5525c, (zzejl) zzcndVar.o.zzb(), zzcwaVar.a(), (String) zzcndVar.g.zzb());
        zzdfb zzdfbVar = (zzdfb) this.g.zzb();
        zzgtm w = zzgtn.w(2);
        w.g(zzdgkVar.g);
        zzdzy zzdzyVar = (zzdzy) zzcndVar.i.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        w.f(new zzdij(zzdzyVar, zzgywVar));
        ?? zzdgiVar = new zzdgi(w.h());
        zzdig zzdigVar = (zzdig) this.o.zzb();
        zzcze zzczeVar = (zzcze) this.h.zzb();
        zzcmv zzcmvVar = this.f5288c;
        zzcvj zzcvjVar = new zzcvj(zzficVar, zzfhrVar, zzdbjVar, j, zzfdrVar, zzdadVar, zzdfbVar, zzdgiVar, zzdigVar, zzczeVar, (zzdyh) zzcmvVar.p0.zzb());
        Context context = (Context) zzcndVar.j.zzb();
        zzctj zzctjVar = this.f5287a;
        zzfhs zzfhsVar = zzctjVar.f5455c;
        zzijo.a(zzfhsVar);
        View view = zzctjVar.b;
        zzijo.a(view);
        zzcir zzcirVar = zzctjVar.d;
        zzcvi zzcviVar = zzctjVar.f5454a;
        zzdnw zzdnwVar = zzcndVar.f5292c.f5888a;
        zzijo.a(zzdnwVar);
        return new zzctf(zzcvjVar, context, zzfhsVar, view, zzcirVar, zzcviVar, zzdnwVar, (zzdit) this.p.zzb(), zzijf.b(this.x), (Executor) zzcmvVar.d.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzctd
    public final zzdtz h() {
        return (zzdtz) this.z.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzctd
    public final zzdil i() {
        return (zzdil) this.y.zzb();
    }

    public final zzdbw j() {
        zzgtm w = zzgtn.w(14);
        zzcnd zzcndVar = this.d;
        w.f((zzdij) zzcndVar.M.zzb());
        w.g((Iterable) zzcndVar.N.zzb());
        w.f((zzdij) zzcndVar.O.zzb());
        w.f((zzdij) zzcndVar.P.zzb());
        zzdyd zzdydVar = (zzdyd) zzcndVar.h.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        Set a2 = zzdxt.a(zzdydVar, zzgywVar);
        zzijo.a(a2);
        w.g(a2);
        w.g(zzcndVar.f5291a.f);
        Set set = Collections.EMPTY_SET;
        zzijo.a(set);
        w.g(set);
        w.f((zzdij) zzcndVar.Q.zzb());
        w.f((zzdij) zzcndVar.R.zzb());
        zzcuz zzcuzVar = (zzcuz) this.r.zzb();
        zzgyw zzgywVar2 = zzcdo.g;
        Set singleton = Collections.singleton(new zzdij(zzcuzVar, zzgywVar2));
        zzijo.a(singleton);
        w.g(singleton);
        w.f(new zzdij((zzcux) this.m.zzb(), zzcdo.f));
        Context context = (Context) zzcndVar.j.zzb();
        zzczt zzcztVar = zzcndVar.b;
        VersionInfoParcel versionInfoParcel = this.f5288c.b.f5244a;
        zzijo.a(versionInfoParcel);
        zzfhr zzfhrVar = this.b.b;
        zzijo.a(zzfhrVar);
        zzfik zzfikVar = zzcztVar.b;
        zzijo.a(zzfikVar);
        w.f(new zzdij(new zzcti(context, versionInfoParcel, zzfhrVar, zzfikVar), zzgywVar2));
        w.f((zzdij) this.s.zzb());
        w.f(new zzdij((zzcrm) this.i.zzb(), zzgywVar));
        return this.f5287a.a(w.h());
    }
}
