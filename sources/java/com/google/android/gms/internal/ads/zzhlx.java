package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhlx implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhlx f8663a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhkn zzhknVar = (zzhkn) zzgzxVar;
        zzhjl zzhjlVar = zzhma.f8666a;
        zzhmt H = zzhmu.H();
        zzhku zzhkuVar = zzhknVar.f8620a;
        zzhmx E = zzhmy.E();
        int i = zzhkuVar.b;
        E.k();
        ((zzhmy) E.f).G(i);
        zzhmy zzhmyVar = (zzhmy) E.m();
        H.k();
        ((zzhmu) H.f).K(zzhmyVar);
        byte[] b = zzhknVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhmu) H.f).J(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzhmu) H.m()).b(), zzhoz.SYMMETRIC, zzhma.a(zzhknVar.f8620a.f8632c), zzhknVar.d);
    }
}
