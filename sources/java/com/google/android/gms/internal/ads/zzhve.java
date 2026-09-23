package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzhve {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8824a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8825c;
    public static final zzhid d;
    public static final zzhig e;
    public static final zzhid f;
    public static final zzhhs g;
    public static final zzhhs h;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey");
        zzhxc a3 = zzhkl.a("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey");
        f8824a = new zzhjj(zzhti.class, zzhvd.f8823a);
        b = new zzhjg(a2, zzhuy.f8817a);
        f8825c = new zzhie(zzhtm.class, zzhuz.f8818a);
        d = new zzhib(a3, zzhva.f8820a);
        e = new zzhie(zzhtk.class, zzhvb.f8821a);
        f = new zzhib(a2, zzhvc.f8822a);
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhpw.RAW, zzhth.e);
        zzhhrVar.a(zzhpw.TINK, zzhth.b);
        zzhhrVar.a(zzhpw.CRUNCHY, zzhth.f8765c);
        zzhhrVar.a(zzhpw.LEGACY, zzhth.d);
        g = zzhhrVar.b();
        zzhhr zzhhrVar2 = new zzhhr();
        zzhhrVar2.a(zzhor.SHA256, zzhtg.b);
        zzhhrVar2.a(zzhor.SHA384, zzhtg.f8763c);
        zzhhrVar2.a(zzhor.SHA512, zzhtg.d);
        h = zzhhrVar2.b();
    }

    public static zzhqk a(zzhti zzhtiVar) {
        zzhqj G = zzhqk.G();
        zzhtg zzhtgVar = zzhtiVar.d;
        zzhhs zzhhsVar = h;
        zzhor zzhorVar = (zzhor) zzhhsVar.a(zzhtgVar);
        G.k();
        ((zzhqk) G.f).I(zzhorVar);
        zzhor zzhorVar2 = (zzhor) zzhhsVar.a(zzhtiVar.e);
        G.k();
        ((zzhqk) G.f).J(zzhorVar2);
        int i = zzhtiVar.f;
        G.k();
        ((zzhqk) G.f).K(i);
        return (zzhqk) G.m();
    }

    public static zzhqo b(zzhtm zzhtmVar) {
        zzhqn I = zzhqo.I();
        zzhqk a2 = a(zzhtmVar.f8775a);
        I.k();
        ((zzhqo) I.f).M(a2);
        byte[] a3 = zzhhe.a(zzhtmVar.b);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(a3, 0, a3.length);
        I.k();
        ((zzhqo) I.f).N(B);
        byte[] a4 = zzhhe.a(zzhtmVar.f8775a.b);
        zzhzl B2 = zzhzl.B(a4, 0, a4.length);
        I.k();
        ((zzhqo) I.f).O(B2);
        I.k();
        ((zzhqo) I.f).L(0);
        return (zzhqo) I.m();
    }

    public static zzhxd c(zzhzl zzhzlVar) {
        return new zzhxd(new BigInteger(1, zzhzlVar.E()));
    }
}
