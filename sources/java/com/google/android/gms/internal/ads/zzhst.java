package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhst {
    public static final BigInteger e;
    public static final BigInteger f;

    /* renamed from: a, reason: collision with root package name */
    public Integer f8739a = null;
    public BigInteger b = zzhsw.e;

    /* renamed from: c, reason: collision with root package name */
    public zzhsu f8740c = null;
    public zzhsv d = zzhsv.e;

    static {
        BigInteger valueOf = BigInteger.valueOf(2L);
        e = valueOf;
        f = valueOf.pow(256);
    }

    public final void a(int i) {
        this.f8739a = Integer.valueOf(i);
    }

    public final zzhsw b() {
        Integer num = this.f8739a;
        if (num != null) {
            if (this.b != null) {
                if (this.f8740c != null) {
                    if (this.d != null) {
                        if (num.intValue() >= 2048) {
                            BigInteger bigInteger = this.b;
                            int compareTo = bigInteger.compareTo(zzhsw.e);
                            if (compareTo != 0) {
                                if (compareTo >= 0) {
                                    if (!bigInteger.mod(e).equals(BigInteger.ZERO)) {
                                        if (bigInteger.compareTo(f) > 0) {
                                            throw new InvalidAlgorithmParameterException("Public exponent cannot be larger than 2^256.");
                                        }
                                    } else {
                                        throw new InvalidAlgorithmParameterException("Invalid public exponent");
                                    }
                                } else {
                                    throw new InvalidAlgorithmParameterException("Public exponent must be at least 65537.");
                                }
                            }
                            return new zzhsw(this.f8739a.intValue(), this.b, this.d, this.f8740c);
                        }
                        throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 2048 bits", this.f8739a));
                    }
                    throw new GeneralSecurityException("variant is not set");
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("publicExponent is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }
}
