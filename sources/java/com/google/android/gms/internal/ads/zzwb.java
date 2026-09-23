package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzwb extends zzyj {
    public final boolean l;
    public final zzbe m;
    public final zzbd n;
    public zzvz o;
    public zzvy p;
    public boolean q;
    public boolean r;
    public boolean s;

    public zzwb(zzwi zzwiVar, boolean z) {
        super(zzwiVar);
        boolean z2;
        if (z) {
            zzwiVar.r();
            z2 = true;
        } else {
            z2 = false;
        }
        this.l = z2;
        this.m = new zzbe();
        this.n = new zzbd();
        zzwiVar.zzH();
        this.o = new zzvz(new zzwa(zzwiVar.zzJ()), zzbe.m, zzvz.e);
    }

    public final boolean A(long j) {
        zzvy zzvyVar = this.p;
        int e = this.o.e(zzvyVar.f9333c.f9337a);
        if (e == -1) {
            return false;
        }
        zzvz zzvzVar = this.o;
        zzbd zzbdVar = this.n;
        zzvzVar.d(e, zzbdVar, false);
        long j2 = zzbdVar.d;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        zzvyVar.k = j;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzwi
    public final void d(zzak zzakVar) {
        if (this.s) {
            zzvz zzvzVar = this.o;
            this.o = new zzvz(new zzyf(this.o.b, zzakVar), zzvzVar.f9334c, zzvzVar.d);
        } else {
            this.o = new zzvz(new zzwa(zzakVar), zzbe.m, zzvz.e);
        }
        this.k.d(zzakVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyj, com.google.android.gms.internal.ads.zzwi
    public final void i(zzwe zzweVar) {
        zzvy zzvyVar = (zzvy) zzweVar;
        zzwe zzweVar2 = zzvyVar.i;
        if (zzweVar2 != null) {
            zzwi zzwiVar = zzvyVar.h;
            zzwiVar.getClass();
            zzwiVar.i(zzweVar2);
        }
        if (zzweVar == this.p) {
            this.p = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvo, com.google.android.gms.internal.ads.zzvf
    public final void o() {
        this.r = false;
        this.q = false;
        super.o();
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final void w() {
        if (!this.l) {
            this.q = true;
            s(null, this.k);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r6 != 0) goto L20;
     */
    @Override // com.google.android.gms.internal.ads.zzyj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzbf r12) {
        /*
            r11 = this;
            boolean r0 = r11.r
            r1 = 0
            if (r0 == 0) goto L1d
            com.google.android.gms.internal.ads.zzvz r0 = r11.o
            java.lang.Object r2 = r0.f9334c
            java.lang.Object r0 = r0.d
            com.google.android.gms.internal.ads.zzvz r3 = new com.google.android.gms.internal.ads.zzvz
            r3.<init>(r12, r2, r0)
            r11.o = r3
            com.google.android.gms.internal.ads.zzvy r12 = r11.p
            if (r12 == 0) goto Lb3
            long r2 = r12.k
            r11.A(r2)
            goto Lb3
        L1d:
            boolean r0 = r12.g()
            if (r0 == 0) goto L40
            boolean r0 = r11.s
            if (r0 == 0) goto L33
            com.google.android.gms.internal.ads.zzvz r0 = r11.o
            java.lang.Object r2 = r0.f9334c
            java.lang.Object r0 = r0.d
            com.google.android.gms.internal.ads.zzvz r3 = new com.google.android.gms.internal.ads.zzvz
            r3.<init>(r12, r2, r0)
            goto L3c
        L33:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzbe.m
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzvz.e
            com.google.android.gms.internal.ads.zzvz r3 = new com.google.android.gms.internal.ads.zzvz
            r3.<init>(r12, r0, r2)
        L3c:
            r11.o = r3
            goto Lb3
        L40:
            r0 = 0
            com.google.android.gms.internal.ads.zzbe r3 = r11.m
            r4 = 0
            r12.b(r0, r3, r4)
            java.lang.Object r8 = r3.f4587a
            com.google.android.gms.internal.ads.zzvy r2 = r11.p
            if (r2 == 0) goto L65
            long r6 = r2.f
            com.google.android.gms.internal.ads.zzvz r9 = r11.o
            com.google.android.gms.internal.ads.zzwg r2 = r2.f9333c
            java.lang.Object r2 = r2.f9337a
            com.google.android.gms.internal.ads.zzbd r10 = r11.n
            r9.o(r2, r10)
            com.google.android.gms.internal.ads.zzvz r2 = r11.o
            r2.b(r0, r3, r4)
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 == 0) goto L65
            goto L66
        L65:
            r6 = r4
        L66:
            com.google.android.gms.internal.ads.zzbd r4 = r11.n
            r5 = 0
            r2 = r12
            android.util.Pair r12 = r2.m(r3, r4, r5, r6)
            java.lang.Object r0 = r12.first
            java.lang.Object r12 = r12.second
            java.lang.Long r12 = (java.lang.Long) r12
            long r3 = r12.longValue()
            boolean r12 = r11.s
            if (r12 == 0) goto L88
            com.google.android.gms.internal.ads.zzvz r12 = r11.o
            java.lang.Object r0 = r12.f9334c
            java.lang.Object r12 = r12.d
            com.google.android.gms.internal.ads.zzvz r5 = new com.google.android.gms.internal.ads.zzvz
            r5.<init>(r2, r0, r12)
            goto L8d
        L88:
            com.google.android.gms.internal.ads.zzvz r5 = new com.google.android.gms.internal.ads.zzvz
            r5.<init>(r2, r8, r0)
        L8d:
            r11.o = r5
            com.google.android.gms.internal.ads.zzvy r12 = r11.p
            if (r12 == 0) goto Lb3
            boolean r0 = r11.A(r3)
            if (r0 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzwg r12 = r12.f9333c
            java.lang.Object r0 = r12.f9337a
            com.google.android.gms.internal.ads.zzvz r1 = r11.o
            java.lang.Object r1 = r1.d
            if (r1 == 0) goto Laf
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzvz.e
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto Laf
            com.google.android.gms.internal.ads.zzvz r0 = r11.o
            java.lang.Object r0 = r0.d
        Laf:
            com.google.android.gms.internal.ads.zzwg r1 = r12.a(r0)
        Lb3:
            r12 = 1
            r11.s = r12
            r11.r = r12
            com.google.android.gms.internal.ads.zzvz r12 = r11.o
            r11.p(r12)
            if (r1 == 0) goto Lc7
            com.google.android.gms.internal.ads.zzvy r12 = r11.p
            r12.getClass()
            r12.j(r1)
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzwb.x(com.google.android.gms.internal.ads.zzbf):void");
    }

    @Override // com.google.android.gms.internal.ads.zzyj
    public final zzwg y(zzwg zzwgVar) {
        Object obj = this.o.d;
        Object obj2 = zzwgVar.f9337a;
        if (obj != null && obj.equals(obj2)) {
            obj2 = zzvz.e;
        }
        return zzwgVar.a(obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzyj, com.google.android.gms.internal.ads.zzwi
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final zzvy j(zzwg zzwgVar, zzaah zzaahVar, long j) {
        boolean z;
        zzvy zzvyVar = new zzvy(zzwgVar, zzaahVar, j);
        if (zzvyVar.h == null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        zzwi zzwiVar = this.k;
        zzvyVar.h = zzwiVar;
        if (this.r) {
            Object obj = zzwgVar.f9337a;
            if (this.o.d != null && obj.equals(zzvz.e)) {
                obj = this.o.d;
            }
            zzvyVar.j(zzwgVar.a(obj));
            return zzvyVar;
        }
        this.p = zzvyVar;
        if (!this.q) {
            this.q = true;
            s(null, zzwiVar);
        }
        return zzvyVar;
    }
}
