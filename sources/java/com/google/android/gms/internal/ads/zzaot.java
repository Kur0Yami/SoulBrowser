package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaot implements zzaog {
    public String e;
    public zzaga f;
    public boolean i;
    public int k;
    public int l;
    public int n;
    public int o;
    public int s;
    public boolean u;
    public int d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4294a = new zzer(new byte[15], 2);
    public final zzeq b = new zzeq();

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4295c = new zzer();
    public final zzaou p = new Object();
    public int q = -2147483647;
    public int r = -1;
    public long t = -1;
    public boolean j = true;
    public boolean m = true;
    public double g = -9.223372036854776E18d;
    public double h = -9.223372036854776E18d;

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.k = i;
        if (!this.j && (this.o != 0 || !this.m)) {
            this.i = true;
        }
        if (j != -9223372036854775807L) {
            double d = j;
            if (this.i) {
                this.h = d;
            } else {
                this.g = d;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:207:0x02b0. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:213:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x04be A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzaog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(com.google.android.gms.internal.ads.zzer r28) {
        /*
            Method dump skipped, instructions count: 1404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaot.x(com.google.android.gms.internal.ads.zzer):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.e = zzapuVar.e;
        zzapuVar.b();
        this.f = zzaerVar.f(zzapuVar.d, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.d = 0;
        this.l = 0;
        this.f4294a.y(2);
        this.n = 0;
        this.o = 0;
        this.q = -2147483647;
        this.r = -1;
        this.s = 0;
        this.t = -1L;
        this.u = false;
        this.i = false;
        this.m = true;
        this.j = true;
        this.g = -9.223372036854776E18d;
        this.h = -9.223372036854776E18d;
    }
}
