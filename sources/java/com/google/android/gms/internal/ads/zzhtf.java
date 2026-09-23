package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhtf {
    public static final BigInteger g;
    public static final BigInteger h;

    /* renamed from: a, reason: collision with root package name */
    public Integer f8761a = null;
    public BigInteger b = zzhti.g;

    /* renamed from: c, reason: collision with root package name */
    public zzhtg f8762c = null;
    public zzhtg d = null;
    public Integer e = null;
    public zzhth f = zzhth.e;

    static {
        BigInteger valueOf = BigInteger.valueOf(2L);
        g = valueOf;
        h = valueOf.pow(256);
    }

    public final void a(int i) {
        this.f8761a = Integer.valueOf(i);
    }

    public final void b(int i) {
        if (i >= 0) {
            this.e = Integer.valueOf(i);
            return;
        }
        throw new GeneralSecurityException(String.format("Invalid salt length in bytes %d; salt length must be positive", Integer.valueOf(i)));
    }

    public final zzhti c() {
        Integer num = this.f8761a;
        if (num != null) {
            if (this.b != null) {
                if (this.f8762c != null) {
                    if (this.d != null) {
                        if (this.f != null) {
                            if (this.e != null) {
                                if (num.intValue() >= 2048) {
                                    if (this.f8762c == this.d) {
                                        BigInteger bigInteger = this.b;
                                        int compareTo = bigInteger.compareTo(zzhti.g);
                                        if (compareTo != 0) {
                                            if (compareTo >= 0) {
                                                if (!bigInteger.mod(g).equals(BigInteger.ZERO)) {
                                                    if (bigInteger.compareTo(h) > 0) {
                                                        throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
                                                    }
                                                } else {
                                                    throw new InvalidAlgorithmParameterException("Invalid public exponent");
                                                }
                                            } else {
                                                throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
                                            }
                                        }
                                        return new zzhti(this.f8761a.intValue(), this.b, this.f, this.f8762c, this.d, this.e.intValue());
                                    }
                                    throw new GeneralSecurityException("MGF1 hash is different from signature hash");
                                }
                                throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least %d bits", this.f8761a, 2048));
                            }
                            throw new GeneralSecurityException("salt length is not set");
                        }
                        throw new GeneralSecurityException("variant is not set");
                    }
                    throw new GeneralSecurityException("mgf1 hash type is not set");
                }
                throw new GeneralSecurityException("signature hash type is not set");
            }
            throw new GeneralSecurityException("publicExponent is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }
}
