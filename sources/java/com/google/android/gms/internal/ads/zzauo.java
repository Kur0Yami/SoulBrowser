package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class zzauo implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4426c;

    public zzauo(boolean z) {
        this.f4426c = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f A[RETURN] */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compare(java.lang.Object r12, java.lang.Object r13) {
        /*
            r11 = this;
            r0 = 9
            int[] r0 = new int[r0]
            r0 = {x00ca: FILL_ARRAY_DATA , data: [446703183, 1862618146, 1081639777, -1087935358, -803036955, 1104011716, 5522510, 2017461929, 496612959} // fill-array
            r1 = 0
            r2 = r0[r1]
            r3 = 1
            r4 = r0[r3]
            r5 = 2
            r5 = r0[r5]
            r6 = 3
            r6 = r0[r6]
            r7 = 4
            r7 = r0[r7]
            r8 = 5
            r8 = r0[r8]
            r9 = 6
            r9 = r0[r9]
            r10 = 7
            r0 = r0[r10]
            int r10 = ~r2
            r4 = r4 & r10
            r4 = r4 | r5
            r2 = r2 & r6
            r2 = r2 | r7
            int r2 = com.google.android.gms.internal.ads.a.l(r4, r2, r8, r9)
            r4 = 496612959(0x1d99b65f, float:4.068733E-21)
            int r0 = r0 % r4
            com.google.android.gms.internal.ads.zzaus r12 = (com.google.android.gms.internal.ads.zzaus) r12
            com.google.android.gms.internal.ads.zzaus r13 = (com.google.android.gms.internal.ads.zzaus) r13
            int r4 = r12.g
            int r5 = r13.g
            if (r4 != r5) goto Lb4
            r0 = r0 ^ r2
            if (r4 == 0) goto La6
            int r4 = r4 + r0
            boolean r0 = r11.f4426c
            switch(r4) {
                case 1: goto L92;
                case 2: goto L85;
                case 3: goto L74;
                case 4: goto L62;
                case 5: goto L4f;
                case 6: goto L40;
                default: goto L3f;
            }
        L3f:
            goto L9f
        L40:
            double r0 = r12.q()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            double r12 = r13.q()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            int r12 = java.lang.Double.compare(r0, r12)     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            return r12
        L4d:
            r12 = move-exception
            goto La8
        L4f:
            if (r0 == 0) goto L5c
            com.google.android.gms.internal.ads.zzauk r12 = r12.p()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            com.google.android.gms.internal.ads.zzauk r13 = r13.p()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            if (r12 == r13) goto L9f
            goto L9e
        L5c:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            r12.<init>()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            throw r12     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
        L62:
            java.util.List r12 = r12.o()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            java.util.List r13 = r13.o()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            com.google.android.gms.internal.ads.zzgtx r0 = new com.google.android.gms.internal.ads.zzgtx     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            r0.<init>(r11)     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            int r12 = r0.compare(r12, r13)     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            return r12
        L74:
            java.util.Comparator r0 = com.google.android.gms.internal.ads.zzatw.f4412c     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            com.google.android.gms.internal.ads.zzatw r12 = r12.n()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            com.google.android.gms.internal.ads.zzatw r13 = r13.n()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            com.google.android.gms.internal.ads.zzatv r0 = (com.google.android.gms.internal.ads.zzatv) r0     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            int r12 = r0.compare(r12, r13)     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            return r12
        L85:
            long r0 = r12.m()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            long r12 = r13.m()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            int r12 = java.lang.Long.compare(r0, r12)     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            return r12
        L92:
            if (r0 == 0) goto La0
            java.lang.Object r12 = r12.l()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            java.lang.Object r13 = r13.l()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            if (r12 == r13) goto L9f
        L9e:
            return r3
        L9f:
            return r1
        La0:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            r12.<init>()     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
            throw r12     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
        La6:
            r12 = 0
            throw r12     // Catch: com.google.android.gms.internal.ads.zzaup -> L4d
        La8:
            java.lang.AssertionError r13 = new java.lang.AssertionError
            java.lang.String r0 = "CEiv6BFfPnitUE+D"
            java.lang.String r0 = com.google.android.gms.internal.ads.zzatu.a(r0)
            r13.<init>(r0, r12)
            throw r13
        Lb4:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            r12.<init>()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzauo.compare(java.lang.Object, java.lang.Object):int");
    }
}
