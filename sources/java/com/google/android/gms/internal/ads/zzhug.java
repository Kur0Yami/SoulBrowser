package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhug implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhug f8794a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhuk.f8798a;
        String str = zzhjzVar.f8605a;
        if (str.equals("type.googleapis.com/google.crypto.tink.Ed25519PublicKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhop F = zzhop.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    return zzhrv.d((zzhrn) zzhuk.g.b(zzhjzVar.e), zzhxc.a(F.E().E()), zzhjzVar.f);
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing Ed25519PublicKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parsePublicKey: ".concat(String.valueOf(str)));
    }
}
