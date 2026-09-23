package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhtl {

    /* renamed from: a, reason: collision with root package name */
    public zzhti f8773a = null;
    public BigInteger b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8774c = null;

    public final zzhtm a() {
        zzhxc a2;
        if (this.f8773a != null) {
            BigInteger bigInteger = this.b;
            if (bigInteger != null) {
                int bitLength = bigInteger.bitLength();
                zzhti zzhtiVar = this.f8773a;
                int i = zzhtiVar.f8767a;
                if (bitLength == i) {
                    if (zzhtiVar.a() && this.f8774c == null) {
                        throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
                    }
                    if (!this.f8773a.a() && this.f8774c != null) {
                        throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
                    }
                    zzhth zzhthVar = this.f8773a.f8768c;
                    if (zzhthVar == zzhth.e) {
                        a2 = zzhjf.f8592a;
                    } else if (zzhthVar != zzhth.d && zzhthVar != zzhth.f8765c) {
                        if (zzhthVar == zzhth.b) {
                            a2 = zzhjf.b(this.f8774c.intValue());
                        } else {
                            throw new IllegalStateException("Unknown RsaSsaPssParameters.Variant: ".concat(String.valueOf(this.f8773a.f8768c)));
                        }
                    } else {
                        a2 = zzhjf.a(this.f8774c.intValue());
                    }
                    return new zzhtm(this.f8773a, this.b, a2, this.f8774c);
                }
                throw new GeneralSecurityException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(bitLength).length() + 56 + String.valueOf(i).length()), "Got modulus size ", bitLength, ", but parameters requires modulus size ", i));
            }
            throw new GeneralSecurityException("Cannot build without modulus");
        }
        throw new GeneralSecurityException("Cannot build without parameters");
    }
}
