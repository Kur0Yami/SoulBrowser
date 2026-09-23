package com.google.android.gms.internal.ads;

import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzvk implements zzwe, zzwd {

    /* renamed from: c, reason: collision with root package name */
    public final zzvy f9320c;
    public zzwd f;
    public zzvj[] g = new zzvj[0];
    public long h = 0;
    public long i;

    public zzvk(zzvy zzvyVar, long j) {
        this.f9320c = zzvyVar;
        this.i = j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        return this.f9320c.a(zzliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long b(long j) {
        this.h = -9223372036854775807L;
        for (zzvj zzvjVar : this.g) {
            if (zzvjVar != null) {
                zzvjVar.b = false;
            }
        }
        long b = this.f9320c.b(j);
        long j2 = this.i;
        long max = Math.max(b, 0L);
        if (j2 != Long.MIN_VALUE) {
            return Math.min(max, j2);
        }
        return max;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long c(long j, zzmq zzmqVar) {
        long j2;
        if (j == 0) {
            return 0L;
        }
        long j3 = zzmqVar.f9123a;
        String str = zzfj.f7405a;
        long max = Math.max(0L, Math.min(j3, j));
        long j4 = zzmqVar.b;
        long j5 = this.i;
        if (j5 == Long.MIN_VALUE) {
            j2 = LongCompanionObject.MAX_VALUE;
        } else {
            j2 = j5 - j;
        }
        long max2 = Math.max(0L, Math.min(j4, j2));
        if (max != j3 || max2 != j4) {
            zzmqVar = new zzmq(max, max2);
        }
        return this.f9320c.c(j, zzmqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void d(long j) {
        this.f9320c.d(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void e(zzwe zzweVar) {
        zzwd zzwdVar = this.f;
        zzwdVar.getClass();
        zzwdVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxx
    public final /* bridge */ /* synthetic */ void f(zzxy zzxyVar) {
        zzwd zzwdVar = this.f;
        zzwdVar.getClass();
        zzwdVar.f(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long g(zzzw[] zzzwVarArr, boolean[] zArr, zzxw[] zzxwVarArr, boolean[] zArr2, long j) {
        zzxw zzxwVar;
        int length = zzxwVarArr.length;
        this.g = new zzvj[length];
        zzxw[] zzxwVarArr2 = new zzxw[length];
        for (int i = 0; i < zzxwVarArr.length; i++) {
            zzvj[] zzvjVarArr = this.g;
            zzvj zzvjVar = (zzvj) zzxwVarArr[i];
            zzvjVarArr[i] = zzvjVar;
            if (zzvjVar != null) {
                zzxwVar = zzvjVar.f9318a;
            } else {
                zzxwVar = null;
            }
            zzxwVarArr2[i] = zzxwVar;
        }
        long g = this.f9320c.g(zzzwVarArr, zArr, zzxwVarArr2, zArr2, j);
        long j2 = this.i;
        long max = Math.max(g, j);
        if (j2 != Long.MIN_VALUE) {
            max = Math.min(max, j2);
        }
        long j3 = -9223372036854775807L;
        if (j()) {
            if (g >= j) {
                if (g != 0) {
                    for (zzzw zzzwVar : zzzwVarArr) {
                        if (zzzwVar != null) {
                            zzv zzc = zzzwVar.zzc();
                            if (!zzas.d(zzc.m, zzc.j)) {
                            }
                        }
                    }
                }
            }
            j3 = max;
            break;
        }
        this.h = j3;
        for (int i2 = 0; i2 < zzxwVarArr.length; i2++) {
            zzxw zzxwVar2 = zzxwVarArr2[i2];
            if (zzxwVar2 == null) {
                this.g[i2] = null;
            } else {
                zzvj[] zzvjVarArr2 = this.g;
                zzvj zzvjVar2 = zzvjVarArr2[i2];
                if (zzvjVar2 == null || zzvjVar2.f9318a != zzxwVar2) {
                    zzvjVarArr2[i2] = new zzvj(this, zzxwVar2);
                }
            }
            zzxwVarArr[i2] = this.g[i2];
        }
        return max;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void h(zzwd zzwdVar, long j) {
        this.f = zzwdVar;
        this.f9320c.h(this, j);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        this.f9320c.i(j);
    }

    public final boolean j() {
        return this.h != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void zzc() {
        this.f9320c.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final zzyh zzd() {
        return this.f9320c.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long zzh() {
        if (j()) {
            long j = this.h;
            this.h = -9223372036854775807L;
            long zzh = zzh();
            if (zzh != -9223372036854775807L) {
                return zzh;
            }
            return j;
        }
        long zzh2 = this.f9320c.zzh();
        if (zzh2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.i;
        long max = Math.max(zzh2, 0L);
        if (j2 != Long.MIN_VALUE) {
            return Math.min(max, j2);
        }
        return max;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        long zzi = this.f9320c.zzi();
        if (zzi != Long.MIN_VALUE) {
            long j = this.i;
            if (j == Long.MIN_VALUE || zzi < j) {
                return zzi;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        long zzl = this.f9320c.zzl();
        if (zzl != Long.MIN_VALUE) {
            long j = this.i;
            if (j == Long.MIN_VALUE || zzl < j) {
                return zzl;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        return this.f9320c.zzn();
    }
}
