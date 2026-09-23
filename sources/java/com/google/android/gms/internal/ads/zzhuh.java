package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhuh implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhuh f8795a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhrp zzhrpVar = (zzhrp) zzgzxVar;
        zzhjl zzhjlVar = zzhuk.f8798a;
        zzhom H = zzhon.H();
        zzhop a2 = zzhuk.a(zzhrpVar.f8708a);
        H.k();
        ((zzhon) H.f).K(a2);
        byte[] b = zzhrpVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhon) H.f).J(B);
        zzhzl b2 = ((zzhon) H.m()).b();
        zzhhs zzhhsVar = zzhuk.g;
        zzhrv zzhrvVar = zzhrpVar.f8708a;
        return zzhjz.a("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey", b2, zzhoz.ASYMMETRIC_PRIVATE, (zzhpw) zzhhsVar.a(zzhrvVar.f8715a.f8707a), zzhrvVar.d);
    }
}
