package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhvf implements zzhap {
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
    
        if (r0.intValue() <= 23) goto L12;
     */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhvf] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzhvf a(com.google.android.gms.internal.ads.zzhtk r12) {
        /*
            int r0 = com.google.android.gms.internal.ads.zzhkl.f8617a
            java.lang.String r0 = "java.vendor"
            java.lang.String r1 = java.lang.System.getProperty(r0)
            java.lang.String r2 = "The Android Project"
            boolean r1 = j$.util.Objects.equals(r1, r2)
            if (r1 == 0) goto L2c
            java.lang.String r0 = java.lang.System.getProperty(r0)
            boolean r0 = j$.util.Objects.equals(r0, r2)
            r1 = 0
            if (r0 != 0) goto L1d
            r0 = r1
            goto L23
        L1d:
            int r0 = android.os.Build.VERSION.SDK_INT
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
        L23:
            int r0 = r0.intValue()
            r2 = 23
            if (r0 > r2) goto L2c
            goto L30
        L2c:
            java.security.Provider r1 = com.google.android.gms.internal.ads.zzhhf.a()
        L30:
            if (r1 == 0) goto La0
            java.lang.String r0 = "RSA"
            java.security.KeyFactory r0 = java.security.KeyFactory.getInstance(r0, r1)
            com.google.android.gms.internal.ads.zzhtm r1 = r12.f8771a
            com.google.android.gms.internal.ads.zzhti r2 = r1.f8775a
            java.security.spec.RSAPrivateCrtKeySpec r3 = new java.security.spec.RSAPrivateCrtKeySpec
            java.math.BigInteger r4 = r1.b
            java.math.BigInteger r5 = r2.b
            com.google.android.gms.internal.ads.zzhxd r6 = r12.b
            java.math.BigInteger r6 = r6.f8864a
            com.google.android.gms.internal.ads.zzhxd r7 = r12.f8772c
            java.math.BigInteger r7 = r7.f8864a
            com.google.android.gms.internal.ads.zzhxd r8 = r12.d
            java.math.BigInteger r8 = r8.f8864a
            com.google.android.gms.internal.ads.zzhxd r9 = r12.e
            java.math.BigInteger r9 = r9.f8864a
            com.google.android.gms.internal.ads.zzhxd r10 = r12.f
            java.math.BigInteger r10 = r10.f8864a
            com.google.android.gms.internal.ads.zzhxd r12 = r12.g
            java.math.BigInteger r11 = r12.f8864a
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            java.security.PrivateKey r12 = r0.generatePrivate(r3)
            java.security.interfaces.RSAPrivateCrtKey r12 = (java.security.interfaces.RSAPrivateCrtKey) r12
            com.google.android.gms.internal.ads.zzhvf r0 = new com.google.android.gms.internal.ads.zzhvf
            com.google.android.gms.internal.ads.zzhtg r3 = r2.d
            com.google.android.gms.internal.ads.zzhtg r4 = r2.e
            int r5 = r2.f
            com.google.android.gms.internal.ads.zzhxc r1 = r1.f8776c
            r1.b()
            com.google.android.gms.internal.ads.zzhth r1 = r2.f8768c
            r1.getClass()
            r0.<init>()
            r1 = 2
            boolean r1 = com.google.android.gms.internal.ads.zzhhb.a(r1)
            if (r1 == 0) goto L98
            java.math.BigInteger r1 = r12.getModulus()
            int r1 = r1.bitLength()
            com.google.android.gms.internal.ads.zzhxa.c(r1)
            java.math.BigInteger r12 = r12.getPublicExponent()
            com.google.android.gms.internal.ads.zzhxa.d(r12)
            com.google.android.gms.internal.ads.zzhvg.b(r3)
            com.google.android.gms.internal.ads.zzhvg.c(r3, r4, r5)
            return r0
        L98:
            java.security.GeneralSecurityException r12 = new java.security.GeneralSecurityException
            java.lang.String r0 = "Cannot use RSA PSS in FIPS-mode, as BoringCrypto module is not available."
            r12.<init>(r0)
            throw r12
        La0:
            java.security.NoSuchProviderException r12 = new java.security.NoSuchProviderException
            java.lang.String r0 = "RSA SSA PSS using Conscrypt is not supported."
            r12.<init>(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhvf.a(com.google.android.gms.internal.ads.zzhtk):com.google.android.gms.internal.ads.zzhvf");
    }
}
