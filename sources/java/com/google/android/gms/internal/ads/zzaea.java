package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public class zzaea {

    /* renamed from: a, reason: collision with root package name */
    public final zzadu f3943a;
    public final zzadz b;

    /* renamed from: c, reason: collision with root package name */
    public zzadw f3944c;
    public final int d;

    public zzaea(zzadx zzadxVar, zzadz zzadzVar, long j, long j2, long j3, long j4, long j5, int i) {
        this.b = zzadzVar;
        this.d = i;
        this.f3943a = new zzadu(zzadxVar, j, j2, j3, j4, j5);
    }

    public static final int c(zzaep zzaepVar, long j, zzafo zzafoVar) {
        if (j == zzaepVar.zzn()) {
            return 0;
        }
        zzafoVar.f3983a = j;
        return 1;
    }

    public final void a(long j) {
        zzadw zzadwVar = this.f3944c;
        if (zzadwVar != null && zzadwVar.f3939a == j) {
            return;
        }
        zzadu zzaduVar = this.f3943a;
        this.f3944c = new zzadw(j, zzaduVar.f3937a.a(j), zzaduVar.f3938c, zzaduVar.d, zzaduVar.e, zzaduVar.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        return c(r28, r8, r29);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b(com.google.android.gms.internal.ads.zzaep r28, com.google.android.gms.internal.ads.zzafo r29) {
        /*
            r27 = this;
            r0 = r27
            r1 = r28
            r2 = r29
        L6:
            com.google.android.gms.internal.ads.zzadw r3 = r0.f3944c
            r3.getClass()
            long r4 = r3.f
            long r6 = r3.g
            long r8 = r3.h
            long r6 = r6 - r4
            int r10 = r0.d
            long r10 = (long) r10
            int r6 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            r7 = 0
            com.google.android.gms.internal.ads.zzadz r10 = r0.b
            if (r6 > 0) goto L26
            r0.f3944c = r7
            r10.zzb()
            int r1 = c(r1, r4, r2)
            return r1
        L26:
            long r4 = r1.zzn()
            long r4 = r8 - r4
            r11 = 0
            int r6 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r6 < 0) goto Lbe
            r13 = 262144(0x40000, double:1.295163E-318)
            int r6 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r6 > 0) goto Lbe
            int r4 = (int) r4
            r1.zzf(r4)
            r1.zzl()
            long r4 = r3.b
            com.google.android.gms.internal.ads.zzady r4 = r10.a(r1, r4)
            int r5 = r4.f3941a
            r15 = r11
            long r11 = r4.b
            r17 = r13
            long r13 = r4.f3942c
            r4 = -3
            if (r5 == r4) goto Lb4
            r4 = -2
            if (r5 == r4) goto L93
            r4 = -1
            if (r5 == r4) goto L74
            long r3 = r1.zzn()
            long r3 = r13 - r3
            int r5 = (r3 > r15 ? 1 : (r3 == r15 ? 0 : -1))
            if (r5 < 0) goto L6a
            int r5 = (r3 > r17 ? 1 : (r3 == r17 ? 0 : -1))
            if (r5 > 0) goto L6a
            int r3 = (int) r3
            r1.zzf(r3)
        L6a:
            r0.f3944c = r7
            r10.zzb()
            int r1 = c(r1, r13, r2)
            return r1
        L74:
            r3.e = r11
            r3.g = r13
            long r4 = r3.b
            long r6 = r3.d
            long r8 = r3.f
            r15 = r4
            long r4 = r3.f3940c
            r25 = r4
            r17 = r6
            r21 = r8
            r19 = r11
            r23 = r13
            long r4 = com.google.android.gms.internal.ads.zzadw.a(r15, r17, r19, r21, r23, r25)
            r3.h = r4
            goto L6
        L93:
            r4 = r11
            r6 = r13
            r3.d = r4
            r3.f = r6
            long r8 = r3.b
            long r10 = r3.e
            long r12 = r3.g
            long r14 = r3.f3940c
            r17 = r4
            r21 = r6
            r19 = r10
            r23 = r12
            r25 = r14
            r15 = r8
            long r4 = com.google.android.gms.internal.ads.zzadw.a(r15, r17, r19, r21, r23, r25)
            r3.h = r4
            goto L6
        Lb4:
            r0.f3944c = r7
            r10.zzb()
            int r1 = c(r1, r8, r2)
            return r1
        Lbe:
            int r1 = c(r1, r8, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaea.b(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }
}
