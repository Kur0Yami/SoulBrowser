package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmm {

    /* renamed from: a, reason: collision with root package name */
    public final zzmi f9118a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzmi f9119c;
    public int d = 0;
    public boolean e = false;
    public boolean f = false;

    public zzmm(zzmi zzmiVar, zzmi zzmiVar2, int i) {
        this.f9118a = zzmiVar;
        this.b = i;
        this.f9119c = zzmiVar2;
    }

    public static boolean l(zzmi zzmiVar) {
        if (zzmiVar.zze() != 0) {
            return true;
        }
        return false;
    }

    public final boolean A(zzlk zzlkVar) {
        zzmi m = m(zzlkVar);
        if (m != null && !m.t() && !m.h() && !m.k()) {
            return false;
        }
        return true;
    }

    public final void B() {
        zzmi zzmiVar = this.f9118a;
        if (zzmiVar.zze() == 1 && this.d != 4) {
            zzmiVar.d();
            return;
        }
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 != null && zzmiVar2.zze() == 1 && this.d != 3) {
            zzmiVar2.d();
        }
    }

    public final void a() {
        boolean z;
        int i = this.d;
        int i2 = 0;
        if (i != 3 && i != 4) {
            if (i == 2) {
                this.d = 0;
                return;
            }
            return;
        }
        if (i == 4) {
            z = true;
        } else {
            z = false;
        }
        zzmi zzmiVar = this.f9118a;
        zzmi zzmiVar2 = this.f9119c;
        if (z) {
            zzmiVar2.getClass();
            zzmiVar2.l(17, zzmiVar);
        } else {
            zzmiVar2.getClass();
            zzmiVar.l(17, zzmiVar2);
        }
        if (this.d != 4) {
            i2 = 1;
        }
        this.d = i2;
    }

    public final void b() {
        if (!l(this.f9118a)) {
            j(true);
        }
        zzmi zzmiVar = this.f9119c;
        if (zzmiVar != null && zzmiVar.zze() == 0) {
            j(false);
        }
    }

    public final int c(zzlk zzlkVar, zzaae zzaaeVar, zzir zzirVar) {
        int k = k(this.f9118a, zzlkVar, zzaaeVar, zzirVar);
        int k2 = k(this.f9119c, zzlkVar, zzaaeVar, zzirVar);
        if (k == 1) {
            return k2;
        }
        return k;
    }

    public final void d() {
        this.f9118a.zzt();
        this.e = false;
        zzmi zzmiVar = this.f9119c;
        if (zzmiVar != null) {
            zzmiVar.zzt();
            this.f = false;
        }
    }

    public final void e(Object obj) {
        zzmi zzmiVar = this.f9118a;
        if (zzmiVar.zza() != 2) {
            return;
        }
        int i = this.d;
        if (i != 4 && i != 1) {
            zzmiVar.l(1, obj);
            return;
        }
        zzmi zzmiVar2 = this.f9119c;
        zzmiVar2.getClass();
        zzmiVar2.l(1, obj);
    }

    public final void f(zzacj zzacjVar) {
        zzmi zzmiVar = this.f9118a;
        if (zzmiVar.zza() == 2) {
            zzmiVar.l(7, zzacjVar);
            zzmi zzmiVar2 = this.f9119c;
            if (zzmiVar2 != null) {
                zzmiVar2.l(7, zzacjVar);
                return;
            }
            return;
        }
        zzmiVar.getClass();
    }

    public final boolean g() {
        int i = this.d;
        if (i != 0 && i != 2 && i != 4) {
            zzmi zzmiVar = this.f9119c;
            zzmiVar.getClass();
            if (zzmiVar.zze() != 0) {
                return true;
            }
            return false;
        }
        return l(this.f9118a);
    }

    public final boolean h(zzlk zzlkVar, zzmi zzmiVar) {
        if (zzmiVar != null) {
            zzxw[] zzxwVarArr = zzlkVar.f9090c;
            int i = this.b;
            zzxw zzxwVar = zzxwVarArr[i];
            if (zzmiVar.r() != null) {
                if (zzmiVar.r() != zzxwVar || (zzxwVar != null && !zzmiVar.t())) {
                    zzlk zzlkVar2 = zzlkVar.m;
                    if (zzlkVar2 == null || zzlkVar2.f9090c[i] != zzmiVar.r()) {
                        return false;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final void i(zzmi zzmiVar, zzir zzirVar) {
        boolean z;
        if (this.f9118a == zzmiVar || this.f9119c == zzmiVar) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        if (!l(zzmiVar)) {
            return;
        }
        if (zzmiVar == zzirVar.g) {
            zzirVar.h = null;
            zzirVar.g = null;
            zzirVar.i = true;
        }
        if (zzmiVar.zze() == 2) {
            zzmiVar.zzq();
        }
        zzmiVar.zzr();
    }

    public final void j(boolean z) {
        if (z) {
            if (this.e) {
                this.f9118a.zzs();
                this.e = false;
                return;
            }
            return;
        }
        if (this.f) {
            zzmi zzmiVar = this.f9119c;
            zzmiVar.getClass();
            zzmiVar.zzs();
            this.f = false;
        }
    }

    public final int k(zzmi zzmiVar, zzlk zzlkVar, zzaae zzaaeVar, zzir zzirVar) {
        boolean z;
        int i;
        int i2;
        if (zzmiVar != null && zzmiVar.zze() != 0) {
            zzmi zzmiVar2 = this.f9118a;
            if (zzmiVar == zzmiVar2) {
                z = false;
            } else {
                z = true;
            }
            if (zzmiVar == zzmiVar2 && ((i2 = this.d) == 2 || i2 == 4)) {
                return 1;
            }
            if (zzmiVar == this.f9119c && this.d == 3) {
                return 1;
            }
            zzxw r = zzmiVar.r();
            zzxw[] zzxwVarArr = zzlkVar.f9090c;
            int i3 = this.b;
            zzxw zzxwVar = zzxwVarArr[i3];
            boolean a2 = zzaaeVar.a(i3);
            if (!a2 || r != zzxwVar) {
                if (!zzmiVar.zzm()) {
                    zzzw zzzwVar = zzaaeVar.f3845c[i3];
                    if (zzzwVar != null) {
                        i = zzzwVar.zze();
                    } else {
                        i = 0;
                    }
                    zzv[] zzvVarArr = new zzv[i];
                    for (int i4 = 0; i4 < i; i4++) {
                        zzzwVar.getClass();
                        zzvVarArr[i4] = zzzwVar.zzb(i4);
                    }
                    zzxw zzxwVar2 = zzxwVarArr[i3];
                    zzxwVar2.getClass();
                    zzmiVar.o(zzvVarArr, zzxwVar2, zzlkVar.a(), zzlkVar.p, zzlkVar.g.f9091a);
                    return 3;
                }
                if (!zzmiVar.k()) {
                    return 0;
                }
                i(zzmiVar, zzirVar);
                if (!a2 || p()) {
                    j(!z);
                    return 1;
                }
            }
        }
        return 1;
    }

    public final zzmi m(zzlk zzlkVar) {
        if (zzlkVar != null) {
            zzxw[] zzxwVarArr = zzlkVar.f9090c;
            int i = this.b;
            if (zzxwVarArr[i] != null) {
                zzmi zzmiVar = this.f9118a;
                zzxw r = zzmiVar.r();
                zzxw zzxwVar = zzxwVarArr[i];
                if (r == zzxwVar) {
                    return zzmiVar;
                }
                zzmi zzmiVar2 = this.f9119c;
                if (zzmiVar2 != null && zzmiVar2.r() == zzxwVar) {
                    return zzmiVar2;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final boolean n() {
        return this.f9119c != null;
    }

    public final void o() {
        int i;
        zzgqa.f(!p());
        if (l(this.f9118a)) {
            i = 3;
        } else {
            i = 2;
            zzmi zzmiVar = this.f9119c;
            if (zzmiVar != null && zzmiVar.zze() != 0) {
                i = 4;
            }
        }
        this.d = i;
    }

    public final boolean p() {
        int i = this.d;
        if (i != 2 && i != 4 && i != 3) {
            return false;
        }
        return true;
    }

    public final int q() {
        boolean l = l(this.f9118a);
        int i = 0;
        zzmi zzmiVar = this.f9119c;
        if (zzmiVar != null && zzmiVar.zze() != 0) {
            i = 1;
        }
        return (l ? 1 : 0) + i;
    }

    public final boolean r(zzlk zzlkVar) {
        zzmi m = m(zzlkVar);
        m.getClass();
        return m.t();
    }

    public final void s(zzlk zzlkVar) {
        zzmi m = m(zzlkVar);
        m.getClass();
        m.zzl();
        if (!(m instanceof zzyl)) {
        } else {
            throw null;
        }
    }

    public final void t(zzaae zzaaeVar, zzaae zzaaeVar2) {
        int i;
        int i2 = this.b;
        boolean a2 = zzaaeVar.a(i2);
        boolean a3 = zzaaeVar2.a(i2);
        zzmi zzmiVar = this.f9118a;
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 == null || (i = this.d) == 3 || (i == 0 && l(zzmiVar))) {
            zzmiVar2 = zzmiVar;
        }
        if (a2 && !zzmiVar2.zzm()) {
            zzmiVar.getClass();
            zzml zzmlVar = zzaaeVar.b[i2];
            zzml zzmlVar2 = zzaaeVar2.b[i2];
            if (!a3 || !Objects.equals(zzmlVar2, zzmlVar) || p()) {
                zzmiVar2.zzl();
                if (zzmiVar2 instanceof zzyl) {
                    throw null;
                }
            }
        }
    }

    public final void u() {
        int i;
        zzmi zzmiVar = this.f9118a;
        if (l(zzmiVar) && (i = this.d) != 4 && i != 2) {
            zzmiVar.zzl();
            if (zzmiVar instanceof zzyl) {
                throw null;
            }
        }
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 != null && zzmiVar2.zze() != 0 && this.d != 3) {
            zzmiVar2.zzl();
            if (zzmiVar2 instanceof zzyl) {
                throw null;
            }
        }
    }

    public final void v() {
        zzmi zzmiVar = this.f9118a;
        if (l(zzmiVar)) {
            zzmiVar.e();
            return;
        }
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 != null && zzmiVar2.zze() != 0) {
            zzmiVar2.e();
        }
    }

    public final boolean w() {
        boolean z;
        zzmi zzmiVar = this.f9118a;
        if (l(zzmiVar)) {
            z = zzmiVar.k();
        } else {
            z = true;
        }
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 != null && zzmiVar2.zze() != 0) {
            return z & zzmiVar2.k();
        }
        return z;
    }

    public final boolean x(zzlk zzlkVar) {
        boolean z;
        boolean z2;
        int i = this.d;
        if ((i != 2 && i != 4) || m(zzlkVar) != this.f9118a) {
            z = false;
        } else {
            z = true;
        }
        if (this.d == 3 && m(zzlkVar) == this.f9119c) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z || z2) {
            return true;
        }
        return false;
    }

    public final boolean y(zzlk zzlkVar) {
        if (h(zzlkVar, this.f9118a) && h(zzlkVar, this.f9119c)) {
            return true;
        }
        return false;
    }

    public final void z(long j, long j2) {
        zzmi zzmiVar = this.f9118a;
        if (l(zzmiVar)) {
            zzmiVar.b(j, j2);
        }
        zzmi zzmiVar2 = this.f9119c;
        if (zzmiVar2 != null && zzmiVar2.zze() != 0) {
            zzmiVar2.b(j, j2);
        }
    }
}
