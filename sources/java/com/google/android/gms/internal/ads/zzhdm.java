package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhdm implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhdm f8428a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhdo.f8430a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.KmsAeadKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhpp F = zzhpp.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    return zzhdh.d(new zzhdj(F.E().D(), zzhdo.b(zzhjzVar.e)), zzhjzVar.f);
                }
                String valueOf = String.valueOf(F);
                StringBuilder sb = new StringBuilder(valueOf.length() + 49);
                sb.append("KmsAeadKey are only accepted with version 0, got ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing KmsAeadKey failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey");
    }
}
