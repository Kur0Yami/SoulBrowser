package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.interfaces.RSAPublicKey;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzhwt implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public final RSAPublicKey f8854a;
    public final zzhwl b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8855c;
    public final byte[] d;

    public /* synthetic */ zzhwt(RSAPublicKey rSAPublicKey, zzhwl zzhwlVar, byte[] bArr, byte[] bArr2) {
        if (!zzhhc.a()) {
            zzhxa.b(zzhwlVar);
            zzhxa.c(rSAPublicKey.getModulus().bitLength());
            zzhxa.d(rSAPublicKey.getPublicExponent());
            this.f8854a = rSAPublicKey;
            this.b = zzhwlVar;
            this.f8855c = bArr;
            this.d = bArr2;
            return;
        }
        throw new GeneralSecurityException("Conscrypt is not available, and we cannot use Java Implementation of RSA-PKCS1.5 in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.f8855c;
        int length = bArr3.length;
        if (length == 0) {
            b(bArr, bArr2);
        } else {
            if (zzhkl.c(bArr3, bArr)) {
                b(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
                return;
            }
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
    }

    public final void b(byte[] bArr, byte[] bArr2) {
        byte[] a2;
        int i;
        RSAPublicKey rSAPublicKey = this.f8854a;
        BigInteger publicExponent = rSAPublicKey.getPublicExponent();
        BigInteger modulus = rSAPublicKey.getModulus();
        int bitLength = (modulus.bitLength() + 7) / 8;
        if (bitLength == bArr.length) {
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.compareTo(modulus) < 0) {
                byte[] b = zzhhe.b(bigInteger.modPow(publicExponent, modulus), bitLength);
                zzhwl zzhwlVar = this.b;
                zzhxa.b(zzhwlVar);
                MessageDigest messageDigest = (MessageDigest) zzhwc.e.f8846a.zza(zzhwz.a(zzhwlVar));
                messageDigest.update(bArr2);
                byte[] bArr3 = this.d;
                if (bArr3.length != 0) {
                    messageDigest.update(bArr3);
                }
                byte[] digest = messageDigest.digest();
                int ordinal = zzhwlVar.ordinal();
                int i2 = 2;
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal == 4) {
                            a2 = zzhwm.a("3051300d060960864801650304020305000440");
                        } else {
                            throw new GeneralSecurityException("Unsupported hash ".concat(zzhwlVar.toString()));
                        }
                    } else {
                        a2 = zzhwm.a("3041300d060960864801650304020205000430");
                    }
                } else {
                    a2 = zzhwm.a("3031300d060960864801650304020105000420");
                }
                if (bitLength >= a2.length + digest.length + 11) {
                    byte[] bArr4 = new byte[bitLength];
                    bArr4[0] = 0;
                    bArr4[1] = 1;
                    int i3 = 0;
                    while (true) {
                        i = i2 + 1;
                        if (i3 >= (bitLength - r5) - 3) {
                            break;
                        }
                        bArr4[i2] = -1;
                        i3++;
                        i2 = i;
                    }
                    bArr4[i2] = 0;
                    int length = a2.length;
                    System.arraycopy(a2, 0, bArr4, i, length);
                    System.arraycopy(digest, 0, bArr4, i + length, digest.length);
                    if (MessageDigest.isEqual(b, bArr4)) {
                        return;
                    } else {
                        throw new GeneralSecurityException("invalid signature");
                    }
                }
                throw new GeneralSecurityException("intended encoded message length too short");
            }
            throw new GeneralSecurityException("signature out of range");
        }
        throw new GeneralSecurityException("invalid signature's length");
    }
}
