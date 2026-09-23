package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzye implements zzwe, zzwd {

    /* renamed from: c, reason: collision with root package name */
    public final zzwe f9385c;
    public final long f;
    public zzwd g;

    public zzye(zzwe zzweVar, long j) {
        this.f9385c = zzweVar;
        this.f = j;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzlh, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        long j = zzliVar.f9087a;
        ?? obj = new Object();
        obj.b = zzliVar.b;
        obj.f9086c = zzliVar.f9088c;
        obj.f9085a = j - this.f;
        return this.f9385c.a(new zzli(obj));
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long b(long j) {
        zzwe zzweVar = this.f9385c;
        long j2 = this.f;
        return zzweVar.b(j - j2) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long c(long j, zzmq zzmqVar) {
        zzwe zzweVar = this.f9385c;
        long j2 = this.f;
        return zzweVar.c(j - j2, zzmqVar) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void d(long j) {
        this.f9385c.d(j - this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void e(zzwe zzweVar) {
        zzwd zzwdVar = this.g;
        zzwdVar.getClass();
        zzwdVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxx
    public final /* bridge */ /* synthetic */ void f(zzxy zzxyVar) {
        zzwd zzwdVar = this.g;
        zzwdVar.getClass();
        zzwdVar.f(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long g(zzzw[] zzzwVarArr, boolean[] zArr, zzxw[] zzxwVarArr, boolean[] zArr2, long j) {
        zzxw[] zzxwVarArr2 = new zzxw[zzxwVarArr.length];
        int i = 0;
        while (true) {
            zzxw zzxwVar = null;
            if (i >= zzxwVarArr.length) {
                break;
            }
            zzyd zzydVar = (zzyd) zzxwVarArr[i];
            if (zzydVar != null) {
                zzxwVar = zzydVar.f9384a;
            }
            zzxwVarArr2[i] = zzxwVar;
            i++;
        }
        long j2 = this.f;
        long g = this.f9385c.g(zzzwVarArr, zArr, zzxwVarArr2, zArr2, j - j2);
        for (int i2 = 0; i2 < zzxwVarArr.length; i2++) {
            zzxw zzxwVar2 = zzxwVarArr2[i2];
            if (zzxwVar2 == null) {
                zzxwVarArr[i2] = null;
            } else {
                zzxw zzxwVar3 = zzxwVarArr[i2];
                if (zzxwVar3 == null || ((zzyd) zzxwVar3).f9384a != zzxwVar2) {
                    zzxwVarArr[i2] = new zzyd(zzxwVar2, j2);
                }
            }
        }
        return g + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void h(zzwd zzwdVar, long j) {
        this.g = zzwdVar;
        this.f9385c.h(this, j - this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        this.f9385c.i(j - this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void zzc() {
        this.f9385c.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final zzyh zzd() {
        return this.f9385c.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long zzh() {
        long zzh = this.f9385c.zzh();
        if (zzh == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzh + this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        long zzi = this.f9385c.zzi();
        if (zzi == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzi + this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        long zzl = this.f9385c.zzl();
        if (zzl == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzl + this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        return this.f9385c.zzn();
    }
}
