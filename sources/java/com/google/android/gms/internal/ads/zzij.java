package com.google.android.gms.internal.ads;

import j$.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public abstract class zzij implements zzmi, zzmk {
    public final int f;
    public zzml h;
    public int i;
    public zzpn j;
    public zzdn k;
    public int l;
    public zzxw m;
    public zzv[] n;
    public long o;
    public long p;
    public boolean r;
    public boolean s;
    public zzwg u;
    public zzmj v;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9000c = new Object();
    public final zzle g = new Object();
    public long q = Long.MIN_VALUE;
    public zzbf t = zzbf.f4601a;

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzle, java.lang.Object] */
    public zzij(int i) {
        this.f = i;
    }

    public final void A() {
        this.h.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzit B(java.lang.Exception r12, com.google.android.gms.internal.ads.zzv r13, boolean r14, int r15) {
        /*
            r11 = this;
            r0 = 4
            if (r13 == 0) goto L1d
            boolean r1 = r11.s
            if (r1 != 0) goto L1d
            r1 = 1
            r11.s = r1
            r1 = 0
            r2 = r11
            com.google.android.gms.internal.ads.zzuq r2 = (com.google.android.gms.internal.ads.zzuq) r2     // Catch: java.lang.Throwable -> L17 com.google.android.gms.internal.ads.zzit -> L1b
            int r2 = r2.s(r13)     // Catch: java.lang.Throwable -> L17 com.google.android.gms.internal.ads.zzit -> L1b
            r2 = r2 & 7
            r11.s = r1
            goto L1e
        L17:
            r0 = move-exception
            r11.s = r1
            throw r0
        L1b:
            r11.s = r1
        L1d:
            r2 = r0
        L1e:
            java.lang.String r5 = r11.c()
            int r6 = r11.i
            com.google.android.gms.internal.ads.zzwg r9 = r11.u
            com.google.android.gms.internal.ads.zzit r1 = new com.google.android.gms.internal.ads.zzit
            if (r13 != 0) goto L2c
            r8 = r0
            goto L2d
        L2c:
            r8 = r2
        L2d:
            r2 = 1
            r3 = r12
            r7 = r13
            r10 = r14
            r4 = r15
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzij.B(java.lang.Exception, com.google.android.gms.internal.ads.zzv, boolean, int):com.google.android.gms.internal.ads.zzit");
    }

    public final int C(zzle zzleVar, zzih zzihVar, int i) {
        zzxw zzxwVar = this.m;
        zzxwVar.getClass();
        int b = zzxwVar.b(zzleVar, zzihVar, i);
        if (b == -4) {
            if (zzihVar.b(4)) {
                this.q = Long.MIN_VALUE;
                if (this.r) {
                    return -4;
                }
                return -3;
            }
            long j = zzihVar.f + this.o;
            zzihVar.f = j;
            this.q = Math.max(this.q, j);
            return b;
        }
        if (b == -5) {
            zzv zzvVar = zzleVar.b;
            zzvVar.getClass();
            long j2 = zzvVar.r;
            if (j2 != LongCompanionObject.MAX_VALUE) {
                zzt zztVar = new zzt(zzvVar);
                zztVar.q = j2 + this.o;
                zzleVar.b = new zzv(zztVar);
                return -5;
            }
        }
        return b;
    }

    public void D(boolean z, boolean z2) {
    }

    public void E(zzv[] zzvVarArr, long j, long j2, zzwg zzwgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void a(int i, zzpn zzpnVar, zzdn zzdnVar) {
        this.i = i;
        this.j = zzpnVar;
        this.k = zzdnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void d() {
        boolean z = true;
        if (this.l != 1) {
            z = false;
        }
        zzgqa.f(z);
        this.l = 2;
        v();
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public /* synthetic */ void e() {
    }

    @Override // com.google.android.gms.internal.ads.zzmk
    public final void f(zzmj zzmjVar) {
        synchronized (this.f9000c) {
            this.v = zzmjVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public /* synthetic */ boolean g(long j) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void i(long j, boolean z) {
        this.r = false;
        this.p = j;
        this.q = j;
        if (!z) {
            zzxw zzxwVar = this.m;
            zzxwVar.getClass();
            if (zzxwVar.a(j - this.o) != 0) {
                z = true;
            } else {
                z = false;
            }
        }
        u(j, false, z);
    }

    @Override // com.google.android.gms.internal.ads.zzmd
    public void l(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public long m(long j, long j2) {
        if (this.l == 1) {
            if (h() || k()) {
                return 1000000L;
            }
            return 10000L;
        }
        return 10000L;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void n(zzbf zzbfVar) {
        if (!Objects.equals(this.t, zzbfVar)) {
            this.t = zzbfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void o(zzv[] zzvVarArr, zzxw zzxwVar, long j, long j2, zzwg zzwgVar) {
        zzgqa.f(!this.r);
        this.m = zzxwVar;
        this.u = zzwgVar;
        if (this.q == Long.MIN_VALUE) {
            this.q = j;
        }
        this.n = zzvVarArr;
        this.o = j2;
        E(zzvVarArr, j, j2, zzwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void p(zzml zzmlVar, zzv[] zzvVarArr, zzxw zzxwVar, boolean z, boolean z2, long j, long j2, zzwg zzwgVar) {
        boolean z3;
        if (this.l == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzgqa.f(z3);
        this.h = zzmlVar;
        this.u = zzwgVar;
        this.l = 1;
        D(z, z2);
        o(zzvVarArr, zzxwVar, j, j2, zzwgVar);
        this.r = false;
        this.p = j;
        this.q = j;
        u(j, z, true);
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public /* synthetic */ void q(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final zzxw r() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final boolean t() {
        return this.q == Long.MIN_VALUE;
    }

    public void u(long j, boolean z, boolean z2) {
        throw null;
    }

    public void v() {
    }

    public void x() {
        throw null;
    }

    public void y() {
    }

    @Override // com.google.android.gms.internal.ads.zzmi, com.google.android.gms.internal.ads.zzmk
    public final int zza() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public zzlj zzd() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final int zze() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final long zzk() {
        return this.q;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzl() {
        this.r = true;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final boolean zzm() {
        return this.r;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzn() {
        zzxw zzxwVar = this.m;
        zzxwVar.getClass();
        zzxwVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzq() {
        boolean z;
        if (this.l == 2) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        this.l = 1;
        w();
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzr() {
        boolean z = true;
        if (this.l != 1) {
            z = false;
        }
        zzgqa.f(z);
        zzle zzleVar = this.g;
        zzleVar.f9082a = null;
        zzleVar.b = null;
        this.l = 0;
        this.m = null;
        this.n = null;
        this.r = false;
        x();
        this.u = null;
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzs() {
        boolean z;
        if (this.l == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        zzle zzleVar = this.g;
        zzleVar.f9082a = null;
        zzleVar.b = null;
        y();
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final void zzt() {
        boolean z;
        if (this.l == 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        z();
    }

    @Override // com.google.android.gms.internal.ads.zzmk
    public int zzu() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzmk
    public final void zzw() {
        synchronized (this.f9000c) {
            this.v = null;
        }
    }

    public void w() {
    }

    public void z() {
    }

    @Override // com.google.android.gms.internal.ads.zzmi
    public final zzij zzb() {
        return this;
    }
}
