package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
final class zzcob extends com.google.android.gms.ads.nonagon.signalgeneration.zzac {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5333a;
    public final zzijf b;

    /* JADX WARN: Type inference failed for: r7v2, types: [com.google.android.gms.internal.ads.zzijb, com.google.android.gms.internal.ads.zzijj] */
    public zzcob(zzcmv zzcmvVar, com.google.android.gms.ads.nonagon.signalgeneration.zzay zzayVar, zzczt zzcztVar) {
        zzclp zzclpVar = zzcmvVar.h;
        zzecm zzecmVar = new zzecm(zzclpVar);
        zzijf a2 = zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzaz.zza(zzayVar));
        zzijf a3 = zzijf.a(zzeco.f6371a);
        zzijf a4 = zzijf.a(new zzdvd(zzclpVar, zzecmVar, zzcmvVar.j, a2, a3));
        zzijf a5 = zzijf.a(zzdvk.f6183a);
        zzijf a6 = zzijf.a(zzdvm.f6184a);
        int i = zzijk.b;
        ?? zzijbVar = new zzijb(2);
        zzijbVar.a(zzfmo.SIGNALS, a5);
        zzijbVar.a(zzfmo.RENDERER, a6);
        zzijf a7 = zzijf.a(new zzdvo(new zzdwh(a4, zzijbVar.c())));
        zzdab zzdabVar = new zzdab(zzcztVar);
        zzijf a8 = zzijf.a(new zzecl(zzdabVar));
        zzijf a9 = zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzba.zza(zzayVar));
        zzijf a10 = zzijf.a(new zzdwz(zzcmvVar.h, zzcmvVar.k, zzcmvVar.X, zzdabVar, a8, a9, zzcmvVar.G));
        int i2 = zzijs.f9008c;
        zzijr zzijrVar = new zzijr(2, 0);
        zzijrVar.a(zzdwu.f6217a);
        zzijrVar.a(zzdww.f6218a);
        zzijs c2 = zzijrVar.c();
        zzijf zzijfVar = zzcmvVar.g;
        zzijf a11 = zzijf.a(new zzdwt(zzijf.a(new zzdxi(a10, c2, zzijfVar))));
        zzdyc zzdycVar = new zzdyc(zzijf.a(new zzdye(zzcmvVar.Y, zzcmvVar.F)));
        zzijf a12 = zzijf.a(zzegs.f6488a);
        zzclp zzclpVar2 = zzcmvVar.h;
        zzijf a13 = zzijf.a(new zzegi(new zzehe(a12, new zzegw(new zzego(new zzegk(zzclpVar2), zzcmvVar.f), zzcmvVar.Z))));
        zzijr zzijrVar2 = new zzijr(2, 2);
        zzijrVar2.b(a7);
        zzijrVar2.a(a11);
        zzijrVar2.b(zzdycVar);
        zzijrVar2.a(a13);
        zzfmx zzfmxVar = new zzfmx(zzijrVar2.c());
        zzijf zzijfVar2 = zzcmvVar.e;
        zzijf a14 = zzijf.a(new zzfmw(zzijfVar2, zzfmxVar));
        zzclp zzclpVar3 = zzcmvVar.h;
        zzecu zzecuVar = new zzecu(zzijfVar2, new zzedt(zzclpVar3), new zzefx(zzclpVar3, zzcmvVar.T, new zzegf(zzcmvVar.U), zzcmvVar.V, zzcmvVar.v));
        zzflk zzflkVar = zzflj.f7458a;
        com.google.android.gms.ads.nonagon.signalgeneration.zzbi zzc = com.google.android.gms.ads.nonagon.signalgeneration.zzbi.zzc(zzflkVar, zzecuVar);
        zzijf a15 = zzijf.a(new zzczv(zzcztVar, zzclpVar3));
        zzijf a16 = zzijf.a(new zzecj(a14, a15));
        zzijf zzijfVar3 = zzcmvVar.c0;
        zzijf zzijfVar4 = zzcmvVar.W;
        zzevn zzevnVar = new zzevn(new zzesk(zzijfVar3, zzdabVar, zzclpVar3, zzijfVar4), zzijfVar2);
        zzewf zzewfVar = new zzewf(new zzeyd(zzclpVar3), zzijfVar2);
        zzijf zzijfVar5 = zzcmvVar.q;
        zzevo zzevoVar = new zzevo(new zzesu(zzijfVar5, zzcmvVar.w, zzcmvVar.d0), zzijfVar2);
        zzevx zzevxVar = new zzevx(new zzewr(zzclpVar3), zzijfVar2);
        zzeym zzeymVar = zzcmvVar.e0;
        zzijf zzijfVar6 = zzcmvVar.f0;
        zzijf zzijfVar7 = zzcmvVar.g0;
        zzewh zzewhVar = new zzewh(zzeymVar, zzijfVar6, zzijfVar7);
        zzevs zzevsVar = new zzevs(zzcmvVar.h0, zzcmvVar.i0, zzijfVar7, zzijfVar2);
        zzewk zzewkVar = new zzewk(zzcmvVar.j0, zzcmvVar.k0, zzijfVar7, zzijfVar2);
        zzewm zzewmVar = new zzewm(zzijfVar3, zzijfVar2);
        zzewn zzewnVar = new zzewn(zzcmvVar.l0, zzcmvVar.m0, zzijfVar7, zzijfVar2);
        zzevt zzevtVar = new zzevt(zzcmvVar.n0, zzijfVar2);
        zzewd zzewdVar = new zzewd(zzcmvVar.o0, zzijfVar7, zzijfVar2);
        zzewg zzewgVar = new zzewg(new zzeyh(zzcmvVar.p0), zzijfVar2);
        zzewj zzewjVar = new zzewj(new zzezj(zzclpVar3, zzcmvVar.x), zzijfVar2);
        zzevy zzevyVar = new zzevy(zzijfVar2);
        zzewe zzeweVar = new zzewe(new zzexv(zzcmvVar.q0), zzijfVar2);
        zzevq zzevqVar = new zzevq(zzcmvVar.r0, zzcmvVar.s0, zzijfVar7, zzijfVar2);
        zzewl zzewlVar = new zzewl(new zzezu(zzclpVar3), zzijfVar2);
        zzijh zzijhVar = zzijh.b;
        zzevu zzevuVar = new zzevu(new zzeuh(zzijhVar), zzijfVar2);
        zzevw zzevwVar = new zzevw(new zzeut(zzdabVar, zzcmvVar.y, a9), zzijfVar2);
        zzevv zzevvVar = new zzevv(zzijfVar2);
        zzewc zzewcVar = new zzewc(new zzexo(zzcmvVar.B), zzijfVar2);
        zzewa zzewaVar = new zzewa(new zzexd(zzdabVar), zzijfVar2);
        zzijf a17 = zzijf.a(new zzczz(zzcztVar));
        zzevm zzevmVar = new zzevm(new zzesa(zzdabVar, zzcmvVar.Q, a17), zzijfVar2);
        zzevl zzevlVar = new zzevl(zzcmvVar.t0, zzcmvVar.u0, zzijfVar7);
        zzcmg zzcmgVar = zzcmvVar.j;
        zzewi zzewiVar = new zzewi(new zzeyt(zzclpVar3, zzdabVar, zzcmgVar), zzijfVar2);
        zzevr zzevrVar = new zzevr(zzcmvVar.v0, zzcmvVar.w0, zzijfVar7, zzijfVar2);
        zzevz zzevzVar = new zzevz(new zzewz(zzclpVar3), zzclpVar3);
        zzewb zzewbVar = new zzewb(zzcmvVar.y0, zzcmvVar.z0, zzijfVar7, zzijfVar2);
        zzevp zzevpVar = new zzevp(new zzesy(zzclpVar3), zzijfVar2);
        zzcmj zzcmjVar = zzcmvVar.X;
        zzijf a18 = zzijf.a(new zzcxb(zzijfVar, zzijf.a(new zzcwx(zzijfVar, zzcmjVar, zzdabVar))));
        zzczy zzczyVar = new zzczy(a18);
        zzijf a19 = zzijf.a(new zzfjt(zzclpVar3, zzcmjVar));
        zzijf zzijfVar8 = zzcmvVar.t;
        zzijf zzijfVar9 = zzcmvVar.A0;
        zzijf zzijfVar10 = zzcmvVar.B0;
        zzetp zzetpVar = new zzetp(zzclpVar3, zzczyVar, zzijfVar8, a18, a19, zzdabVar, a10, zzijfVar9, zzijfVar10);
        zzerw zzerwVar = new zzerw(zzdabVar, zzijfVar, zzijfVar10);
        zzesn zzesnVar = new zzesn(zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbb.zza(zzayVar)));
        zzeyp zzeypVar = new zzeyp(new zzczw(zzcztVar));
        zzezq zzezqVar = new zzezq(zzijhVar);
        zzetc zzetcVar = new zzetc(zzdabVar, zzcmjVar);
        zzesf zzesfVar = new zzesf(zzijf.a(new zzeci(zzcmvVar.G, zzclpVar3, zzdabVar, zzijfVar10)), zzijfVar2);
        zzezf zzezfVar = new zzezf(zzijfVar2, a9, zzcmvVar.s, a15, zzdabVar, zzijf.a(new zzepg(zzijfVar5)), zzijfVar5, zzcmvVar.u, a17);
        zzeyw zzeywVar = new zzeyw(a8, a17);
        zzetm zzetmVar = new zzetm(zzclpVar3, zzijfVar4, zzijfVar2);
        zzfat zzfatVar = new zzfat(zzcmvVar.Z, zzclpVar3, zzijfVar2, new zzejf(zzclpVar3), zzdabVar, zzcmgVar);
        zzijr zzijrVar3 = new zzijr(39, 2);
        zzijrVar3.a(zzevnVar);
        zzijrVar3.a(zzewfVar);
        zzijrVar3.a(zzevoVar);
        zzijrVar3.a(zzevxVar);
        zzijrVar3.a(zzewhVar);
        zzijrVar3.a(zzevsVar);
        zzijrVar3.a(zzewkVar);
        zzijrVar3.a(zzewmVar);
        zzijrVar3.a(zzewnVar);
        zzijrVar3.a(zzevtVar);
        zzijrVar3.a(zzewdVar);
        zzijrVar3.a(zzewgVar);
        zzijrVar3.a(zzewjVar);
        zzijrVar3.a(zzevyVar);
        zzijrVar3.a(zzeweVar);
        zzijrVar3.a(zzevqVar);
        zzijrVar3.a(zzewlVar);
        zzijrVar3.a(zzevuVar);
        zzijrVar3.a(zzevwVar);
        zzijrVar3.b(zzevvVar);
        zzijrVar3.a(zzewcVar);
        zzijrVar3.a(zzewaVar);
        zzijrVar3.a(zzevmVar);
        zzijrVar3.a(zzevlVar);
        zzijrVar3.a(zzewiVar);
        zzijrVar3.a(zzevrVar);
        zzijrVar3.b(zzevzVar);
        zzijrVar3.a(zzewbVar);
        zzijrVar3.a(zzevpVar);
        zzijrVar3.a(zzetpVar);
        zzijrVar3.a(zzerwVar);
        zzijrVar3.a(zzesnVar);
        zzijrVar3.a(zzeypVar);
        zzijrVar3.a(zzezqVar);
        zzijrVar3.a(zzetcVar);
        zzijrVar3.a(zzesfVar);
        zzijrVar3.a(zzcmvVar.C0);
        zzijrVar3.a(zzezfVar);
        zzijrVar3.a(zzeywVar);
        zzijrVar3.a(zzetmVar);
        zzijrVar3.a(zzfatVar);
        zzijs c3 = zzijrVar3.c();
        zzijf a20 = zzijf.a(new zzfni(zzcmvVar.v));
        this.f5333a = a20;
        zzijf zzijfVar11 = zzcmvVar.l;
        zzfab zzfabVar = new zzfab(zzclpVar2, c3, a20, zzijfVar11);
        zzijf a21 = zzijf.a(new zzcwz(zzijf.a(new zzcxn(zzijfVar, zzcmvVar.A0, zzdabVar, a8))));
        zzijr zzijrVar4 = new zzijr(0, 1);
        zzijrVar4.b(a21);
        zzijf a22 = zzijf.a(new zzdge(zzijrVar4.c()));
        zzcmg zzcmgVar2 = zzcmvVar.j;
        zzijf zzijfVar12 = zzcmvVar.a0;
        zzijf zzijfVar13 = zzcmvVar.b0;
        zzclj zzcljVar = zzcmvVar.Z;
        zzczp zzczpVar = new zzczp(a14, zzcmgVar2, zzijfVar12, zzecmVar, zzijfVar13, a16, zzcljVar, a3, zzfabVar, zzdabVar, a22, a17);
        zzijf a23 = zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbe.zza(zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzx.zza(a10, zzcmvVar.P, a8, a17)), zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbm.zza(zzcmvVar.O0, a17, zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbc.zza(zzayVar)))), zzflkVar, a17));
        zzclp zzclpVar4 = zzcmvVar.h;
        zzijf a24 = zzijf.a(new zzcyv(zzijf.a(new zzcyq(zzclpVar4, zzdabVar, zzcmgVar2, zzcljVar, zzcmvVar.w, zzcmvVar.v, zzcmvVar.B))));
        zzijf a25 = zzijf.a(new zzcyt(zzcmvVar.C));
        zzijf a26 = zzijf.a(new zzdws(zzijf.a(new zzdwl(a10, zzcmvVar.k, a17))));
        zzijf a27 = zzijf.a(new zzech(zzijf.a(new zzebu(zzclpVar4, zzijfVar11))));
        zzijr zzijrVar5 = new zzijr(5, 0);
        zzijrVar5.a(a23);
        zzijrVar5.a(a24);
        zzijrVar5.a(a25);
        zzijrVar5.a(a26);
        zzijrVar5.a(a27);
        this.b = zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbf.zza(zzcmvVar.O, a14, zzc, zzczpVar, zzijf.a(new zzdjh(zzijrVar5.c())), zzcmvVar.O0, zzijf.a(com.google.android.gms.ads.nonagon.signalgeneration.zzbd.zza(zzayVar)), a17, zzdabVar));
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzac
    public final ListenableFuture zza() {
        return (ListenableFuture) this.b.zzb();
    }

    @Override // com.google.android.gms.ads.nonagon.signalgeneration.zzac
    public final zzfno zzb() {
        return (zzfno) this.f5333a.zzb();
    }
}
