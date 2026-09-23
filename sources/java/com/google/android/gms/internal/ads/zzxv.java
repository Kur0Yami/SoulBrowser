package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import j$.util.Objects;
import java.io.EOFException;

/* loaded from: classes.dex */
public final class zzxv implements zzaga {
    public boolean A;

    /* renamed from: a, reason: collision with root package name */
    public final zzxq f9377a;
    public final zztk d;
    public zzxu e;
    public zzv f;
    public zztd g;
    public int o;
    public int p;
    public int q;
    public int r;
    public boolean v;
    public zzv y;
    public final zzxr b = new Object();
    public int h = 1000;
    public long[] i = new long[1000];
    public long[] j = new long[1000];
    public long[] m = new long[1000];
    public int[] l = new int[1000];
    public int[] k = new int[1000];
    public zzafz[] n = new zzafz[1000];

    /* renamed from: c, reason: collision with root package name */
    public final zzyc f9378c = new zzyc();
    public long s = Long.MIN_VALUE;
    public long t = Long.MIN_VALUE;
    public long u = Long.MIN_VALUE;
    public boolean x = true;
    public boolean w = true;
    public boolean z = true;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzxr, java.lang.Object] */
    public zzxv(zzaah zzaahVar, zztk zztkVar, zztf zztfVar) {
        this.d = zztkVar;
        this.f9377a = new zzxq(zzaahVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int a(zzj zzjVar, int i, boolean z) {
        zzxq zzxqVar = this.f9377a;
        int b = zzxqVar.b(i);
        zzxp zzxpVar = zzxqVar.e;
        zzaaf zzaafVar = zzxpVar.f9370c;
        byte[] bArr = zzaafVar.f3846a;
        long j = zzxqVar.f - zzxpVar.f9369a;
        zzaafVar.getClass();
        int b2 = zzjVar.b(bArr, (int) j, b);
        if (b2 == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j2 = zzxqVar.f + b2;
        zzxqVar.f = j2;
        zzxp zzxpVar2 = zzxqVar.e;
        if (j2 == zzxpVar2.b) {
            zzxqVar.e = zzxpVar2.d;
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void b(int i, zzer zzerVar) {
        c(zzerVar, i, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void c(zzer zzerVar, int i, int i2) {
        while (true) {
            zzxq zzxqVar = this.f9377a;
            if (i > 0) {
                int b = zzxqVar.b(i);
                zzxp zzxpVar = zzxqVar.e;
                zzaaf zzaafVar = zzxpVar.f9370c;
                byte[] bArr = zzaafVar.f3846a;
                long j = zzxqVar.f - zzxpVar.f9369a;
                zzaafVar.getClass();
                zzerVar.H(bArr, (int) j, b);
                i -= b;
                long j2 = zzxqVar.f + b;
                zzxqVar.f = j2;
                zzxp zzxpVar2 = zzxqVar.e;
                if (j2 == zzxpVar2.b) {
                    zzxqVar.e = zzxpVar2.d;
                }
            } else {
                zzxqVar.getClass();
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b7, code lost:
    
        if (((com.google.android.gms.internal.ads.zzxt) r10.b.valueAt(r11.size() - 1)).f9376a.equals(r9.y) == false) goto L41;
     */
    @Override // com.google.android.gms.internal.ads.zzaga
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(long r10, int r12, int r13, int r14, com.google.android.gms.internal.ads.zzafz r15) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzxv.d(long, int, int, int, com.google.android.gms.internal.ads.zzafz):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void e(zzv zzvVar) {
        boolean z;
        boolean z2;
        synchronized (this) {
            z = false;
            try {
                this.x = false;
                if (!Objects.equals(zzvVar, this.y)) {
                    zzyc zzycVar = this.f9378c;
                    if (zzycVar.b.size() == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        if (((zzxt) zzycVar.b.valueAt(r2.size() - 1)).f9376a.equals(zzvVar)) {
                            this.y = ((zzxt) zzycVar.b.valueAt(r6.size() - 1)).f9376a;
                            boolean z3 = this.z;
                            zzv zzvVar2 = this.y;
                            this.z = z3 & zzas.d(zzvVar2.m, zzvVar2.j);
                            this.A = false;
                            z = true;
                        }
                    }
                    this.y = zzvVar;
                    boolean z32 = this.z;
                    zzv zzvVar22 = this.y;
                    this.z = z32 & zzas.d(zzvVar22.m, zzvVar22.j);
                    this.A = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzxu zzxuVar = this.e;
        if (zzxuVar != null && z) {
            zzxk zzxkVar = (zzxk) zzxuVar;
            zzxkVar.s.post(zzxkVar.q);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int f(zzj zzjVar, int i, boolean z) {
        return a(zzjVar, i, z);
    }

    public final synchronized void g() {
        this.r = 0;
        zzxq zzxqVar = this.f9377a;
        zzxqVar.d = zzxqVar.f9372c;
    }

    public final void h(zzv zzvVar, zzle zzleVar) {
        zzq zzqVar;
        zzv zzvVar2 = this.f;
        if (zzvVar2 == null) {
            zzqVar = null;
        } else {
            zzqVar = zzvVar2.q;
        }
        this.f = zzvVar;
        zzq zzqVar2 = zzvVar.q;
        zztk zztkVar = this.d;
        int b = zztkVar.b(zzvVar);
        zzt zztVar = new zzt(zzvVar);
        zztVar.K = b;
        zzleVar.b = new zzv(zztVar);
        zzleVar.f9082a = this.g;
        if (zzvVar2 != null && Objects.equals(zzqVar, zzqVar2)) {
            return;
        }
        zztl a2 = zztkVar.a(zzvVar);
        this.g = a2;
        zzleVar.f9082a = a2;
    }

    public final int i(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.m[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.l[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.h) {
                i = 0;
            }
        }
        return i3;
    }

    public final long j(int i) {
        long j = this.t;
        long j2 = Long.MIN_VALUE;
        int i2 = 0;
        if (i != 0) {
            int k = k(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.m[k]);
                if ((this.l[k] & 1) != 0) {
                    break;
                }
                k--;
                if (k == -1) {
                    k = this.h - 1;
                }
            }
        }
        this.t = Math.max(j, j2);
        this.o -= i;
        int i4 = this.p + i;
        this.p = i4;
        int i5 = this.q + i;
        this.q = i5;
        int i6 = this.h;
        if (i5 >= i6) {
            this.q = i5 - i6;
        }
        int i7 = this.r - i;
        this.r = i7;
        if (i7 < 0) {
            this.r = 0;
        }
        while (true) {
            zzyc zzycVar = this.f9378c;
            SparseArray sparseArray = zzycVar.b;
            if (i2 >= sparseArray.size() - 1) {
                break;
            }
            int i8 = i2 + 1;
            if (i4 < sparseArray.keyAt(i8)) {
                break;
            }
            zzycVar.f9383c.zza(sparseArray.valueAt(i2));
            sparseArray.removeAt(i2);
            int i9 = zzycVar.f9382a;
            if (i9 > 0) {
                zzycVar.f9382a = i9 - 1;
            }
            i2 = i8;
        }
        if (this.o == 0) {
            int i10 = this.q;
            if (i10 == 0) {
                i10 = this.h;
            }
            return this.j[i10 - 1] + this.k[r12];
        }
        return this.j[this.q];
    }

    public final int k(int i) {
        int i2 = this.q + i;
        int i3 = this.h;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final void l(boolean z) {
        boolean z2;
        zzyc zzycVar;
        SparseArray sparseArray;
        zzxq zzxqVar = this.f9377a;
        zzaah zzaahVar = zzxqVar.f9371a;
        zzxp zzxpVar = zzxqVar.f9372c;
        if (zzxpVar.f9370c != null) {
            zzaahVar.a(zzxpVar);
            zzxpVar.f9370c = null;
            zzxpVar.d = null;
        }
        zzxp zzxpVar2 = zzxqVar.f9372c;
        int i = 0;
        if (zzxpVar2.f9370c == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.f(z2);
        zzxpVar2.f9369a = 0L;
        zzxpVar2.b = PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
        zzxp zzxpVar3 = zzxqVar.f9372c;
        zzxqVar.d = zzxpVar3;
        zzxqVar.e = zzxpVar3;
        zzxqVar.f = 0L;
        zzaahVar.zzd();
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.w = true;
        this.s = Long.MIN_VALUE;
        this.t = Long.MIN_VALUE;
        this.u = Long.MIN_VALUE;
        this.v = false;
        while (true) {
            zzycVar = this.f9378c;
            sparseArray = zzycVar.b;
            if (i >= sparseArray.size()) {
                break;
            }
            zzdr zzdrVar = zzycVar.f9383c;
            Object valueAt = sparseArray.valueAt(i);
            ((zzxs) zzdrVar).getClass();
            ((zzxt) valueAt).getClass();
            i++;
        }
        zzycVar.f9382a = -1;
        sparseArray.clear();
        if (z) {
            this.y = null;
            this.x = true;
            this.z = true;
        }
    }

    public final synchronized zzv m() {
        if (this.x) {
            return null;
        }
        return this.y;
    }

    public final synchronized long n() {
        return this.u;
    }

    public final synchronized boolean o(boolean z) {
        boolean z2;
        int i = this.r;
        boolean z3 = false;
        if (i != this.o) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            if (!z && !this.v) {
                zzv zzvVar = this.y;
                if (zzvVar != null) {
                    if (zzvVar == this.f) {
                        return false;
                    }
                }
                return z3;
            }
            z3 = true;
            return z3;
        }
        if (((zzxt) this.f9378c.a(this.p + i)).f9376a != this.f) {
            return true;
        }
        int k = k(this.r);
        if (this.g != null) {
            int i2 = this.l[k];
        } else {
            z3 = true;
        }
        return z3;
    }

    public final synchronized boolean p(long j, boolean z) {
        Throwable th;
        boolean z2;
        zzxv zzxvVar;
        long j2;
        int i;
        try {
            try {
                g();
                int i2 = this.r;
                int k = k(i2);
                int i3 = this.r;
                int i4 = this.o;
                if (i3 != i4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2 && j >= this.m[k]) {
                    if (j > this.u) {
                        if (z) {
                            z = true;
                        }
                    }
                    if (this.z) {
                        i = i4 - i2;
                        int i5 = 0;
                        while (true) {
                            if (i5 < i) {
                                try {
                                    if (this.m[k] < j) {
                                        k++;
                                        if (k == this.h) {
                                            k = 0;
                                        }
                                        i5++;
                                    } else {
                                        zzxvVar = this;
                                        j2 = j;
                                        i = i5;
                                        break;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            } else {
                                zzxvVar = this;
                                j2 = j;
                                if (!z) {
                                    i = -1;
                                }
                            }
                        }
                    } else {
                        zzxvVar = this;
                        j2 = j;
                        i = zzxvVar.i(k, i4 - i2, j2, true);
                    }
                    if (i == -1) {
                        return false;
                    }
                    zzxvVar.s = j2;
                    zzxvVar.r += i;
                    return true;
                }
                return false;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final synchronized void q(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.r + i <= this.o) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzgqa.a(z);
        this.r += i;
    }

    public final void r() {
        long j;
        zzxq zzxqVar = this.f9377a;
        synchronized (this) {
            int i = this.o;
            if (i == 0) {
                j = -1;
            } else {
                j = j(i);
            }
        }
        zzxqVar.a(j);
    }
}
