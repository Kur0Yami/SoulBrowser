package com.google.android.gms.internal.ads;

import android.util.Pair;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlk {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9089a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final zzxw[] f9090c;
    public boolean d;
    public boolean e;
    public boolean f;
    public zzll g;
    public boolean h;
    public final boolean[] i;
    public final zzmk[] j;
    public final zzaad k;
    public final zzlz l;
    public zzlk m;
    public zzyh n;
    public zzaae o;
    public long p;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [com.google.android.gms.internal.ads.zzvk] */
    public zzlk(zzmk[] zzmkVarArr, long j, zzaad zzaadVar, zzaah zzaahVar, zzlz zzlzVar, zzll zzllVar, zzaae zzaaeVar) {
        this.j = zzmkVarArr;
        this.p = j;
        this.k = zzaadVar;
        this.l = zzlzVar;
        zzwg zzwgVar = zzllVar.f9091a;
        this.b = zzwgVar.f9337a;
        this.g = zzllVar;
        this.n = zzyh.d;
        this.o = zzaaeVar;
        this.f9090c = new zzxw[2];
        this.i = new boolean[2];
        long j2 = zzllVar.b;
        long j3 = zzllVar.d;
        zzlzVar.getClass();
        int i = zzmg.k;
        Pair pair = (Pair) zzwgVar.f9337a;
        Object obj = pair.first;
        zzwg a2 = zzwgVar.a(pair.second);
        zzlw zzlwVar = (zzlw) zzlzVar.d.get(obj);
        zzlwVar.getClass();
        zzlzVar.g.add(zzlwVar);
        zzlv zzlvVar = (zzlv) zzlzVar.f.get(zzlwVar);
        if (zzlvVar != null) {
            zzlvVar.f9102a.h(zzlvVar.b);
        }
        zzlwVar.f9105c.add(a2);
        zzvy j4 = zzlwVar.f9104a.j(a2, zzaahVar, j2);
        zzlzVar.f9108c.put(j4, zzlwVar);
        zzlzVar.k();
        this.f9089a = j3 != -9223372036854775807L ? new zzvk(j4, j3) : j4;
    }

    public final long a() {
        return this.g.b + this.p;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    public final boolean b() {
        if (this.e) {
            if (!this.f || this.f9089a.zzi() == Long.MIN_VALUE) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean c() {
        if (this.e) {
            if (b() || d() - this.g.b >= -9223372036854775807L) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    public final long d() {
        long j;
        if (!this.e) {
            return this.g.b;
        }
        if (this.f) {
            j = this.f9089a.zzi();
        } else {
            j = Long.MIN_VALUE;
        }
        if (j == Long.MIN_VALUE) {
            return this.g.e;
        }
        return j;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    public final void e(zzbf zzbfVar) {
        this.e = true;
        this.n = this.f9089a.zzd();
        zzaae f = f(zzbfVar);
        zzll zzllVar = this.g;
        long j = zzllVar.b;
        long j2 = zzllVar.e;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long g = g(f, j, false, new boolean[2]);
        long j3 = this.p;
        zzll zzllVar2 = this.g;
        this.p = (zzllVar2.b - g) + j3;
        this.g = zzllVar2.a(g);
    }

    public final zzaae f(zzbf zzbfVar) {
        zzzw[] zzzwVarArr;
        zzyh zzyhVar = this.n;
        zzwg zzwgVar = this.g.f9091a;
        zzaad zzaadVar = this.k;
        zzmk[] zzmkVarArr = this.j;
        zzaae f = zzaadVar.f(zzmkVarArr, zzyhVar, zzwgVar, zzbfVar);
        int i = 0;
        while (true) {
            int i2 = f.f3844a;
            zzzwVarArr = f.f3845c;
            if (i >= i2) {
                break;
            }
            boolean z = true;
            if (f.a(i)) {
                if (zzzwVarArr[i] == null) {
                    zzmkVarArr[i].getClass();
                    z = false;
                }
                zzgqa.f(z);
            } else {
                if (zzzwVarArr[i] != null) {
                    z = false;
                }
                zzgqa.f(z);
            }
            i++;
        }
        for (zzzw zzzwVar : zzzwVarArr) {
        }
        return f;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    public final long g(zzaae zzaaeVar, long j, boolean z, boolean[] zArr) {
        zzmk[] zzmkVarArr;
        boolean z2;
        int i = 0;
        while (true) {
            boolean z3 = true;
            if (i >= zzaaeVar.f3844a) {
                break;
            }
            if (z || !zzaaeVar.b(this.o, i)) {
                z3 = false;
            }
            this.i[i] = z3;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzmkVarArr = this.j;
            if (i2 >= 2) {
                break;
            }
            zzmkVarArr[i2].getClass();
            i2++;
        }
        l();
        this.o = zzaaeVar;
        if (this.m == null) {
            int i3 = 0;
            while (true) {
                zzaae zzaaeVar2 = this.o;
                if (i3 >= zzaaeVar2.f3844a) {
                    break;
                }
                zzaaeVar2.a(i3);
                zzzw zzzwVar = this.o.f3845c[i3];
                i3++;
            }
        }
        zzzw[] zzzwVarArr = zzaaeVar.f3845c;
        ?? r5 = this.f9089a;
        boolean[] zArr2 = this.i;
        zzxw[] zzxwVarArr = this.f9090c;
        long g = r5.g(zzzwVarArr, zArr2, zzxwVarArr, zArr, j);
        for (int i4 = 0; i4 < 2; i4++) {
            zzmkVarArr[i4].getClass();
        }
        this.f = false;
        for (int i5 = 0; i5 < 2; i5++) {
            if (zzxwVarArr[i5] != null) {
                zzgqa.f(zzaaeVar.a(i5));
                zzmkVarArr[i5].getClass();
                this.f = true;
            } else {
                if (zzzwVarArr[i5] == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzgqa.f(z2);
            }
        }
        return g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzwe, java.lang.Object] */
    public final void h() {
        l();
        ?? r0 = this.f9089a;
        try {
            boolean z = r0 instanceof zzvk;
            zzlz zzlzVar = this.l;
            if (z) {
                zzlzVar.d(((zzvk) r0).f9320c);
            } else {
                zzlzVar.d(r0);
            }
        } catch (RuntimeException e) {
            zzee.f("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final zzlk i() {
        return this.m;
    }

    public final zzyh j() {
        return this.n;
    }

    public final zzaae k() {
        return this.o;
    }

    public final void l() {
        if (this.m == null) {
            int i = 0;
            while (true) {
                zzaae zzaaeVar = this.o;
                if (i < zzaaeVar.f3844a) {
                    zzaaeVar.a(i);
                    zzzw zzzwVar = this.o.f3845c[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
