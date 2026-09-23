package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhly implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhly f8664a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhma.f8666a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhmu G = zzhmu.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    zzhks zzhksVar = new zzhks();
                    zzhksVar.a(G.E().k());
                    zzhksVar.b(G.F().D());
                    zzhksVar.f8628c = zzhma.b(zzhjzVar.e);
                    zzhku c2 = zzhksVar.c();
                    zzhkm zzhkmVar = new zzhkm();
                    zzhkmVar.f8618a = c2;
                    zzhkmVar.b = zzhxe.a(G.E().E());
                    zzhkmVar.f8619c = zzhjzVar.f;
                    return zzhkmVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing AesCmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
    }
}
