package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhgl implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgl f8524a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhej zzhejVar = (zzhej) zzgzxVar;
        zzhjl zzhjlVar = zzhgo.f8527a;
        zzhqp H = zzhqq.H();
        byte[] b = zzhejVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhqq) H.f).J(B);
        zzhqt E = zzhqu.E();
        zzheo zzheoVar = zzhejVar.f8461a;
        int i = zzheoVar.b;
        E.k();
        ((zzhqu) E.f).G(i);
        zzhqu zzhquVar = (zzhqu) E.m();
        H.k();
        ((zzhqq) H.f).I(zzhquVar);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.XAesGcmKey", ((zzhqq) H.m()).b(), zzhoz.SYMMETRIC, zzhgo.a(zzheoVar.f8468a), zzhejVar.d);
    }
}
