package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhtv implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhtv f8782a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhub.f8788a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhoc E2 = zzhoc.E(E, zziab.f8905c);
                zzhqz zzhqzVar = new zzhqz();
                zzhqzVar.f8683c = zzhub.b(E2.D().D());
                zzhqzVar.f8682a = zzhub.h(E2.D().I());
                zzhqzVar.b = zzhub.g(E2.D().H());
                zzhqzVar.d = zzhub.c(zzhpdVar.F());
                return zzhqzVar.a();
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing EcdsaParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to EcdsaProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
