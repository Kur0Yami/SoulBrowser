package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhtj {

    /* renamed from: a, reason: collision with root package name */
    public zzhtm f8769a = null;
    public zzhxd b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzhxd f8770c = null;
    public zzhxd d = null;
    public zzhxd e = null;
    public zzhxd f = null;
    public zzhxd g = null;

    public final zzhtk a() {
        zzhxd zzhxdVar;
        zzhxd zzhxdVar2;
        zzhtm zzhtmVar = this.f8769a;
        if (zzhtmVar != null) {
            zzhxd zzhxdVar3 = this.f8770c;
            if (zzhxdVar3 != null && (zzhxdVar = this.d) != null) {
                zzhxd zzhxdVar4 = this.b;
                if (zzhxdVar4 != null) {
                    zzhxd zzhxdVar5 = this.e;
                    if (zzhxdVar5 != null && (zzhxdVar2 = this.f) != null) {
                        zzhxd zzhxdVar6 = this.g;
                        if (zzhxdVar6 != null) {
                            BigInteger bigInteger = zzhtmVar.f8775a.b;
                            BigInteger bigInteger2 = zzhtmVar.b;
                            BigInteger bigInteger3 = zzhxdVar3.f8864a;
                            BigInteger bigInteger4 = zzhxdVar.f8864a;
                            BigInteger bigInteger5 = zzhxdVar4.f8864a;
                            BigInteger bigInteger6 = zzhxdVar5.f8864a;
                            BigInteger bigInteger7 = zzhxdVar2.f8864a;
                            BigInteger bigInteger8 = zzhxdVar6.f8864a;
                            if (bigInteger3.isProbablePrime(10)) {
                                if (bigInteger4.isProbablePrime(10)) {
                                    if (bigInteger3.multiply(bigInteger4).equals(bigInteger2)) {
                                        BigInteger bigInteger9 = BigInteger.ONE;
                                        BigInteger subtract = bigInteger3.subtract(bigInteger9);
                                        BigInteger subtract2 = bigInteger4.subtract(bigInteger9);
                                        if (bigInteger.multiply(bigInteger5).mod(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2)).equals(bigInteger9)) {
                                            if (bigInteger.multiply(bigInteger6).mod(subtract).equals(bigInteger9)) {
                                                if (bigInteger.multiply(bigInteger7).mod(subtract2).equals(bigInteger9)) {
                                                    if (bigInteger4.multiply(bigInteger8).mod(bigInteger3).equals(bigInteger9)) {
                                                        return new zzhtk(this.f8769a, this.f8770c, this.d, this.b, this.e, this.f, this.g);
                                                    }
                                                    throw new GeneralSecurityException("qInv is invalid.");
                                                }
                                                throw new GeneralSecurityException("dQ is invalid.");
                                            }
                                            throw new GeneralSecurityException("dP is invalid.");
                                        }
                                        throw new GeneralSecurityException("D is invalid.");
                                    }
                                    throw new GeneralSecurityException("Prime p times prime q is not equal to the public key's modulus");
                                }
                                throw new GeneralSecurityException("q is not a prime");
                            }
                            throw new GeneralSecurityException("p is not a prime");
                        }
                        throw new GeneralSecurityException("Cannot build without CRT coefficient");
                    }
                    throw new GeneralSecurityException("Cannot build without prime exponents");
                }
                throw new GeneralSecurityException("Cannot build without private exponent");
            }
            throw new GeneralSecurityException("Cannot build without prime factors");
        }
        throw new GeneralSecurityException("Cannot build without a RSA SSA PKCS1 public key");
    }
}
