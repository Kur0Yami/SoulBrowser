package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public class zzhij implements zzgzy {

    /* renamed from: a, reason: collision with root package name */
    public final String f8572a;
    public final Class b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhoz f8573c;

    public zzhij(String str, Class cls, zzhoz zzhozVar) {
        this.f8572a = str;
        this.b = cls;
        this.f8573c = zzhozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final Object a(zzhzl zzhzlVar) {
        return ((zzhjw) zzhjb.b.f8588a.get()).a(zzhje.b.e(zzhjz.a(this.f8572a, zzhzlVar, this.f8573c, zzhpw.RAW, null)), this.b);
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final zzhpa b(zzhzl zzhzlVar) {
        zzhpc H = zzhpd.H();
        H.o(this.f8572a);
        H.p(zzhzlVar);
        H.q(zzhpw.RAW);
        zzhpd zzhpdVar = (zzhpd) H.m();
        zzhka zzhkaVar = new zzhka(zzhpdVar, zzhkl.b(zzhpdVar.D()));
        zzhje zzhjeVar = zzhje.b;
        zzhjz zzhjzVar = (zzhjz) zzhjeVar.f(zzhiv.f8581c.b(zzhjeVar.g(zzhkaVar), null));
        zzhoy G = zzhpa.G();
        String str = zzhjzVar.f8605a;
        G.k();
        ((zzhpa) G.f).I(str);
        zzhzl zzhzlVar2 = zzhjzVar.f8606c;
        G.k();
        ((zzhpa) G.f).J(zzhzlVar2);
        zzhoz zzhozVar = zzhjzVar.d;
        G.k();
        ((zzhpa) G.f).K(zzhozVar);
        return (zzhpa) G.m();
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final String zzb() {
        return this.f8572a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzy
    public final Class zzc() {
        return this.b;
    }
}
