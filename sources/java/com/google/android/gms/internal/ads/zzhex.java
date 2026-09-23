package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhex implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhex f8480a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhbl zzhblVar = (zzhbl) zzgzxVar;
        zzhjl zzhjlVar = zzhfa.f8485a;
        zzhmz H = zzhna.H();
        zzhnd G = zzhne.G();
        zzhnh E = zzhni.E();
        int i = zzhblVar.f8345a.f8359c;
        E.k();
        ((zzhni) E.f).G(i);
        zzhni zzhniVar = (zzhni) E.m();
        G.k();
        ((zzhne) G.f).I(zzhniVar);
        byte[] b = zzhblVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        G.k();
        ((zzhne) G.f).J(B);
        zzhne zzhneVar = (zzhne) G.m();
        H.k();
        ((zzhna) H.f).J(zzhneVar);
        zzhos H2 = zzhot.H();
        zzhbt zzhbtVar = zzhblVar.f8345a;
        zzhox d = zzhfa.d(zzhbtVar);
        H2.k();
        ((zzhot) H2.f).K(d);
        byte[] b2 = zzhblVar.f8346c.f8865a.b();
        zzhzl B2 = zzhzl.B(b2, 0, b2.length);
        H2.k();
        ((zzhot) H2.f).L(B2);
        zzhot zzhotVar = (zzhot) H2.m();
        H.k();
        ((zzhna) H.f).K(zzhotVar);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzhna) H.m()).b(), zzhoz.SYMMETRIC, zzhfa.a(zzhbtVar.e), zzhblVar.e);
    }
}
