package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;

/* loaded from: classes.dex */
public final class zzhrf {

    /* renamed from: a, reason: collision with root package name */
    public zzhri f8694a = null;
    public zzhxd b = null;

    public final zzhrg a() {
        ECPoint eCPoint;
        zzhri zzhriVar = this.f8694a;
        if (zzhriVar != null) {
            zzhxd zzhxdVar = this.b;
            if (zzhxdVar != null) {
                BigInteger bigInteger = zzhxdVar.f8864a;
                ECPoint eCPoint2 = zzhriVar.b;
                zzhra zzhraVar = zzhriVar.f8698a.b;
                BigInteger order = zzhraVar.b.getOrder();
                if (bigInteger.signum() > 0 && bigInteger.compareTo(order) < 0) {
                    ECParameterSpec eCParameterSpec = zzhraVar.b;
                    if (!zzhhq.b(eCParameterSpec, zzhhq.f8558a) && !zzhhq.b(eCParameterSpec, zzhhq.b) && !zzhhq.b(eCParameterSpec, zzhhq.f8559c)) {
                        throw new GeneralSecurityException("spec must be NIST P256, P384 or P521");
                    }
                    if (bigInteger.signum() == 1) {
                        if (bigInteger.compareTo(eCParameterSpec.getOrder()) < 0) {
                            EllipticCurve curve = eCParameterSpec.getCurve();
                            ECPoint generator = eCParameterSpec.getGenerator();
                            zzhhq.a(generator, curve);
                            BigInteger a2 = eCParameterSpec.getCurve().getA();
                            BigInteger c2 = zzhhq.c(curve);
                            zzhhp d = zzhhq.d(ECPoint.POINT_INFINITY, c2);
                            zzhhp d2 = zzhhq.d(generator, c2);
                            for (int bitLength = bigInteger.bitLength(); bitLength >= 0; bitLength--) {
                                if (bigInteger.testBit(bitLength)) {
                                    d = zzhhq.f(d, d2, a2, c2);
                                    d2 = zzhhq.e(d2, a2, c2);
                                } else {
                                    d2 = zzhhq.f(d, d2, a2, c2);
                                    d = zzhhq.e(d, a2, c2);
                                }
                            }
                            if (d.f8557c.equals(BigInteger.ZERO)) {
                                eCPoint = ECPoint.POINT_INFINITY;
                            } else {
                                BigInteger modInverse = d.f8557c.modInverse(c2);
                                BigInteger mod = modInverse.multiply(modInverse).mod(c2);
                                eCPoint = new ECPoint(d.f8556a.multiply(mod).mod(c2), d.b.multiply(mod).mod(c2).multiply(modInverse).mod(c2));
                            }
                            zzhhq.a(eCPoint, curve);
                            if (eCPoint.equals(eCPoint2)) {
                                return new zzhrg(this.f8694a, this.b);
                            }
                            throw new GeneralSecurityException("Invalid private value");
                        }
                        throw new GeneralSecurityException("k must be smaller than the order of the generator");
                    }
                    throw new GeneralSecurityException("k must be positive");
                }
                throw new GeneralSecurityException("Invalid private value");
            }
            throw new GeneralSecurityException("Cannot build without a private value");
        }
        throw new GeneralSecurityException("Cannot build without a ecdsa public key");
    }
}
