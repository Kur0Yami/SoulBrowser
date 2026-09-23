package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhlw implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhlw f8662a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhma.f8666a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhmw F = zzhmw.F(E, zziab.f8905c);
                zzhks zzhksVar = new zzhks();
                zzhksVar.a(F.D());
                zzhksVar.b(F.E().D());
                zzhksVar.f8628c = zzhma.b(zzhpdVar.F());
                return zzhksVar.c();
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
