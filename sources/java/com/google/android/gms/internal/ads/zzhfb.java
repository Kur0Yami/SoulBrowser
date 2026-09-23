package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhfb implements zzhjh {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhfb f8487a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjh
    public final zzhan a(zzhka zzhkaVar) {
        zzhjl zzhjlVar = zzhff.f8491a;
        zzhpd zzhpdVar = zzhkaVar.b;
        if (zzhpdVar.D().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            try {
                zzhzl E = zzhpdVar.E();
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhnm F = zzhnm.F(E, zziab.f8905c);
                zzhbz zzhbzVar = new zzhbz();
                zzhbzVar.a(F.E());
                zzhbzVar.b(F.D().D());
                zzhbzVar.c();
                zzhbzVar.d = zzhff.b(zzhpdVar.F());
                return zzhbzVar.d();
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zzhpdVar.D())));
    }
}
