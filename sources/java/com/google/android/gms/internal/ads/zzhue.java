package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhue implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhue f8792a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhuk.f8798a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.Ed25519PrivateKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                if (zzhol.E(E, zziab.f8905c).D() == 0) {
                    return new zzhro((zzhrn) zzhuk.g.b(zzhpdVar.F()));
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing Ed25519Parameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to Ed25519ProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
