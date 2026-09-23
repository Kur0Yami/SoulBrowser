package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfp implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfp f8502a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhft.f8506a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnw F = zzhnw.F(E, zziab.f8905c);
                if (F.E() == 0) {
                    zzhcr zzhcrVar = new zzhcr();
                    zzhcrVar.a(F.D());
                    zzhcrVar.b = zzhft.b(zzhpdVar.F());
                    return zzhcrVar.b();
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
