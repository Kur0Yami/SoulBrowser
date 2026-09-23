package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.interfaces.RSAPublicKey;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzhwx implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public final RSAPublicKey f8858a;
    public final zzhwl b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhwl f8859c;
    public final int d;
    public final byte[] e;
    public final byte[] f;

    public /* synthetic */ zzhwx(RSAPublicKey rSAPublicKey, zzhwl zzhwlVar, zzhwl zzhwlVar2, int i, byte[] bArr, byte[] bArr2) {
        if (!zzhhc.a()) {
            zzhxa.b(zzhwlVar);
            if (zzhwlVar.equals(zzhwlVar2)) {
                zzhxa.c(rSAPublicKey.getModulus().bitLength());
                zzhxa.d(rSAPublicKey.getPublicExponent());
                this.f8858a = rSAPublicKey;
                this.b = zzhwlVar;
                this.f8859c = zzhwlVar2;
                this.d = i;
                this.e = bArr;
                this.f = bArr2;
                return;
            }
            throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
        }
        throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.e;
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
        RSAPublicKey rSAPublicKey = this.f8858a;
        BigInteger publicExponent = rSAPublicKey.getPublicExponent();
        BigInteger modulus = rSAPublicKey.getModulus();
        int bitLength = modulus.bitLength() + 7;
        int bitLength2 = modulus.bitLength() + 6;
        if (bitLength / 8 == bArr.length) {
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.compareTo(modulus) < 0) {
                byte[] b = zzhhe.b(bigInteger.modPow(publicExponent, modulus), bitLength2 / 8);
                int bitLength3 = modulus.bitLength() - 1;
                zzhwl zzhwlVar = this.b;
                zzhxa.b(zzhwlVar);
                zzhwc zzhwcVar = zzhwc.e;
                MessageDigest messageDigest = (MessageDigest) zzhwcVar.f8846a.zza(zzhwz.a(zzhwlVar));
                messageDigest.update(bArr2);
                byte[] bArr3 = this.f;
                if (bArr3.length != 0) {
                    messageDigest.update(bArr3);
                }
                byte[] digest = messageDigest.digest();
                int digestLength = messageDigest.getDigestLength();
                int length = b.length;
                int i = this.d;
                if (length >= digestLength + i + 2) {
                    if (b[length - 1] == -68) {
                        int i2 = length - digestLength;
                        int i3 = i2 - 1;
                        byte[] copyOf = Arrays.copyOf(b, i3);
                        int length2 = copyOf.length;
                        byte[] copyOfRange = Arrays.copyOfRange(b, length2, length2 + digestLength);
                        int i4 = 0;
                        while (true) {
                            long j = (length * 8) - bitLength3;
                            if (i4 < j) {
                                if (((copyOf[i4 / 8] >> (7 - (i4 % 8))) & 1) == 0) {
                                    i4++;
                                } else {
                                    throw new GeneralSecurityException("inconsistent");
                                }
                            } else {
                                MessageDigest messageDigest2 = (MessageDigest) zzhwcVar.f8846a.zza(zzhwz.a(this.f8859c));
                                int digestLength2 = messageDigest2.getDigestLength();
                                byte[] bArr4 = new byte[i3];
                                int i5 = 0;
                                int i6 = 0;
                                while (i5 <= (i2 - 2) / digestLength2) {
                                    messageDigest2.reset();
                                    messageDigest2.update(copyOfRange);
                                    int i7 = i;
                                    messageDigest2.update(zzhhe.b(BigInteger.valueOf(i5), 4));
                                    byte[] digest2 = messageDigest2.digest();
                                    int length3 = digest2.length;
                                    System.arraycopy(digest2, 0, bArr4, i6, Math.min(length3, i3 - i6));
                                    i6 += length3;
                                    i5++;
                                    i = i7;
                                    messageDigest2 = messageDigest2;
                                }
                                int i8 = i;
                                byte[] bArr5 = new byte[i3];
                                for (int i9 = 0; i9 < i3; i9++) {
                                    bArr5[i9] = (byte) (bArr4[i9] ^ copyOf[i9]);
                                }
                                for (int i10 = 0; i10 <= j; i10++) {
                                    int i11 = i10 / 8;
                                    bArr5[i11] = (byte) ((~(1 << (7 - (i10 % 8)))) & bArr5[i11]);
                                }
                                int i12 = 0;
                                while (true) {
                                    int i13 = (i2 - i8) - 2;
                                    if (i12 < i13) {
                                        if (bArr5[i12] == 0) {
                                            i12++;
                                        } else {
                                            throw new GeneralSecurityException("inconsistent");
                                        }
                                    } else {
                                        if (bArr5[i13] == 1) {
                                            byte[] copyOfRange2 = Arrays.copyOfRange(bArr5, i3 - i8, i3);
                                            int i14 = digestLength + 8;
                                            byte[] bArr6 = new byte[i14 + i8];
                                            System.arraycopy(digest, 0, bArr6, 8, digest.length);
                                            System.arraycopy(copyOfRange2, 0, bArr6, i14, copyOfRange2.length);
                                            if (MessageDigest.isEqual(messageDigest.digest(bArr6), copyOfRange)) {
                                                return;
                                            } else {
                                                throw new GeneralSecurityException("inconsistent");
                                            }
                                        }
                                        throw new GeneralSecurityException("inconsistent");
                                    }
                                }
                            }
                        }
                    } else {
                        throw new GeneralSecurityException("inconsistent");
                    }
                } else {
                    throw new GeneralSecurityException("inconsistent");
                }
            } else {
                throw new GeneralSecurityException("signature out of range");
            }
        } else {
            throw new GeneralSecurityException("invalid signature's length");
        }
    }
}
