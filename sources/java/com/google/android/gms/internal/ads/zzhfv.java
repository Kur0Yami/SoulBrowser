package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfv implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfv f8510a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhfz.f8514a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhoa.D(E, zziab.f8905c);
                return new zzhcz(zzhfz.b(zzhpdVar.F()));
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
