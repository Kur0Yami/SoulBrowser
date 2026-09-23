package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhmf implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhmf f8668a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhhs zzhhsVar = zzhmj.f8672a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhov G = zzhov.G(E, zziab.f8905c);
                if (G.F() == 0) {
                    zzhlf zzhlfVar = new zzhlf();
                    zzhlfVar.a(G.E());
                    zzhlfVar.b(G.D().E());
                    zzhlfVar.f8646c = (zzhlg) zzhmj.b.b(G.D().D());
                    zzhlfVar.d = (zzhlh) zzhmj.f8672a.b(zzhpdVar.F());
                    return zzhlfVar.c();
                }
                int F = G.F();
                throw new GeneralSecurityException(androidx.work.impl.workers.a.r(F, "Parsing HmacParameters failed: unknown Version ", new StringBuilder(String.valueOf(F).length() + 47)));
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing HmacParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
