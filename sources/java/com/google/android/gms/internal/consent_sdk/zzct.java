package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
public final class zzct {

    /* renamed from: a, reason: collision with root package name */
    public static String f9995a;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.lang.String a(android.content.Context r7) {
        /*
            java.lang.Class<com.google.android.gms.internal.consent_sdk.zzct> r0 = com.google.android.gms.internal.consent_sdk.zzct.class
            monitor-enter(r0)
            java.lang.String r1 = com.google.android.gms.internal.consent_sdk.zzct.f9995a     // Catch: java.lang.Throwable -> L1e
            if (r1 != 0) goto L50
            android.content.ContentResolver r7 = r7.getContentResolver()     // Catch: java.lang.Throwable -> L1e
            if (r7 != 0) goto Lf
            r7 = 0
            goto L15
        Lf:
            java.lang.String r1 = "android_id"
            java.lang.String r7 = android.provider.Settings.Secure.getString(r7, r1)     // Catch: java.lang.Throwable -> L1e
        L15:
            if (r7 == 0) goto L20
            boolean r1 = com.google.android.gms.internal.consent_sdk.zzdb.a()     // Catch: java.lang.Throwable -> L1e
            if (r1 == 0) goto L22
            goto L20
        L1e:
            r7 = move-exception
            goto L54
        L20:
            java.lang.String r7 = "emulator"
        L22:
            r1 = 0
            r2 = r1
        L24:
            r3 = 3
            if (r2 >= r3) goto L4c
            java.lang.String r3 = "MD5"
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            byte[] r4 = r7.getBytes()     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            r3.update(r4)     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            java.lang.String r4 = "%032X"
            java.math.BigInteger r5 = new java.math.BigInteger     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            byte[] r3 = r3.digest()     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            r6 = 1
            r5.<init>(r6, r3)     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            java.lang.Object[] r3 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            r3[r1] = r5     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            java.lang.String r7 = java.lang.String.format(r4, r3)     // Catch: java.lang.Throwable -> L1e java.security.NoSuchAlgorithmException -> L49 java.lang.ArithmeticException -> L4c
            goto L4e
        L49:
            int r2 = r2 + 1
            goto L24
        L4c:
            java.lang.String r7 = ""
        L4e:
            com.google.android.gms.internal.consent_sdk.zzct.f9995a = r7     // Catch: java.lang.Throwable -> L1e
        L50:
            java.lang.String r7 = com.google.android.gms.internal.consent_sdk.zzct.f9995a     // Catch: java.lang.Throwable -> L1e
            monitor-exit(r0)
            return r7
        L54:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1e
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzct.a(android.content.Context):java.lang.String");
    }
}
