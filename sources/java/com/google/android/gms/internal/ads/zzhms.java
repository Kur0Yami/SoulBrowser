package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Provider;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhms implements zzhmn {

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8678a;
    public final Provider b;

    public zzhms(byte[] bArr, Provider provider) {
        if (zzhhb.a(1)) {
            this.f8678a = new SecretKeySpec(bArr, "AES");
            this.b = provider;
            return;
        }
        throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode, as BoringCrypto module is not available");
    }

    @Override // com.google.android.gms.internal.ads.zzhmn
    public final byte[] a(byte[] bArr, int i) {
        if (i <= 16) {
            Mac mac = Mac.getInstance("AESCMAC", this.b);
            mac.init(this.f8678a);
            byte[] doFinal = mac.doFinal(bArr);
            if (i == doFinal.length) {
                return doFinal;
            }
            return Arrays.copyOf(doFinal, i);
        }
        throw new InvalidAlgorithmParameterException("outputLength must not be larger than 16");
    }
}
