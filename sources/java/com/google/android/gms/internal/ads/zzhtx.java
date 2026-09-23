package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtx implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtx f8784a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhub.f8788a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.EcdsaPublicKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhoi H = zzhoi.H(zzhzlVar, zziab.f8905c);
                if (H.D() == 0) {
                    zzhqz zzhqzVar = new zzhqz();
                    zzhqzVar.f8683c = zzhub.b(H.E().D());
                    zzhqzVar.f8682a = zzhub.h(H.E().I());
                    zzhqzVar.b = zzhub.g(H.E().H());
                    zzhqzVar.d = zzhub.c(zzhjzVar.e);
                    zzhre a2 = zzhqzVar.a();
                    zzhrh zzhrhVar = new zzhrh();
                    zzhrhVar.f8696a = a2;
                    zzhrhVar.b = new ECPoint(new BigInteger(1, H.F().E()), new BigInteger(1, H.G().E()));
                    zzhrhVar.f8697c = zzhjzVar.f;
                    return zzhrhVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing EcdsaPublicKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parsePublicKey: ".concat(String.valueOf(str)));
    }
}
