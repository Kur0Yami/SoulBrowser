package com.google.android.gms.internal.ads;

import j$.util.Optional;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzatf extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzatf(com.google.android.gms.internal.ads.zzate r5, com.google.android.gms.internal.ads.zzatc r6, long r7) {
        /*
            r4 = this;
            java.util.Locale r0 = java.util.Locale.US
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            long r2 = r5.f4398c
            java.lang.Long r5 = java.lang.Long.valueOf(r2)
            r2 = 0
            r1[r2] = r5
            long r2 = r6.f4397c
            java.lang.Long r5 = java.lang.Long.valueOf(r2)
            r2 = 1
            r1[r2] = r5
            java.lang.Long r5 = java.lang.Long.valueOf(r7)
            r7 = 2
            r1[r7] = r5
            java.lang.String r7 = "bk3t6gFTc30="
            java.lang.String r7 = com.google.android.gms.internal.ads.zzatu.a(r7)
            java.lang.String r7 = java.lang.String.format(r0, r7, r1)
            r4.<init>(r7)
            j$.util.Optional.of(r6)
            j$.util.Optional.of(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatf.<init>(com.google.android.gms.internal.ads.zzate, com.google.android.gms.internal.ads.zzatc, long):void");
    }

    public zzatf(zzate zzateVar, Exception exc) {
        super(String.format(Locale.US, zzatu.a("bk0="), Long.valueOf(zzateVar.f4398c)), exc);
        Optional.empty();
        Optional.empty();
    }
}
