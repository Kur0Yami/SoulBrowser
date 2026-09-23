package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtz implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtz f8786a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhub.f8788a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhog G = zzhog.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    zzhoi E = G.E();
                    if (E.D() == 0) {
                        zzhqz zzhqzVar = new zzhqz();
                        zzhqzVar.f8683c = zzhub.b(E.E().D());
                        zzhqzVar.f8682a = zzhub.h(E.E().I());
                        zzhqzVar.b = zzhub.g(E.E().H());
                        zzhqzVar.d = zzhub.c(zzhjzVar.e);
                        zzhre a2 = zzhqzVar.a();
                        zzhrh zzhrhVar = new zzhrh();
                        zzhrhVar.f8696a = a2;
                        zzhrhVar.b = new ECPoint(new BigInteger(1, E.F().E()), new BigInteger(1, E.G().E()));
                        zzhrhVar.f8697c = zzhjzVar.f;
                        zzhri a3 = zzhrhVar.a();
                        zzhrf zzhrfVar = new zzhrf();
                        zzhrfVar.f8694a = a3;
                        zzhrfVar.b = new zzhxd(new BigInteger(1, G.F().E()));
                        return zzhrfVar.a();
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing EcdsaPrivateKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parsePrivateKey: ".concat(String.valueOf(str)));
    }
}
