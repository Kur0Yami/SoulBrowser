package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhur implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhur f8807a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhuv.f8811a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqg H = zzhqg.H(zzhzlVar, zziab.f8905c);
                if (H.D() == 0) {
                    BigInteger bigInteger = new BigInteger(1, H.F().E());
                    int bitLength = bigInteger.bitLength();
                    BigInteger bigInteger2 = zzhsw.e;
                    zzhst zzhstVar = new zzhst();
                    zzhstVar.f8740c = (zzhsu) zzhuv.h.b(H.E().D());
                    zzhstVar.b = new BigInteger(1, H.G().E());
                    zzhstVar.a(bitLength);
                    zzhstVar.d = (zzhsv) zzhuv.g.b(zzhjzVar.e);
                    zzhsw b = zzhstVar.b();
                    zzhsz zzhszVar = new zzhsz();
                    zzhszVar.f8751a = b;
                    zzhszVar.b = bigInteger;
                    zzhszVar.f8752c = zzhjzVar.f;
                    return zzhszVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing RsaSsaPkcs1PublicKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPkcs1ProtoSerialization.parsePublicKey: ".concat(String.valueOf(str)));
    }
}
