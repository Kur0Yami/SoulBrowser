package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhmj {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhhs f8672a;
    public static final zzhhs b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhjl f8673c;
    public static final zzhji d;
    public static final zzhig e;
    public static final zzhid f;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.HmacKey");
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhpw.RAW, zzhlh.e);
        zzhhrVar.a(zzhpw.TINK, zzhlh.b);
        zzhhrVar.a(zzhpw.LEGACY, zzhlh.d);
        zzhhrVar.a(zzhpw.CRUNCHY, zzhlh.f8649c);
        f8672a = zzhhrVar.b();
        zzhhr zzhhrVar2 = new zzhhr();
        zzhhrVar2.a(zzhor.SHA1, zzhlg.b);
        zzhhrVar2.a(zzhor.SHA224, zzhlg.f8647c);
        zzhhrVar2.a(zzhor.SHA256, zzhlg.d);
        zzhhrVar2.a(zzhor.SHA384, zzhlg.e);
        zzhhrVar2.a(zzhor.SHA512, zzhlg.f);
        b = zzhhrVar2.b();
        f8673c = new zzhjj(zzhli.class, zzhmi.f8671a);
        d = new zzhjg(a2, zzhmf.f8668a);
        e = new zzhie(zzhkz.class, zzhmg.f8669a);
        f = new zzhib(a2, zzhmh.f8670a);
    }
}
