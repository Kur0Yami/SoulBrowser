package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhvd implements zzhjk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhvd f8823a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjk
    public final zzhka a(zzhan zzhanVar) {
        zzhti zzhtiVar = (zzhti) zzhanVar;
        zzhjl zzhjlVar = zzhve.f8824a;
        zzhpc H = zzhpd.H();
        H.o("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
        zzhqh H2 = zzhqi.H();
        zzhqk a2 = zzhve.a(zzhtiVar);
        H2.k();
        ((zzhqi) H2.f).I(a2);
        int i = zzhtiVar.f8767a;
        H2.k();
        ((zzhqi) H2.f).J(i);
        byte[] a3 = zzhhe.a(zzhtiVar.b);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(a3, 0, a3.length);
        H2.k();
        ((zzhqi) H2.f).K(B);
        H.p(((zzhqi) H2.m()).b());
        H.q((zzhpw) zzhve.g.a(zzhtiVar.f8768c));
        return zzhka.a((zzhpd) H.m());
    }
}
