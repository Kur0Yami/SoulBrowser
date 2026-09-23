package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdmb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5897a;
    public final zzdac b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdhf f5898c;
    public final zzdls d;
    public final zzijp e;
    public final zzijf f;

    public zzdmb(zzijp zzijpVar, zzdac zzdacVar, zzdhf zzdhfVar, zzdls zzdlsVar, zzijp zzijpVar2, zzijf zzijfVar) {
        this.f5897a = zzijpVar;
        this.b = zzdacVar;
        this.f5898c = zzdhfVar;
        this.d = zzdlsVar;
        this.e = zzijpVar2;
        this.f = zzijfVar;
    }

    /* JADX WARN: Type inference failed for: r1v12, types: [java.lang.Object, com.google.android.gms.internal.ads.zzena] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzclg zzclgVar = (zzclg) this.f5897a.zzb();
        zzczs a2 = this.b.f5649a.a();
        zzdgk zzdgkVar = this.f5898c.f5797a;
        zzdlq zzdlqVar = this.d.f5890a;
        zzddl zzb = ((zzctb) this.e).zzb();
        zzemr zzemrVar = (zzemr) this.f.zzb();
        zzcug k = zzclgVar.k();
        ((zzcnc) k).e = new zzczt(a2);
        zzcnc zzcncVar = (zzcnc) k;
        zzcncVar.d = zzdgkVar;
        zzcncVar.j = zzdlqVar;
        zzcncVar.f = new zzeow(null);
        zzcncVar.g = new zzcvc(zzb, null);
        zzcncVar.i = new zzcsz(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w4)).booleanValue()) {
            ?? obj = new Object();
            obj.f6708a = zzemrVar;
            zzcncVar.h = obj;
        }
        zzcvn zzcvnVar = (zzcvn) ((zzcnd) zzcncVar.zzh()).s.zzb();
        zzijo.a(zzcvnVar);
        return zzcvnVar;
    }
}
