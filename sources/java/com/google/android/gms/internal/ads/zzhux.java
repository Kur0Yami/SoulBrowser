package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhux implements zzhaq {
    public static final byte[] f = new byte[0];
    public static final byte[] g = {0};

    /* renamed from: a, reason: collision with root package name */
    public final RSAPublicKey f8815a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8816c;
    public final byte[] d;
    public final Provider e;

    public zzhux(RSAPublicKey rSAPublicKey, zzhsu zzhsuVar, byte[] bArr, byte[] bArr2, Provider provider) {
        if (zzhhb.a(2)) {
            zzhxa.c(rSAPublicKey.getModulus().bitLength());
            zzhxa.d(rSAPublicKey.getPublicExponent());
            this.f8815a = rSAPublicKey;
            this.b = b(zzhsuVar);
            this.f8816c = bArr;
            this.d = bArr2;
            this.e = provider;
            return;
        }
        throw new GeneralSecurityException("Can not use RSA-PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
    }

    public static String b(zzhsu zzhsuVar) {
        if (zzhsuVar == zzhsu.b) {
            return "SHA256withRSA";
        }
        if (zzhsuVar == zzhsu.f8741c) {
            return "SHA384withRSA";
        }
        if (zzhsuVar == zzhsu.d) {
            return "SHA512withRSA";
        }
        throw new GeneralSecurityException("unknown hash type");
    }

    public static zzhux c(zzhta zzhtaVar, Provider provider) {
        byte[] bArr;
        KeyFactory keyFactory = KeyFactory.getInstance("RSA", provider);
        BigInteger bigInteger = zzhtaVar.b;
        zzhsw zzhswVar = zzhtaVar.f8754a;
        RSAPublicKey rSAPublicKey = (RSAPublicKey) keyFactory.generatePublic(new RSAPublicKeySpec(bigInteger, zzhswVar.b));
        zzhsu zzhsuVar = zzhswVar.d;
        byte[] b = zzhtaVar.f8755c.b();
        if (zzhswVar.f8746c.equals(zzhsv.d)) {
            bArr = g;
        } else {
            bArr = f;
        }
        return new zzhux(rSAPublicKey, zzhsuVar, b, bArr, provider);
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.f8816c;
        if (zzhkl.c(bArr3, bArr)) {
            Signature signature = Signature.getInstance(this.b, this.e);
            signature.initVerify(this.f8815a);
            signature.update(bArr2);
            byte[] bArr4 = this.d;
            if (bArr4.length > 0) {
                signature.update(bArr4);
            }
            try {
                if (signature.verify(Arrays.copyOfRange(bArr, bArr3.length, bArr.length))) {
                    return;
                }
            } catch (RuntimeException unused) {
            }
            throw new GeneralSecurityException("Invalid signature");
        }
        throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
    }
}
