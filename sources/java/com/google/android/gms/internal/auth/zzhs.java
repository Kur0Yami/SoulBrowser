package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
public final class zzhs extends zzev implements zzfy {
    private static final zzhs zzb;
    private zzez zzd = zzgg.h;

    static {
        zzhs zzhsVar = new zzhs();
        zzb = zzhsVar;
        zzev.e(zzhsVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
    
        if (r7 != false) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, com.google.android.gms.internal.auth.zzdt] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.zzhs i(byte[] r7) {
        /*
            com.google.android.gms.internal.auth.zzhs r0 = com.google.android.gms.internal.auth.zzhs.zzb
            int r5 = r7.length
            com.google.android.gms.internal.auth.zzel r1 = com.google.android.gms.internal.auth.zzel.b
            com.google.android.gms.internal.auth.zzev r2 = r0.b()
            com.google.android.gms.internal.auth.zzgf r0 = com.google.android.gms.internal.auth.zzgf.f9553c     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            com.google.android.gms.internal.auth.zzgi r3 = r0.a(r3)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            com.google.android.gms.internal.auth.zzdt r6 = new com.google.android.gms.internal.auth.zzdt     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            r6.<init>()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            r1.getClass()     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            r4 = 0
            r1 = r3
            r3 = r7
            r1.g(r2, r3, r4, r5, r6)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            r1.f(r2)     // Catch: java.lang.IndexOutOfBoundsException -> L5a java.io.IOException -> L5f com.google.android.gms.internal.auth.zzgy -> L7a com.google.android.gms.internal.auth.zzfb -> L86
            r7 = 1
            java.lang.Object r1 = r2.h(r7)
            java.lang.Byte r1 = (java.lang.Byte) r1
            byte r1 = r1.byteValue()
            if (r1 != r7) goto L32
            goto L46
        L32:
            if (r1 == 0) goto L49
            java.lang.Class r7 = r2.getClass()
            com.google.android.gms.internal.auth.zzgi r7 = r0.a(r7)
            boolean r7 = r7.c(r2)
            r0 = 2
            r2.h(r0)
            if (r7 == 0) goto L49
        L46:
            com.google.android.gms.internal.auth.zzhs r2 = (com.google.android.gms.internal.auth.zzhs) r2
            return r2
        L49:
            com.google.android.gms.internal.auth.zzgy r7 = new com.google.android.gms.internal.auth.zzgy
            java.lang.String r0 = "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."
            r7.<init>(r0)
            com.google.android.gms.internal.auth.zzfb r0 = new com.google.android.gms.internal.auth.zzfb
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L5a:
            com.google.android.gms.internal.auth.zzfb r7 = com.google.android.gms.internal.auth.zzfb.c()
            throw r7
        L5f:
            r0 = move-exception
            r7 = r0
            java.lang.Throwable r0 = r7.getCause()
            boolean r0 = r0 instanceof com.google.android.gms.internal.auth.zzfb
            if (r0 == 0) goto L70
            java.lang.Throwable r7 = r7.getCause()
            com.google.android.gms.internal.auth.zzfb r7 = (com.google.android.gms.internal.auth.zzfb) r7
            throw r7
        L70:
            com.google.android.gms.internal.auth.zzfb r0 = new com.google.android.gms.internal.auth.zzfb
            java.lang.String r1 = r7.getMessage()
            r0.<init>(r1, r7)
            throw r0
        L7a:
            r0 = move-exception
            r7 = r0
            com.google.android.gms.internal.auth.zzfb r0 = new com.google.android.gms.internal.auth.zzfb
            java.lang.String r7 = r7.getMessage()
            r0.<init>(r7)
            throw r0
        L86:
            r0 = move-exception
            r7 = r0
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzhs.i(byte[]):com.google.android.gms.internal.auth.zzhs");
    }

    @Override // com.google.android.gms.internal.auth.zzev
    public final Object h(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            return null;
                        }
                        return zzb;
                    }
                    return new zzet(zzb);
                }
                return new zzhs();
            }
            return new zzgh(zzb, new Object[]{"zzd"});
        }
        return (byte) 1;
    }

    public final zzez j() {
        return this.zzd;
    }
}
