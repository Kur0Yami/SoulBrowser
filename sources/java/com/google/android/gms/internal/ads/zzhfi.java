package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfi implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfi f8494a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhfm.f8498a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhns F = zzhns.F(E, zziab.f8905c);
                if (F.E() == 0) {
                    zzhci zzhciVar = new zzhci();
                    zzhciVar.a(F.D());
                    zzhciVar.b();
                    zzhciVar.c();
                    zzhciVar.d = zzhfm.b(zzhpdVar.F());
                    return zzhciVar.d();
                }
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
