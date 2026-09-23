package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzvy implements zzwe, zzwd {

    /* renamed from: c, reason: collision with root package name */
    public final zzwg f9333c;
    public final long f;
    public final zzaah g;
    public zzwi h;
    public zzwe i;
    public zzwd j;
    public long k = -9223372036854775807L;

    public zzvy(zzwg zzwgVar, zzaah zzaahVar, long j) {
        this.f9333c = zzwgVar;
        this.g = zzaahVar;
        this.f = j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        zzwe zzweVar = this.i;
        if (zzweVar != null && zzweVar.a(zzliVar)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long b(long j) {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.b(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long c(long j, zzmq zzmqVar) {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.c(j, zzmqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void d(long j) {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        zzweVar.d(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void e(zzwe zzweVar) {
        zzwd zzwdVar = this.j;
        String str = zzfj.f7405a;
        zzwdVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxx
    public final /* bridge */ /* synthetic */ void f(zzxy zzxyVar) {
        zzwd zzwdVar = this.j;
        String str = zzfj.f7405a;
        zzwdVar.f(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long g(zzzw[] zzzwVarArr, boolean[] zArr, zzxw[] zzxwVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.k;
        if (j3 != -9223372036854775807L && j == this.f) {
            j2 = j3;
        } else {
            j2 = j;
        }
        this.k = -9223372036854775807L;
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.g(zzzwVarArr, zArr, zzxwVarArr, zArr2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void h(zzwd zzwdVar, long j) {
        this.j = zzwdVar;
        zzwe zzweVar = this.i;
        if (zzweVar != null) {
            long j2 = this.k;
            if (j2 == -9223372036854775807L) {
                j2 = this.f;
            }
            zzweVar.h(this, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        zzweVar.i(j);
    }

    public final void j(zzwg zzwgVar) {
        long j = this.k;
        if (j == -9223372036854775807L) {
            j = this.f;
        }
        zzwi zzwiVar = this.h;
        zzwiVar.getClass();
        zzwe j2 = zzwiVar.j(zzwgVar, this.g, j);
        this.i = j2;
        if (this.j != null) {
            j2.h(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void zzc() {
        zzwe zzweVar = this.i;
        if (zzweVar != null) {
            zzweVar.zzc();
            return;
        }
        zzwi zzwiVar = this.h;
        if (zzwiVar != null) {
            zzwiVar.zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final zzyh zzd() {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long zzh() {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        zzwe zzweVar = this.i;
        String str = zzfj.f7405a;
        return zzweVar.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        zzwe zzweVar = this.i;
        if (zzweVar != null && zzweVar.zzn()) {
            return true;
        }
        return false;
    }
}
