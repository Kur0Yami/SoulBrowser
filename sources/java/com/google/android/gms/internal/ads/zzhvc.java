package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhvc implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhvc f8822a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhve.f8824a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqm L = zzhqm.L(zzhzlVar, zziab.f8905c);
                if (L.D() == 0) {
                    zzhqo E = L.E();
                    if (E.D() == 0) {
                        BigInteger bigInteger = new BigInteger(1, E.F().E());
                        int bitLength = bigInteger.bitLength();
                        BigInteger bigInteger2 = new BigInteger(1, E.G().E());
                        BigInteger bigInteger3 = zzhti.g;
                        zzhtf zzhtfVar = new zzhtf();
                        zzhhs zzhhsVar = zzhve.h;
                        zzhtfVar.f8762c = (zzhtg) zzhhsVar.b(E.E().D());
                        zzhtfVar.d = (zzhtg) zzhhsVar.b(E.E().E());
                        zzhtfVar.b = bigInteger2;
                        zzhtfVar.a(bitLength);
                        zzhtfVar.b(E.E().F());
                        zzhtfVar.f = (zzhth) zzhve.g.b(zzhjzVar.e);
                        zzhti c2 = zzhtfVar.c();
                        zzhtl zzhtlVar = new zzhtl();
                        zzhtlVar.f8773a = c2;
                        zzhtlVar.b = bigInteger;
                        zzhtlVar.f8774c = zzhjzVar.f;
                        zzhtm a2 = zzhtlVar.a();
                        zzhtj zzhtjVar = new zzhtj();
                        zzhtjVar.f8769a = a2;
                        zzhxd c3 = zzhve.c(L.G());
                        zzhxd c4 = zzhve.c(L.H());
                        zzhtjVar.f8770c = c3;
                        zzhtjVar.d = c4;
                        zzhtjVar.b = zzhve.c(L.F());
                        zzhxd c5 = zzhve.c(L.I());
                        zzhxd c6 = zzhve.c(L.J());
                        zzhtjVar.e = c5;
                        zzhtjVar.f = c6;
                        zzhtjVar.g = zzhve.c(L.K());
                        return zzhtjVar.a();
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing RsaSsaPssPrivateKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePrivateKey: ".concat(String.valueOf(str)));
    }
}
