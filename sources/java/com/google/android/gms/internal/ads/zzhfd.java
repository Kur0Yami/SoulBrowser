package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfd implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfd f8489a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhff.f8491a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnk G = zzhnk.G(zzhzlVar, zziab.f8905c);
                if (G.D() == 0) {
                    zzhbz zzhbzVar = new zzhbz();
                    zzhbzVar.a(G.F().k());
                    zzhbzVar.b(G.E().D());
                    zzhbzVar.c();
                    zzhbzVar.d = zzhff.b(zzhjzVar.e);
                    zzhcb d = zzhbzVar.d();
                    zzhbu zzhbuVar = new zzhbu();
                    zzhbuVar.f8360a = d;
                    zzhbuVar.b = zzhxe.a(G.F().E());
                    zzhbuVar.f8361c = zzhjzVar.f;
                    return zzhbuVar.a();
                }
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            } catch (zzibg unused) {
                throw new GeneralSecurityException("Parsing AesEaxcKey failed");
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
    }
}
