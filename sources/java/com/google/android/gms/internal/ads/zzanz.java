package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzanz implements zzaog {

    /* renamed from: a, reason: collision with root package name */
    public final zzeq f4259a;
    public final zzer b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4260c;
    public final int d;
    public final String e;
    public String f;
    public zzaga g;
    public int h;
    public int i;
    public boolean j;
    public long k;
    public zzv l;
    public int m;
    public long n;

    public zzanz(String str, int i, String str2) {
        zzeq zzeqVar = new zzeq(new byte[16], 16);
        this.f4259a = zzeqVar;
        this.b = new zzer(zzeqVar.f6806a);
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = -9223372036854775807L;
        this.f4260c = str;
        this.d = i;
        this.e = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void v(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void w(int i, long j) {
        this.n = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void x(zzer zzerVar) {
        boolean z;
        boolean z2;
        this.g.getClass();
        while (zzerVar.B() > 0) {
            int i = this.h;
            zzer zzerVar2 = this.b;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(zzerVar.B(), this.m - this.i);
                    this.g.b(min, zzerVar);
                    int i2 = this.i + min;
                    this.i = i2;
                    if (i2 == this.m) {
                        if (this.n == -9223372036854775807L) {
                            z3 = false;
                        }
                        zzgqa.f(z3);
                        this.g.d(this.n, 1, this.m, 0, null);
                        this.n += this.k;
                        this.h = 0;
                    }
                } else {
                    byte[] bArr = zzerVar2.f6834a;
                    int min2 = Math.min(zzerVar.B(), 16 - this.i);
                    zzerVar.H(bArr, this.i, min2);
                    int i3 = this.i + min2;
                    this.i = i3;
                    if (i3 == 16) {
                        zzeq zzeqVar = this.f4259a;
                        zzeqVar.d(0);
                        zzadr a2 = zzads.a(zzeqVar);
                        int i4 = a2.f3932a;
                        zzv zzvVar = this.l;
                        if (zzvVar == null || zzvVar.E != 2 || i4 != zzvVar.F || !"audio/ac4".equals(zzvVar.m)) {
                            zzt zztVar = new zzt();
                            zztVar.f9265a = this.f;
                            zztVar.d(this.e);
                            zztVar.e("audio/ac4");
                            zztVar.D = 2;
                            zztVar.E = i4;
                            zztVar.d = this.f4260c;
                            zztVar.f = this.d;
                            zzv zzvVar2 = new zzv(zztVar);
                            this.l = zzvVar2;
                            this.g.e(zzvVar2);
                        }
                        this.m = a2.b;
                        this.k = (a2.f3933c * 1000000) / this.l.F;
                        zzerVar2.E(0);
                        this.g.b(16, zzerVar2);
                        this.h = 2;
                    }
                }
            } else {
                while (zzerVar.B() > 0) {
                    if (!this.j) {
                        if (zzerVar.K() == 172) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.j = z;
                    } else {
                        int K = zzerVar.K();
                        if (K == 172) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.j = z2;
                        byte b = 64;
                        if (K != 64) {
                            if (K == 65) {
                                K = 65;
                            }
                        }
                        this.h = 1;
                        byte[] bArr2 = zzerVar2.f6834a;
                        bArr2[0] = -84;
                        if (K == 65) {
                            b = 65;
                        }
                        bArr2[1] = b;
                        this.i = 2;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void y(zzaer zzaerVar, zzapu zzapuVar) {
        zzapuVar.a();
        zzapuVar.b();
        this.f = zzapuVar.e;
        zzapuVar.b();
        this.g = zzaerVar.f(zzapuVar.d, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzaog
    public final void zza() {
        this.h = 0;
        this.i = 0;
        this.j = false;
        this.n = -9223372036854775807L;
    }
}
