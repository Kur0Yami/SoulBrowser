package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhgk implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhgk f8523a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhgo.f8527a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.XAesGcmKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhqs F = zzhqs.F(E, zziab.f8905c);
                if (F.D() == 0) {
                    return zzheo.b(zzhgo.b(zzhpdVar.F()), F.E().D());
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing XAesGcmParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
