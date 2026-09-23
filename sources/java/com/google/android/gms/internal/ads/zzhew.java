package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhew implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhew f8479a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhfa.f8485a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnc F = zzhnc.F(E, zziab.f8905c);
                if (F.E().F() == 0) {
                    zzhbq zzhbqVar = new zzhbq();
                    zzhbqVar.a(F.D().E());
                    zzhbqVar.b(F.E().E());
                    zzhbqVar.c(F.D().D().D());
                    zzhbqVar.d(F.E().D().E());
                    zzhbqVar.e = zzhfa.c(F.E().D().D());
                    zzhbqVar.f = zzhfa.b(zzhpdVar.F());
                    return zzhbqVar.e();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
