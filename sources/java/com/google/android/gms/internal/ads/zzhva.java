package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhva implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhva f8820a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhve.f8824a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqo H = zzhqo.H(zzhzlVar, zziab.f8905c);
                if (H.D() == 0) {
                    BigInteger bigInteger = new BigInteger(1, H.F().E());
                    int bitLength = bigInteger.bitLength();
                    BigInteger bigInteger2 = zzhti.g;
                    zzhtf zzhtfVar = new zzhtf();
                    zzhhs zzhhsVar = zzhve.h;
                    zzhtfVar.f8762c = (zzhtg) zzhhsVar.b(H.E().D());
                    zzhtfVar.d = (zzhtg) zzhhsVar.b(H.E().E());
                    zzhtfVar.b = new BigInteger(1, H.G().E());
                    zzhtfVar.a(bitLength);
                    zzhtfVar.b(H.E().F());
                    zzhtfVar.f = (zzhth) zzhve.g.b(zzhjzVar.e);
                    zzhti c2 = zzhtfVar.c();
                    zzhtl zzhtlVar = new zzhtl();
                    zzhtlVar.f8773a = c2;
                    zzhtlVar.b = bigInteger;
                    zzhtlVar.f8774c = zzhjzVar.f;
                    return zzhtlVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing RsaSsaPssPublicKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to RsaSsaPssProtoSerialization.parsePublicKey: ".concat(String.valueOf(str)));
    }
}
