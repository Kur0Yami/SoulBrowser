package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhup implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhup f8805a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhuv.f8811a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqa G = zzhqa.G(E, zziab.f8905c);
                BigInteger bigInteger = zzhsw.e;
                zzhst zzhstVar = new zzhst();
                zzhstVar.f8740c = (zzhsu) zzhuv.h.b(G.D().D());
                zzhstVar.b = new BigInteger(1, G.F().E());
                zzhstVar.a(G.E());
                zzhstVar.d = (zzhsv) zzhuv.g.b(zzhpdVar.F());
                return zzhstVar.b();
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing RsaSsaPkcs1Parameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
