package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.interfaces.RSAPrivateCrtKey;

/* loaded from: classes.dex */
public final class zzhuw implements zzhap {
    public static final byte[] g = new byte[0];
    public static final byte[] h = {0};
    public static final byte[] i = {1, 2, 3};

    /* renamed from: a, reason: collision with root package name */
    public final RSAPrivateCrtKey f8813a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8814c;
    public final byte[] d;
    public final zzhaq e;
    public final Provider f;

    public zzhuw(RSAPrivateCrtKey rSAPrivateCrtKey, zzhsu zzhsuVar, byte[] bArr, byte[] bArr2, zzhaq zzhaqVar, Provider provider) {
        if (zzhhb.a(2)) {
            if (zzhsuVar != zzhsu.b && zzhsuVar != zzhsu.f8741c && zzhsuVar != zzhsu.d) {
                throw new GeneralSecurityException("Unsupported hash: ".concat(String.valueOf(zzhsuVar)));
            }
            zzhxa.c(rSAPrivateCrtKey.getModulus().bitLength());
            zzhxa.d(rSAPrivateCrtKey.getPublicExponent());
            this.f8813a = rSAPrivateCrtKey;
            this.b = zzhux.b(zzhsuVar);
            this.f8814c = bArr;
            this.d = bArr2;
            this.e = zzhaqVar;
            this.f = provider;
            return;
        }
        throw new GeneralSecurityException("Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
    }
}
