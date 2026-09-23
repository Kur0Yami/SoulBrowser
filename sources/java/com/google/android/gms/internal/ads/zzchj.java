package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzchj implements zzlg {

    /* renamed from: a, reason: collision with root package name */
    public final zzaan f5150a = new zzaan();
    public long b = 15000000;

    /* renamed from: c, reason: collision with root package name */
    public long f5151c = 30000000;
    public long d = 2500000;
    public long e = 5000000;
    public int f;
    public boolean g;

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void a(zzpn zzpnVar) {
        this.f = 0;
        this.g = false;
        zzaan zzaanVar = this.f5150a;
        synchronized (zzaanVar) {
            zzaanVar.c(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void b(zzlf zzlfVar, zzzw[] zzzwVarArr) {
        int i;
        this.f = 0;
        for (zzzw zzzwVar : zzzwVarArr) {
            if (zzzwVar != null) {
                int i2 = this.f;
                int i3 = zzzwVar.zza().f4646c;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            i = 131072;
                            if (i3 != 3 && i3 != 5 && i3 != 6) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            i = 131072000;
                        }
                    } else {
                        i = 13107200;
                    }
                } else {
                    i = 144310272;
                }
                this.f = i2 + i;
            }
        }
        this.f5150a.c(this.f);
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final zzaah c(zzpn zzpnVar) {
        return this.f5150a;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean d(zzlf zzlfVar) {
        long j = zzlfVar.f ? this.e : this.d;
        return j <= 0 || zzlfVar.d >= j;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void e(zzpn zzpnVar) {
        this.f = 0;
        this.g = false;
        zzaan zzaanVar = this.f5150a;
        synchronized (zzaanVar) {
            zzaanVar.c(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean f(zzlf zzlfVar) {
        char c2;
        int i;
        long j = zzlfVar.d;
        boolean z = true;
        if (j > this.f5151c) {
            c2 = 0;
        } else if (j < this.b) {
            c2 = 2;
        } else {
            c2 = 1;
        }
        zzaan zzaanVar = this.f5150a;
        synchronized (zzaanVar) {
            i = zzaanVar.b * 65536;
        }
        int i2 = this.f;
        if (c2 != 2 && (c2 != 1 || !this.g || i >= i2)) {
            z = false;
        }
        this.g = z;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final void g(zzpn zzpnVar) {
        this.f = 0;
        this.g = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzlg
    public final boolean zzj() {
        zzee.c("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }
}
