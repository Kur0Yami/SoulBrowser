package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzhmg implements zzhif {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhmg f8669a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhif
    public final zzhjz a(zzgzx zzgzxVar) {
        zzhkz zzhkzVar = (zzhkz) zzgzxVar;
        zzhhs zzhhsVar = zzhmj.f8672a;
        zzhos H = zzhot.H();
        zzhli zzhliVar = zzhkzVar.f8636a;
        zzhow F = zzhox.F();
        int i = zzhliVar.b;
        F.k();
        ((zzhox) F.f).I(i);
        zzhor zzhorVar = (zzhor) zzhmj.b.a(zzhliVar.d);
        F.k();
        ((zzhox) F.f).H(zzhorVar);
        zzhox zzhoxVar = (zzhox) F.m();
        H.k();
        ((zzhot) H.f).K(zzhoxVar);
        byte[] b = zzhkzVar.b.f8865a.b();
        zzhzl B = zzhzl.B(b, 0, b.length);
        H.k();
        ((zzhot) H.f).L(B);
        return zzhjz.a("type.googleapis.com/google.crypto.tink.HmacKey", ((zzhot) H.m()).b(), zzhoz.SYMMETRIC, (zzhpw) zzhmj.f8672a.a(zzhkzVar.f8636a.f8652c), zzhkzVar.d);
    }
}
