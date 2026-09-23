package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfc implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfc f8488a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhbv zzhbvVar = (zzhbv) zzgzxVar;
        zzhjl zzhjlVar = zzhff.f8491a;
        zzhnj H = zzhnk.H();
        zzhcb zzhcbVar = zzhbvVar.f8362a;
        zzhnn E = zzhno.E();
        int i = zzhcbVar.b;
        E.k();
        ((zzhno) E.f).G(i);
        zzhno zzhnoVar = (zzhno) E.m();
        H.k();
        ((zzhnk) H.f).J(zzhnoVar);
        byte[] b = zzhbvVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhnk) H.f).K(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzhnk) H.m()).b(), zzhoz.SYMMETRIC, zzhff.a(zzhbvVar.f8362a.f8374c), zzhbvVar.d);
    }
}
