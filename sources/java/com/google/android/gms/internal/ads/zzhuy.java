package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhuy implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhuy f8817a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhve.f8824a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqi G = zzhqi.G(E, zziab.f8905c);
                BigInteger bigInteger = zzhti.g;
                zzhtf zzhtfVar = new zzhtf();
                zzhhs zzhhsVar = zzhve.h;
                zzhtfVar.f8762c = (zzhtg) zzhhsVar.b(G.D().D());
                zzhtfVar.d = (zzhtg) zzhhsVar.b(G.D().E());
                zzhtfVar.b = new BigInteger(1, G.F().E());
                zzhtfVar.a(G.E());
                zzhtfVar.b(G.D().F());
                zzhtfVar.f = (zzhth) zzhve.g.b(zzhpdVar.F());
                return zzhtfVar.c();
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing RsaSsaPssParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
