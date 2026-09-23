package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfw implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfw f8511a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhcu zzhcuVar = (zzhcu) zzgzxVar;
        zzhjl zzhjlVar = zzhfz.f8514a;
        zzhnx G = zzhny.G();
        byte[] b = zzhcuVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        G.k();
        ((zzhny) G.f).I(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((zzhny) G.m()).b(), zzhoz.SYMMETRIC, zzhfz.a(zzhcuVar.f8402a.f8410a), zzhcuVar.d);
    }
}
