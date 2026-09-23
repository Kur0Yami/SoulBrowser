package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzit extends zzau {
    public final int g;
    public final String h;
    public final int i;
    public final zzv j;
    public final int k;
    public final zzwg l;
    public final boolean m;

    public zzit(int i, Exception exc, int i2) {
        this(i, exc, i2, null, -1, null, 4, null, false);
    }

    public final zzit a(zzwg zzwgVar) {
        String message = getMessage();
        String str = zzfj.f7405a;
        return new zzit(message, getCause(), this.f4415c, this.g, this.h, this.i, this.j, this.k, zzwgVar, this.f, this.m);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzit(int r14, java.lang.Exception r15, int r16, java.lang.String r17, int r18, com.google.android.gms.internal.ads.zzv r19, int r20, com.google.android.gms.internal.ads.zzwg r21, boolean r22) {
        /*
            r13 = this;
            r8 = r20
            if (r14 == 0) goto L76
            r0 = 1
            if (r14 == r0) goto Lf
            java.lang.String r0 = "Unexpected runtime error"
            r5 = r17
            r6 = r18
            goto L7c
        Lf:
            java.lang.String r1 = java.lang.String.valueOf(r19)
            java.lang.String r2 = com.google.android.gms.internal.ads.zzfj.f7405a
            if (r8 == 0) goto L34
            if (r8 == r0) goto L31
            r0 = 2
            if (r8 == r0) goto L2e
            r0 = 3
            if (r8 == r0) goto L2b
            r0 = 4
            if (r8 != r0) goto L25
            java.lang.String r0 = "YES"
            goto L36
        L25:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            r14.<init>()
            throw r14
        L2b:
            java.lang.String r0 = "NO_EXCEEDS_CAPABILITIES"
            goto L36
        L2e:
            java.lang.String r0 = "NO_UNSUPPORTED_DRM"
            goto L36
        L31:
            java.lang.String r0 = "NO_UNSUPPORTED_TYPE"
            goto L36
        L34:
            java.lang.String r0 = "NO"
        L36:
            java.lang.String r2 = java.lang.String.valueOf(r17)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r18)
            int r2 = r2 + 14
            r4 = 9
            int r2 = androidx.work.impl.workers.a.d(r2, r4, r3)
            int r3 = r1.length()
            int r3 = r3 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r3 = r3 + 19
            int r4 = r0.length()
            int r4 = r4 + r3
            r2.<init>(r4)
            r5 = r17
            r2.append(r5)
            java.lang.String r3 = " error, index="
            r2.append(r3)
            r6 = r18
            r2.append(r6)
            java.lang.String r3 = ", format="
            r2.append(r3)
            java.lang.String r3 = ", format_supported="
            java.lang.String r0 = android.support.v4.media.a.q(r2, r1, r3, r0)
            goto L7c
        L76:
            r5 = r17
            r6 = r18
            java.lang.String r0 = "Source error"
        L7c:
            r1 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L89
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
        L89:
            r1 = r0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r0 = r13
            r4 = r14
            r2 = r15
            r3 = r16
            r7 = r19
            r9 = r21
            r12 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.<init>(int, java.lang.Exception, int, java.lang.String, int, com.google.android.gms.internal.ads.zzv, int, com.google.android.gms.internal.ads.zzwg, boolean):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzit(String str, Throwable th, int i, int i2, String str2, int i3, zzv zzvVar, int i4, zzwg zzwgVar, long j, boolean z) {
        super(i, j, str, th);
        int i5;
        boolean z2;
        Bundle bundle = Bundle.EMPTY;
        if (!z) {
            i5 = i2;
            z2 = true;
        } else if (i2 == 1) {
            i5 = 1;
            z2 = true;
        } else {
            i5 = i2;
            z2 = false;
        }
        zzgqa.a(z2);
        zzgqa.a(th != null);
        this.g = i5;
        this.h = str2;
        this.i = i3;
        this.j = zzvVar;
        this.k = i4;
        this.l = zzwgVar;
        this.m = z;
    }
}
