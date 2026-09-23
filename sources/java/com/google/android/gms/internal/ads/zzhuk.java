package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhuk {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8798a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8799c;
    public static final zzhid d;
    public static final zzhig e;
    public static final zzhid f;
    public static final zzhhs g;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey");
        zzhxc a3 = zzhkl.a("type.googleapis.com/google.crypto.tink.Ed25519PublicKey");
        f8798a = new zzhjj(zzhro.class, zzhuj.f8797a);
        b = new zzhjg(a2, zzhue.f8792a);
        f8799c = new zzhie(zzhrv.class, zzhuf.f8793a);
        d = new zzhib(a3, zzhug.f8794a);
        e = new zzhie(zzhrp.class, zzhuh.f8795a);
        f = new zzhib(a2, zzhui.f8796a);
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhpw.RAW, zzhrn.e);
        zzhhrVar.a(zzhpw.TINK, zzhrn.b);
        zzhhrVar.a(zzhpw.CRUNCHY, zzhrn.f8705c);
        zzhhrVar.a(zzhpw.LEGACY, zzhrn.d);
        g = zzhhrVar.b();
    }

    public static zzhop a(zzhrv zzhrvVar) {
        zzhoo G = zzhop.G();
        byte[] b2 = zzhrvVar.b.b();
        zzhzl B = zzhzl.B(b2, 0, b2.length);
        G.k();
        ((zzhop) G.f).J(B);
        return (zzhop) G.m();
    }
}
