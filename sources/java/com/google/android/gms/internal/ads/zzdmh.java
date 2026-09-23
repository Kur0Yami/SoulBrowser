package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdmh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5905a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdmk f5906c;
    public final zzdmn d;
    public final zzdoe e;
    public final zzijp f;
    public final zzijf g;
    public final zzijf h;
    public final zzijf i;
    public final zzcwb j;
    public final zzijp k;
    public final zzdab l;
    public final zzijf m;
    public final zzijf n;
    public final zzijp o;
    public final zzijf p;
    public final zzijp q;
    public final zzijp r;
    public final zzijp s;
    public final zzijf t;
    public final zzijp u;
    public final zzijf v;
    public final zzijf w;
    public final zzijf x;
    public final zzijf y;

    public zzdmh(zzijf zzijfVar, zzdlt zzdltVar, zzdmk zzdmkVar, zzdmn zzdmnVar, zzdoe zzdoeVar, zzijf zzijfVar2, zzijf zzijfVar3, zzijf zzijfVar4, zzijf zzijfVar5, zzcwb zzcwbVar, zzcmg zzcmgVar, zzdab zzdabVar, zzijf zzijfVar6, zzijf zzijfVar7, zzijf zzijfVar8, zzijf zzijfVar9, zzijf zzijfVar10, zzijf zzijfVar11, zzijf zzijfVar12, zzijf zzijfVar13, zzijf zzijfVar14, zzijf zzijfVar15, zzijf zzijfVar16, zzijf zzijfVar17, zzijf zzijfVar18) {
        this.f5905a = zzijfVar;
        this.b = zzdltVar;
        this.f5906c = zzdmkVar;
        this.d = zzdmnVar;
        this.e = zzdoeVar;
        this.f = zzijfVar2;
        this.g = zzijfVar3;
        this.h = zzijfVar4;
        this.i = zzijfVar5;
        this.j = zzcwbVar;
        this.k = zzcmgVar;
        this.l = zzdabVar;
        this.m = zzijfVar6;
        this.n = zzijfVar7;
        this.o = zzijfVar8;
        this.p = zzijfVar9;
        this.q = zzijfVar10;
        this.r = zzijfVar11;
        this.s = zzijfVar12;
        this.t = zzijfVar13;
        this.u = zzijfVar14;
        this.v = zzijfVar15;
        this.w = zzijfVar16;
        this.x = zzijfVar17;
        this.y = zzijfVar18;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context context = (Context) this.f5905a.zzb();
        zzdnw zzdnwVar = ((zzdlt) this.b).f5891a.f5888a;
        zzijo.a(zzdnwVar);
        JSONObject jSONObject = this.f5906c.f5910a.f5907a;
        zzijo.a(jSONObject);
        zzdsp zzdspVar = this.d.f5913a.b;
        zzijo.a(zzdspVar);
        zzdnm a2 = this.e.a();
        zzayq zzayqVar = (zzayq) this.f.zzb();
        zzdbc zzdbcVar = (zzdbc) this.g.zzb();
        zzdai zzdaiVar = (zzdai) this.h.zzb();
        zzdip zzdipVar = (zzdip) this.i.zzb();
        zzfhr a3 = this.j.a();
        VersionInfoParcel a4 = ((zzcmg) this.k).a();
        zzfik a5 = this.l.a();
        zzcrx zzcrxVar = (zzcrx) this.m.zzb();
        zzdor zzdorVar = (zzdor) this.n.zzb();
        Clock clock = (Clock) this.o.zzb();
        zzdil zzdilVar = (zzdil) this.p.zzb();
        zzfpi zzfpiVar = (zzfpi) this.q.zzb();
        zzfno zzfnoVar = (zzfno) this.r.zzb();
        zzeif zzeifVar = (zzeif) this.s.zzb();
        zzduf zzdufVar = (zzduf) this.t.zzb();
        zzdon zzdonVar = (zzdon) this.u.zzb();
        zzdcz zzdczVar = (zzdcz) this.v.zzb();
        com.google.android.gms.ads.internal.zzb zzbVar = (com.google.android.gms.ads.internal.zzb) this.w.zzb();
        return new zzdmg(context, zzdnwVar, jSONObject, zzdspVar, a2, zzayqVar, zzdbcVar, zzdaiVar, zzdipVar, a3, a4, a5, zzcrxVar, zzdorVar, clock, zzdilVar, zzfpiVar, zzfnoVar, zzeifVar, zzdufVar, zzdonVar, zzdczVar, zzbVar, (zzcze) this.y.zzb());
    }
}
