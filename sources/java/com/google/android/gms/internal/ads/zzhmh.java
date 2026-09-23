package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhmh implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhmh f8670a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhhs zzhhsVar = zzhmj.f8672a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhot G = zzhot.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    zzhlf zzhlfVar = new zzhlf();
                    zzhlfVar.a(G.F().k());
                    zzhlfVar.b(G.E().E());
                    zzhlfVar.f8646c = (zzhlg) zzhmj.b.b(G.E().D());
                    zzhlfVar.d = (zzhlh) zzhmj.f8672a.b(zzhjzVar.e);
                    zzhli c2 = zzhlfVar.c();
                    zzhky zzhkyVar = new zzhky();
                    zzhkyVar.f8634a = c2;
                    zzhkyVar.b = zzhxe.a(G.F().E());
                    zzhkyVar.f8635c = zzhjzVar.f;
                    return zzhkyVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg | IllegalArgumentException unused) {
                throw new GeneralSecurityException("Parsing HmacKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
    }
}
