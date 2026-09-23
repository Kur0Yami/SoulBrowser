package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzahh implements zzaeo {
    public zzaer b;

    /* renamed from: c, reason: collision with root package name */
    public zzaep f4033c;
    public zzafw d;
    public zzakp e;
    public int g;
    public long h;
    public int i;

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4032a = new zzer(16);
    public long j = -1;
    public int f = 0;

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        if (j == 0) {
            this.f = 0;
            this.i = 0;
            this.j = -1L;
            if (this.e != null) {
                this.e = null;
                return;
            }
            return;
        }
        if (this.f == 3) {
            zzakp zzakpVar = this.e;
            zzakpVar.getClass();
            zzakpVar.c(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        int i;
        zzer zzerVar = new zzer(16);
        boolean z = true;
        while (true) {
            zzerVar.y(8);
            zzaef zzaefVar = (zzaef) zzaepVar;
            if (!zzaefVar.m(zzerVar.f6834a, 0, 8, true)) {
                break;
            }
            long P = zzerVar.P();
            int b = zzerVar.b();
            if (P == 1) {
                if (!zzaefVar.m(zzerVar.f6834a, 8, 8, true)) {
                    break;
                }
                P = zzerVar.j();
                i = 16;
            } else {
                i = 8;
            }
            long j = i;
            if (P < j) {
                break;
            }
            int i2 = (int) (P - j);
            if (z) {
                if (b != 1718909296 || i2 < 8) {
                    break;
                }
                zzerVar.y(4);
                zzaefVar.m(zzerVar.f6834a, 0, 4, false);
                if (zzerVar.b() != 1751476579) {
                    break;
                }
                zzaefVar.e(i2 - 4, false);
            } else {
                if (b == 1836086884) {
                    return true;
                }
                if (i2 != 0) {
                    zzaefVar.e(i2, false);
                }
            }
            z = false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final int e(zzaep zzaepVar, zzafo zzafoVar) {
        while (true) {
            int i = this.f;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return -1;
                        }
                        if (this.d == null || zzaepVar != this.f4033c) {
                            this.f4033c = zzaepVar;
                            this.d = new zzafw(zzaepVar, this.j);
                        }
                        zzakp zzakpVar = this.e;
                        zzakpVar.getClass();
                        int e = zzakpVar.e(this.d, zzafoVar);
                        if (e == 1) {
                            zzafoVar.f3983a += this.j;
                        }
                        return e;
                    }
                    if (this.e == null) {
                        this.e = new zzakp(zzalw.f4170a, 8);
                    }
                    zzafw zzafwVar = new zzafw(zzaepVar, this.j);
                    this.d = zzafwVar;
                    if (this.e.d(zzafwVar)) {
                        zzakp zzakpVar2 = this.e;
                        long j = this.j;
                        zzaer zzaerVar = this.b;
                        zzaerVar.getClass();
                        zzakpVar2.f(new zzafy(j, zzaerVar));
                        this.f = 3;
                    } else {
                        zzaer zzaerVar2 = this.b;
                        zzaerVar2.getClass();
                        zzaerVar2.zzv();
                        this.b.e(new zzafq(-9223372036854775807L, 0L));
                        this.f = 4;
                    }
                } else {
                    zzaepVar.zzf((int) (this.h - this.i));
                    this.i = 0;
                    this.f = 0;
                }
            } else {
                int i2 = this.i;
                zzer zzerVar = this.f4032a;
                if (i2 == 0) {
                    if (!zzaepVar.k(zzerVar.f6834a, 0, 8, true)) {
                        zzaer zzaerVar3 = this.b;
                        zzaerVar3.getClass();
                        zzaerVar3.zzv();
                        this.b.e(new zzafq(-9223372036854775807L, 0L));
                        this.f = 4;
                        return -1;
                    }
                    this.i = 8;
                    zzerVar.E(0);
                    this.h = zzerVar.P();
                    this.g = zzerVar.b();
                }
                long j2 = this.h;
                if (j2 == 1) {
                    zzaepVar.i(zzerVar.f6834a, 8, 8);
                    this.i += 8;
                    j2 = zzerVar.j();
                    this.h = j2;
                }
                if (this.g == 1836086884) {
                    long zzn = zzaepVar.zzn();
                    this.j = zzn;
                    long j3 = this.i;
                    zzain zzainVar = new zzain(0L, zzn - j3, -9223372036854775807L, zzn, j2 - j3);
                    zzaer zzaerVar4 = this.b;
                    zzaerVar4.getClass();
                    zzaga f = zzaerVar4.f(1024, 4);
                    zzt zztVar = new zzt();
                    zztVar.d("image/heic");
                    zztVar.j = new zzap(zzainVar);
                    f.e(new zzv(zztVar));
                    this.f = 2;
                } else {
                    this.f = 1;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        this.b = zzaerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
        if (this.e != null) {
            this.e = null;
        }
    }
}
