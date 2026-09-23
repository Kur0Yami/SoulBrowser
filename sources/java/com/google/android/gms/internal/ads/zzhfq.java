package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfq implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfq f8503a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhcm zzhcmVar = (zzhcm) zzgzxVar;
        zzhjl zzhjlVar = zzhft.f8506a;
        zzhnt G = zzhnu.G();
        byte[] b = zzhcmVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        G.k();
        ((zzhnu) G.f).I(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((zzhnu) G.m()).b(), zzhoz.SYMMETRIC, zzhft.a(zzhcmVar.f8391a.b), zzhcmVar.d);
    }
}
