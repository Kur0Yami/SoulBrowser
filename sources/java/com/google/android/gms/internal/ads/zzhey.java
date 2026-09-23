package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhey implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhey f8481a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhfa.f8485a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhna G = zzhna.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    if (G.E().D() == 0) {
                        if (G.F().D() == 0) {
                            zzhbq zzhbqVar = new zzhbq();
                            zzhbqVar.a(G.E().F().k());
                            zzhbqVar.b(G.F().F().k());
                            zzhbqVar.c(G.E().E().D());
                            zzhbqVar.d(G.F().E().E());
                            zzhbqVar.e = zzhfa.c(G.F().E().D());
                            zzhbqVar.f = zzhfa.b(zzhjzVar.e);
                            zzhbt e = zzhbqVar.e();
                            zzhbk zzhbkVar = new zzhbk();
                            zzhbkVar.f8343a = e;
                            zzhbkVar.b = zzhxe.a(G.E().F().E());
                            zzhbkVar.f8344c = zzhxe.a(G.F().F().E());
                            zzhbkVar.d = zzhjzVar.f;
                            return zzhbkVar.a();
                        }
                        throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
                    }
                    throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
    }
}
