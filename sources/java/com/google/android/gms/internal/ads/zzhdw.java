package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhdw implements zzhic {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhdw f8444a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhic
    public final zzgzx a(zzhjz zzhjzVar) {
        zzhjl zzhjlVar = zzhdy.f8446a;
        if (zzhjzVar.f8605a.equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            try {
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                zziab zziabVar = zziab.b;
                int i = zzhyy.f8889a;
                zzhpt F = zzhpt.F(zzhzlVar, zziab.f8905c);
                if (F.D() == 0) {
                    return zzhdp.d(zzhdy.c(F.E(), zzhjzVar.e), zzhjzVar.f);
                }
                String valueOf = String.valueOf(F);
                StringBuilder sb = new StringBuilder(valueOf.length() + 58);
                sb.append("KmsEnvelopeAeadKeys are only accepted with version 0, got ");
                sb.append(valueOf);
                throw new GeneralSecurityException(sb.toString());
            } catch (zzibg e) {
                throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e);
            }
        }
        throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
    }
}
