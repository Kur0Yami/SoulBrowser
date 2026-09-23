package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhgm implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgm f8525a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhgo.f8527a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqq G = zzhqq.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    if (G.F().k() == 32) {
                        return zzhej.d(zzheo.b(zzhgo.b(zzhjzVar.e), G.E().D()), zzhxe.a(G.F().E()), zzhjzVar.f);
                    }
                    throw new GeneralSecurityException("Only 32 byte key size is accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing XAesGcmKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseKey");
    }
}
