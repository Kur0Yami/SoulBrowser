package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfr implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfr f8504a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhft.f8506a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnu F = zzhnu.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    zzhcr zzhcrVar = new zzhcr();
                    zzhcrVar.a(F.E().k());
                    zzhcrVar.b = zzhft.b(zzhjzVar.e);
                    zzhct b = zzhcrVar.b();
                    zzhcl zzhclVar = new zzhcl();
                    zzhclVar.f8389a = b;
                    zzhclVar.b = zzhxe.a(F.E().E());
                    zzhclVar.f8390c = zzhjzVar.f;
                    return zzhclVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
    }
}
