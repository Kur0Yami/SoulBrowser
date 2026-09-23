package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhgs implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgs f8533a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhgu.f8535a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqw F = zzhqw.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    return zzhep.d(zzhgu.b(zzhjzVar.e), zzhxe.a(F.E().E()), zzhjzVar.f);
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
    }
}
