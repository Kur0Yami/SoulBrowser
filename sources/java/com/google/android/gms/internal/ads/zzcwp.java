package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzcwp implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzedh f5541a;
    public final zzdab b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f5542c;
    public final zzcpp d;
    public final zzemz e;
    public final zzijf f;
    public final zzijh g;
    public final zzees h;
    public final zzczp i;
    public final zzeed j;
    public final zzijf k;

    public zzcwp(zzedh zzedhVar, zzdab zzdabVar, zzijf zzijfVar, zzcpp zzcppVar, zzemz zzemzVar, zzijf zzijfVar2, zzijh zzijhVar, zzees zzeesVar, zzczp zzczpVar, zzeed zzeedVar, zzijf zzijfVar3) {
        this.f5541a = zzedhVar;
        this.b = zzdabVar;
        this.f5542c = zzijfVar;
        this.d = zzcppVar;
        this.e = zzemzVar;
        this.f = zzijfVar2;
        this.g = zzijhVar;
        this.h = zzeesVar;
        this.i = zzczpVar;
        this.j = zzeedVar;
        this.k = zzijfVar3;
    }

    /* JADX WARN: Type inference failed for: r12v0, types: [com.google.android.gms.internal.ads.zzddo, com.google.android.gms.internal.ads.zzdgi] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzedg zzb = this.f5541a.zzb();
        zzfik a2 = this.b.a();
        zzfmu zzfmuVar = (zzfmu) this.f5542c.zzb();
        zzcpp zzcppVar = this.d;
        zzcpo zzcpoVar = new zzcpo(zzcppVar.f5354a.zzb(), zzcppVar.b.zzb());
        zzemy zzb2 = this.e.zzb();
        zzdfz zzdfzVar = (zzdfz) this.f.zzb();
        zzfic zzficVar = (zzfic) this.g.f9006a;
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        zzees zzeesVar = this.h;
        zzeer zzeerVar = new zzeer(zzgywVar, zzeesVar.f6431a.zzb(), zzijf.b(zzeesVar.b));
        zzczo zzb3 = this.i.zzb();
        zzijo.a(zzgywVar);
        zzeed zzeedVar = this.j;
        Map map = zzeedVar.f6417a.f9002a;
        zzijo.a(zzgywVar);
        return new zzcwo(zzb, a2, zzfmuVar, zzcpoVar, zzb2, zzdfzVar, zzficVar, zzeerVar, zzb3, zzgywVar, new zzeec(map, zzgywVar, new zzdgi(zzeedVar.b.f5716a.zzb())), (zzejl) this.k.zzb());
    }
}
