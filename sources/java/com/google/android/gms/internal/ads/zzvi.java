package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzvi implements zzwz {

    /* renamed from: a, reason: collision with root package name */
    public final zzaeu f9316a;
    public zzaeo b;

    /* renamed from: c, reason: collision with root package name */
    public zzaef f9317c;

    public zzvi(zzaeu zzaeuVar) {
        this.f9316a = zzaeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int a(zzafo zzafoVar) {
        zzaef zzaefVar;
        zzaeo zzaeoVar = this.b;
        if (zzaeoVar != null && (zzaefVar = this.f9317c) != null) {
            return zzaeoVar.e(zzaefVar, zzafoVar);
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004d, code lost:
    
        if (r1.d != r11) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0051, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
    
        if (r1.d != r11) goto L23;
     */
    /* JADX WARN: Type inference failed for: r10v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    @Override // com.google.android.gms.internal.ads.zzwz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.google.android.gms.internal.ads.zzhb r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzaer r15) {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzaef r1 = new com.google.android.gms.internal.ads.zzaef
            r2 = r8
            r3 = r11
            r5 = r13
            r1.<init>(r2, r3, r5)
            r7.f9317c = r1
            com.google.android.gms.internal.ads.zzaeo r8 = r7.b
            if (r8 == 0) goto Lf
            return
        Lf:
            com.google.android.gms.internal.ads.zzaeu r8 = r7.f9316a
            com.google.android.gms.internal.ads.zzaeo[] r8 = r8.a(r9, r10)
            int r9 = r8.length
            com.google.android.gms.internal.ads.zzgvs r10 = com.google.android.gms.internal.ads.zzgtd.f
            java.lang.String r10 = "expectedSize"
            com.google.android.gms.internal.ads.zzgrz.b(r9, r10)
            com.google.android.gms.internal.ads.zzgta r10 = new com.google.android.gms.internal.ads.zzgta
            r10.<init>(r9)
            r11 = 1
            r12 = 0
            if (r9 != r11) goto L2b
            r8 = r8[r12]
            r7.b = r8
            goto L7c
        L2b:
            r13 = r12
        L2c:
            if (r13 >= r9) goto L78
            r14 = r8[r13]
            boolean r0 = r14.d(r1)     // Catch: java.lang.Throwable -> L3b java.io.EOFException -> L6a
            if (r0 == 0) goto L3e
            r7.b = r14     // Catch: java.lang.Throwable -> L3b java.io.EOFException -> L6a
            r1.f = r12
            goto L78
        L3b:
            r0 = move-exception
            r8 = r0
            goto L58
        L3e:
            java.util.List r14 = r14.zzb()     // Catch: java.lang.Throwable -> L3b java.io.EOFException -> L6a
            r10.d(r14)     // Catch: java.lang.Throwable -> L3b java.io.EOFException -> L6a
            com.google.android.gms.internal.ads.zzaeo r14 = r7.b
            if (r14 != 0) goto L4f
            long r5 = r1.d
            int r14 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r14 != 0) goto L51
        L4f:
            r14 = r11
            goto L52
        L51:
            r14 = r12
        L52:
            com.google.android.gms.internal.ads.zzgqa.f(r14)
            r1.f = r12
            goto L75
        L58:
            com.google.android.gms.internal.ads.zzaeo r9 = r7.b
            if (r9 != 0) goto L64
            long r9 = r1.d
            int r9 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r9 != 0) goto L63
            goto L64
        L63:
            r11 = r12
        L64:
            com.google.android.gms.internal.ads.zzgqa.f(r11)
            r1.f = r12
            throw r8
        L6a:
            com.google.android.gms.internal.ads.zzaeo r14 = r7.b
            if (r14 != 0) goto L4f
            long r5 = r1.d
            int r14 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r14 != 0) goto L51
            goto L4f
        L75:
            int r13 = r13 + 1
            goto L2c
        L78:
            com.google.android.gms.internal.ads.zzaeo r9 = r7.b
            if (r9 == 0) goto L82
        L7c:
            com.google.android.gms.internal.ads.zzaeo r8 = r7.b
            r8.f(r15)
            return
        L82:
            com.google.android.gms.internal.ads.zzyi r9 = new com.google.android.gms.internal.ads.zzyi
            com.google.android.gms.internal.ads.zzgtd r8 = com.google.android.gms.internal.ads.zzgtd.w(r8)
            com.google.android.gms.internal.ads.zzvh r11 = com.google.android.gms.internal.ads.zzvh.f9315a
            java.util.AbstractList r8 = com.google.android.gms.internal.ads.zzgud.b(r8, r11)
            java.util.Iterator r8 = r8.iterator()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = ", "
            com.google.android.gms.internal.ads.zzgpu.a(r11, r8, r12)
            java.lang.String r8 = r11.toString()
            int r11 = r8.length()
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            int r11 = r11 + 58
            r12.<init>(r11)
            java.lang.String r11 = "None of the available extractors ("
            java.lang.String r13 = ") could read the stream."
            java.lang.String r8 = android.support.v4.media.a.q(r12, r11, r8, r13)
            com.google.android.gms.internal.ads.zzgtd r10 = r10.f()
            r9.<init>(r8, r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvi.b(com.google.android.gms.internal.ads.zzhb, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzaer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void c(long j, long j2) {
        zzaeo zzaeoVar = this.b;
        zzaeoVar.getClass();
        zzaeoVar.c(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void zzb() {
        zzaeo zzaeoVar = this.b;
        if (zzaeoVar != null) {
            zzaeoVar.zzf();
            this.b = null;
        }
        this.f9317c = null;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void zzc() {
        zzaeo zzaeoVar = this.b;
        if (zzaeoVar != null && (zzaeoVar instanceof zzaji)) {
            ((zzaji) zzaeoVar).p = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final long zzd() {
        zzaef zzaefVar = this.f9317c;
        if (zzaefVar != null) {
            return zzaefVar.d;
        }
        return -1L;
    }
}
