package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfx implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfx f8512a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhfz.f8514a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhny F = zzhny.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    return zzhcu.d(zzhfz.b(zzhjzVar.e), zzhxe.a(F.E().E()), zzhjzVar.f);
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
    }
}
