package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhut implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhut f8809a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhuv.f8811a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PrivateKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqe L = zzhqe.L(zzhzlVar, zziab.f8905c);
                if (L.D() == 0) {
                    zzhqg E = L.E();
                    if (E.D() == 0) {
                        BigInteger bigInteger = new BigInteger(1, E.F().E());
                        int bitLength = bigInteger.bitLength();
                        BigInteger bigInteger2 = new BigInteger(1, E.G().E());
                        BigInteger bigInteger3 = zzhsw.e;
                        zzhst zzhstVar = new zzhst();
                        zzhstVar.f8740c = (zzhsu) zzhuv.h.b(E.E().D());
                        zzhstVar.b = bigInteger2;
                        zzhstVar.a(bitLength);
                        zzhstVar.d = (zzhsv) zzhuv.g.b(zzhjzVar.e);
                        zzhsw b = zzhstVar.b();
                        zzhsz zzhszVar = new zzhsz();
                        zzhszVar.f8751a = b;
                        zzhszVar.b = bigInteger;
                        zzhszVar.f8752c = zzhjzVar.f;
                        zzhta a2 = zzhszVar.a();
                        zzhsx zzhsxVar = new zzhsx();
                        zzhsxVar.f8747a = a2;
                        zzhxd b2 = zzhuv.b(L.G());
                        zzhxd b3 = zzhuv.b(L.H());
                        zzhsxVar.f8748c = b2;
                        zzhsxVar.d = b3;
                        zzhsxVar.b = zzhuv.b(L.F());
                        zzhxd b4 = zzhuv.b(L.I());
                        zzhxd b5 = zzhuv.b(L.J());
                        zzhsxVar.e = b4;
                        zzhsxVar.f = b5;
                        zzhsxVar.g = zzhuv.b(L.K());
                        return zzhsxVar.a();
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing RsaSsaPkcs1PrivateKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(str)));
    }
}
