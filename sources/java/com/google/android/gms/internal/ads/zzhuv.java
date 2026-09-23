package com.google.android.gms.internal.ads;

import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzhuv {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8811a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8812c;
    public static final zzhid d;
    public static final zzhig e;
    public static final zzhid f;
    public static final zzhhs g;
    public static final zzhhs h;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey");
        zzhxc a3 = zzhkl.a("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey");
        f8811a = new zzhjj(zzhsw.class, zzhuu.f8810a);
        b = new zzhjg(a2, zzhup.f8805a);
        f8812c = new zzhie(zzhta.class, zzhuq.f8806a);
        d = new zzhib(a3, zzhur.f8807a);
        e = new zzhie(zzhsy.class, zzhus.f8808a);
        f = new zzhib(a2, zzhut.f8809a);
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhpw.RAW, zzhsv.e);
        zzhhrVar.a(zzhpw.TINK, zzhsv.b);
        zzhhrVar.a(zzhpw.CRUNCHY, zzhsv.f8743c);
        zzhhrVar.a(zzhpw.LEGACY, zzhsv.d);
        g = zzhhrVar.b();
        zzhhr zzhhrVar2 = new zzhhr();
        zzhhrVar2.a(zzhor.SHA256, zzhsu.b);
        zzhhrVar2.a(zzhor.SHA384, zzhsu.f8741c);
        zzhhrVar2.a(zzhor.SHA512, zzhsu.d);
        h = zzhhrVar2.b();
    }

    public static zzhqg a(zzhta zzhtaVar) {
        zzhqf I = zzhqg.I();
        zzhsw zzhswVar = zzhtaVar.f8754a;
        zzhqb E = zzhqc.E();
        zzhor zzhorVar = (zzhor) h.a(zzhswVar.d);
        E.k();
        ((zzhqc) E.f).G(zzhorVar);
        zzhqc zzhqcVar = (zzhqc) E.m();
        I.k();
        ((zzhqg) I.f).L(zzhqcVar);
        byte[] a2 = zzhhe.a(zzhtaVar.b);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(a2, 0, a2.length);
        I.k();
        ((zzhqg) I.f).M(B);
        byte[] a3 = zzhhe.a(zzhtaVar.f8754a.b);
        zzhzl B2 = zzhzl.B(a3, 0, a3.length);
        I.k();
        ((zzhqg) I.f).N(B2);
        return (zzhqg) I.m();
    }

    public static zzhxd b(zzhzl zzhzlVar) {
        return new zzhxd(new BigInteger(1, zzhzlVar.E()));
    }
}
