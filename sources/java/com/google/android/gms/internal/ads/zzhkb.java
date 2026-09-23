package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzhkb extends ThreadLocal {
    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(4:18|19|9|10)|3|4|5|6|(4:12|13|9|10)|8|9|10) */
    @Override // java.lang.ThreadLocal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initialValue() {
        /*
            r4 = this;
            java.lang.ThreadLocal r0 = com.google.android.gms.internal.ads.zzhkc.f8609a
            java.security.Provider r0 = com.google.android.gms.internal.ads.zzhhf.a()
            java.lang.String r1 = "SHA1PRNG"
            if (r0 == 0) goto Lf
            java.security.SecureRandom r0 = java.security.SecureRandom.getInstance(r1, r0)     // Catch: java.security.GeneralSecurityException -> Lf
            goto L2f
        Lf:
            r0 = 0
            java.lang.String r2 = "org.conscrypt.Conscrypt"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L23
            java.lang.String r3 = "newProvider"
            java.lang.reflect.Method r2 = r2.getMethod(r3, r0)     // Catch: java.lang.Throwable -> L23
            java.lang.Object r2 = r2.invoke(r0, r0)     // Catch: java.lang.Throwable -> L23
            java.security.Provider r2 = (java.security.Provider) r2     // Catch: java.lang.Throwable -> L23
            r0 = r2
        L23:
            if (r0 == 0) goto L2a
            java.security.SecureRandom r0 = java.security.SecureRandom.getInstance(r1, r0)     // Catch: java.security.GeneralSecurityException -> L2a
            goto L2f
        L2a:
            java.security.SecureRandom r0 = new java.security.SecureRandom
            r0.<init>()
        L2f:
            r0.nextLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhkb.initialValue():java.lang.Object");
    }
}
