package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhgr implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgr f8532a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhep zzhepVar = (zzhep) zzgzxVar;
        zzhjl zzhjlVar = zzhgu.f8535a;
        zzhqv G = zzhqw.G();
        byte[] b = zzhepVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        G.k();
        ((zzhqw) G.f).I(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((zzhqw) G.m()).b(), zzhoz.SYMMETRIC, zzhgu.a(zzhepVar.f8469a.f8478a), zzhepVar.d);
    }
}
