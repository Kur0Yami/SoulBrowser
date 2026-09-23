package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhui implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhui f8796a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhuk.f8798a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhon G = zzhon.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    zzhop F = G.F();
                    if (F.D() == 0) {
                        return zzhrp.d(zzhrv.d((zzhrn) zzhuk.g.b(zzhjzVar.e), zzhxc.a(F.E().E()), zzhjzVar.f), zzhxe.a(G.E().E()));
                    }
                    throw new GeneralSecurityException("Only version 0 keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing Ed25519PrivateKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parsePrivateKey: ".concat(String.valueOf(str)));
    }
}
