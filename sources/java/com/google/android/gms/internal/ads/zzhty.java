package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhty implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhty f8785a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhrg zzhrgVar = (zzhrg) zzgzxVar;
        zzhjl zzhjlVar = zzhub.f8788a;
        int d = zzhub.d(zzhrgVar.f8695a.f8698a.b);
        zzhof H = zzhog.H();
        zzhri zzhriVar = zzhrgVar.f8695a;
        zzhoi f = zzhub.f(zzhriVar);
        H.k();
        ((zzhog) H.f).J(f);
        byte[] b = zzhhe.b(zzhrgVar.b.f8864a, d);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhog) H.f).K(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey", ((zzhog) H.m()).b(), zzhoz.ASYMMETRIC_PRIVATE, zzhub.a(zzhriVar.f8698a.d), zzhriVar.d);
    }
}
