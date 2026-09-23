package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhsz {

    /* renamed from: a, reason: collision with root package name */
    public zzhsw f8751a = null;
    public BigInteger b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8752c = null;

    public final zzhta a() {
        zzhxc a2;
        if (this.f8751a != null) {
            BigInteger bigInteger = this.b;
            if (bigInteger != null) {
                int bitLength = bigInteger.bitLength();
                zzhsw zzhswVar = this.f8751a;
                int i = zzhswVar.f8745a;
                if (bitLength == i) {
                    if (zzhswVar.a() && this.f8752c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f8751a.a() && this.f8752c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    zzhsv zzhsvVar = this.f8751a.f8746c;
                    if (zzhsvVar == zzhsv.e) {
                        a2 = zzhjf.f8592a;
                    } else if (zzhsvVar != zzhsv.d && zzhsvVar != zzhsv.f8743c) {
                        if (zzhsvVar == zzhsv.b) {
                            a2 = zzhjf.b(this.f8752c.intValue());
                        } else {
                            throw new IllegalStateException("Unknown RsaSsaPkcs1Parameters.Variant: ".concat(String.valueOf(this.f8751a.f8746c)));
                        }
                    } else {
                        a2 = zzhjf.a(this.f8752c.intValue());
                    }
                    return new zzhta(this.f8751a, this.b, a2, this.f8752c);
                }
                throw new GeneralSecurityException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(bitLength).length() + 56 + String.valueOf(i).length()), "Got modulus size ", bitLength, ", but parameters requires modulus size ", i));
            }
            throw new GeneralSecurityException("Cannot build without modulus");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }
}
