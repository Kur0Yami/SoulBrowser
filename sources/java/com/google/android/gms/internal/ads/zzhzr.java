package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzr implements zzicp {

    /* renamed from: a, reason: collision with root package name */
    public final zzhzq f8897a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f8898c;
    public int d = 0;

    public zzhzr(zzhzq zzhzqVar) {
        Charset charset = zzibe.f8915a;
        if (zzhzqVar != null) {
            this.f8897a = zzhzqVar;
            zzhzqVar.f8896c = this;
            return;
        }
        throw new NullPointerException("input");
    }

    public static final void v(int i) {
        if ((i & 3) == 0) {
        } else {
            throw new IOException("Failed to parse the message.");
        }
    }

    public static final void w(int i) {
        if ((i & 7) == 0) {
        } else {
            throw new IOException("Failed to parse the message.");
        }
    }

    public static zzhzr x(zzhzq zzhzqVar) {
        Object obj = zzhzqVar.f8896c;
        if (obj != null) {
            return (zzhzr) obj;
        }
        return new zzhzr(zzhzqVar);
    }

    public final float A() {
        q(5);
        return this.f8897a.l();
    }

    public final long B() {
        q(0);
        return this.f8897a.m();
    }

    public final long C() {
        q(0);
        return this.f8897a.n();
    }

    public final int D() {
        q(0);
        return this.f8897a.o();
    }

    public final long E() {
        q(1);
        return this.f8897a.p();
    }

    public final int F() {
        q(5);
        return this.f8897a.q();
    }

    public final boolean G() {
        q(0);
        return this.f8897a.r();
    }

    public final String H() {
        q(2);
        return this.f8897a.s();
    }

    public final String I() {
        q(2);
        return this.f8897a.t();
    }

    public final void J(zzicc zziccVar, zzicu zzicuVar, zziab zziabVar) {
        q(2);
        r(zziccVar, zzicuVar, zziabVar);
    }

    public final void K(zzicc zziccVar, zzicu zzicuVar, zziab zziabVar) {
        q(3);
        s(zziccVar, zzicuVar, zziabVar);
    }

    public final zzhzl L() {
        q(2);
        return this.f8897a.u();
    }

    public final int M() {
        q(0);
        return this.f8897a.v();
    }

    public final int N() {
        q(0);
        return this.f8897a.w();
    }

    public final int O() {
        q(5);
        return this.f8897a.x();
    }

    public final long P() {
        q(1);
        return this.f8897a.y();
    }

    public final int Q() {
        q(0);
        return this.f8897a.z();
    }

    public final long R() {
        q(0);
        return this.f8897a.A();
    }

    public final void S(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzhzy;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzhzy zzhzyVar = (zzhzy) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int v = zzhzqVar.v();
                    w(v);
                    int c2 = zzhzqVar.c() + v;
                    do {
                        zzhzyVar.c(zzhzqVar.k());
                    } while (zzhzqVar.c() < c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzhzyVar.c(zzhzqVar.k());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int v2 = zzhzqVar.v();
                    w(v2);
                    int c3 = zzhzqVar.c() + v2;
                    do {
                        zzibdVar.add(Double.valueOf(zzhzqVar.k()));
                    } while (zzhzqVar.c() < c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Double.valueOf(zzhzqVar.k()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void T(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zziai;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zziai zziaiVar = (zziai) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw new zzibf();
                }
                do {
                    zziaiVar.c(zzhzqVar.l());
                    if (!zzhzqVar.b()) {
                        i = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (i == this.b);
            } else {
                int v = zzhzqVar.v();
                v(v);
                int c2 = zzhzqVar.c() + v;
                do {
                    zziaiVar.c(zzhzqVar.l());
                } while (zzhzqVar.c() < c2);
                return;
            }
        } else {
            int i3 = this.b & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw new zzibf();
                }
                do {
                    zzibdVar.add(Float.valueOf(zzhzqVar.l()));
                    if (!zzhzqVar.b()) {
                        h = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (h == this.b);
                i = h;
            } else {
                int v2 = zzhzqVar.v();
                v(v2);
                int c3 = zzhzqVar.c() + v2;
                do {
                    zzibdVar.add(Float.valueOf(zzhzqVar.l()));
                } while (zzhzqVar.c() < c3);
                return;
            }
        }
        this.d = i;
    }

    public final void U(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzibq;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzibq zzibqVar = (zzibq) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibqVar.h(zzhzqVar.m());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibqVar.h(zzhzqVar.m());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Long.valueOf(zzhzqVar.m()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Long.valueOf(zzhzqVar.m()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void a(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzibq;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzibq zzibqVar = (zzibq) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibqVar.h(zzhzqVar.n());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibqVar.h(zzhzqVar.n());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Long.valueOf(zzhzqVar.n()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Long.valueOf(zzhzqVar.n()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void b(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zziasVar.d(zzhzqVar.o());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zziasVar.d(zzhzqVar.o());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Integer.valueOf(zzhzqVar.o()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Integer.valueOf(zzhzqVar.o()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void c(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzibq;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzibq zzibqVar = (zzibq) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int v = zzhzqVar.v();
                    w(v);
                    int c2 = zzhzqVar.c() + v;
                    do {
                        zzibqVar.h(zzhzqVar.p());
                    } while (zzhzqVar.c() < c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibqVar.h(zzhzqVar.p());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int v2 = zzhzqVar.v();
                    w(v2);
                    int c3 = zzhzqVar.c() + v2;
                    do {
                        zzibdVar.add(Long.valueOf(zzhzqVar.p()));
                    } while (zzhzqVar.c() < c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Long.valueOf(zzhzqVar.p()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void d(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw new zzibf();
                }
                do {
                    zziasVar.d(zzhzqVar.q());
                    if (!zzhzqVar.b()) {
                        i = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (i == this.b);
            } else {
                int v = zzhzqVar.v();
                v(v);
                int c2 = zzhzqVar.c() + v;
                do {
                    zziasVar.d(zzhzqVar.q());
                } while (zzhzqVar.c() < c2);
                return;
            }
        } else {
            int i3 = this.b & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw new zzibf();
                }
                do {
                    zzibdVar.add(Integer.valueOf(zzhzqVar.q()));
                    if (!zzhzqVar.b()) {
                        h = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (h == this.b);
                i = h;
            } else {
                int v2 = zzhzqVar.v();
                v(v2);
                int c3 = zzhzqVar.c() + v2;
                do {
                    zzibdVar.add(Integer.valueOf(zzhzqVar.q()));
                } while (zzhzqVar.c() < c3);
                return;
            }
        }
        this.d = i;
    }

    public final void e(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzhzb;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzhzb zzhzbVar = (zzhzb) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzhzbVar.c(zzhzqVar.r());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzhzbVar.c(zzhzqVar.r());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Boolean.valueOf(zzhzqVar.r()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Boolean.valueOf(zzhzqVar.r()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void f(zzibd zzibdVar, boolean z) {
        String H;
        int h;
        int i;
        if ((this.b & 7) == 2) {
            boolean z2 = zzibdVar instanceof zzibn;
            zzhzq zzhzqVar = this.f8897a;
            if (z2 && !z) {
                zzibn zzibnVar = (zzibn) zzibdVar;
                do {
                    L();
                    zzibnVar.zzb();
                    if (!zzhzqVar.b()) {
                        i = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (i == this.b);
            } else {
                do {
                    if (z) {
                        H = I();
                    } else {
                        H = H();
                    }
                    zzibdVar.add(H);
                    if (zzhzqVar.b()) {
                        return;
                    } else {
                        h = zzhzqVar.h();
                    }
                } while (h == this.b);
                i = h;
            }
            this.d = i;
            return;
        }
        throw new zzibf();
    }

    public final void g(zzibd zzibdVar, zzicu zzicuVar, zziab zziabVar) {
        int h;
        int i = this.b;
        if ((i & 7) != 2) {
            throw new zzibf();
        }
        do {
            Object zza = zzicuVar.zza();
            r(zza, zzicuVar, zziabVar);
            zzicuVar.b(zza);
            zzibdVar.add(zza);
            zzhzq zzhzqVar = this.f8897a;
            if (!zzhzqVar.b() && this.d == 0) {
                h = zzhzqVar.h();
            } else {
                return;
            }
        } while (h == i);
        this.d = h;
    }

    public final void h(zzibd zzibdVar, zzicu zzicuVar, zziab zziabVar) {
        int h;
        int i = this.b;
        if ((i & 7) != 3) {
            throw new zzibf();
        }
        do {
            Object zza = zzicuVar.zza();
            s(zza, zzicuVar, zziabVar);
            zzicuVar.b(zza);
            zzibdVar.add(zza);
            zzhzq zzhzqVar = this.f8897a;
            if (!zzhzqVar.b() && this.d == 0) {
                h = zzhzqVar.h();
            } else {
                return;
            }
        } while (h == i);
        this.d = h;
    }

    public final void i(zzibd zzibdVar) {
        int h;
        if ((this.b & 7) != 2) {
            throw new zzibf();
        }
        do {
            zzibdVar.add(L());
            zzhzq zzhzqVar = this.f8897a;
            if (zzhzqVar.b()) {
                return;
            } else {
                h = zzhzqVar.h();
            }
        } while (h == this.b);
        this.d = h;
    }

    public final void j(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zziasVar.d(zzhzqVar.v());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zziasVar.d(zzhzqVar.v());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Integer.valueOf(zzhzqVar.v()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Integer.valueOf(zzhzqVar.v()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void k(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zziasVar.d(zzhzqVar.w());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zziasVar.d(zzhzqVar.w());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Integer.valueOf(zzhzqVar.w()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Integer.valueOf(zzhzqVar.w()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void l(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw new zzibf();
                }
                do {
                    zziasVar.d(zzhzqVar.x());
                    if (!zzhzqVar.b()) {
                        i = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (i == this.b);
            } else {
                int v = zzhzqVar.v();
                v(v);
                int c2 = zzhzqVar.c() + v;
                do {
                    zziasVar.d(zzhzqVar.x());
                } while (zzhzqVar.c() < c2);
                return;
            }
        } else {
            int i3 = this.b & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw new zzibf();
                }
                do {
                    zzibdVar.add(Integer.valueOf(zzhzqVar.x()));
                    if (!zzhzqVar.b()) {
                        h = zzhzqVar.h();
                    } else {
                        return;
                    }
                } while (h == this.b);
                i = h;
            } else {
                int v2 = zzhzqVar.v();
                v(v2);
                int c3 = zzhzqVar.c() + v2;
                do {
                    zzibdVar.add(Integer.valueOf(zzhzqVar.x()));
                } while (zzhzqVar.c() < c3);
                return;
            }
        }
        this.d = i;
    }

    public final void m(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzibq;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzibq zzibqVar = (zzibq) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int v = zzhzqVar.v();
                    w(v);
                    int c2 = zzhzqVar.c() + v;
                    do {
                        zzibqVar.h(zzhzqVar.y());
                    } while (zzhzqVar.c() < c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibqVar.h(zzhzqVar.y());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int v2 = zzhzqVar.v();
                    w(v2);
                    int c3 = zzhzqVar.c() + v2;
                    do {
                        zzibdVar.add(Long.valueOf(zzhzqVar.y()));
                    } while (zzhzqVar.c() < c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Long.valueOf(zzhzqVar.y()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void n(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzias;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzias zziasVar = (zzias) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zziasVar.d(zzhzqVar.z());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zziasVar.d(zzhzqVar.z());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Integer.valueOf(zzhzqVar.z()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Integer.valueOf(zzhzqVar.z()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    public final void o(zzibd zzibdVar) {
        int h;
        int i;
        boolean z = zzibdVar instanceof zzibq;
        zzhzq zzhzqVar = this.f8897a;
        if (z) {
            zzibq zzibqVar = (zzibq) zzibdVar;
            int i2 = this.b & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    int c2 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibqVar.h(zzhzqVar.A());
                    } while (zzhzqVar.c() < c2);
                    u(c2);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibqVar.h(zzhzqVar.A());
                if (!zzhzqVar.b()) {
                    i = zzhzqVar.h();
                } else {
                    return;
                }
            } while (i == this.b);
        } else {
            int i3 = this.b & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    int c3 = zzhzqVar.c() + zzhzqVar.v();
                    do {
                        zzibdVar.add(Long.valueOf(zzhzqVar.A()));
                    } while (zzhzqVar.c() < c3);
                    u(c3);
                    return;
                }
                throw new zzibf();
            }
            do {
                zzibdVar.add(Long.valueOf(zzhzqVar.A()));
                if (!zzhzqVar.b()) {
                    h = zzhzqVar.h();
                } else {
                    return;
                }
            } while (h == this.b);
            i = h;
        }
        this.d = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0078, code lost:
    
        r12.put(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x007b, code lost:
    
        r1.a(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x007e, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0040 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(com.google.android.gms.internal.ads.zzibw r12, com.google.android.gms.internal.ads.zzibu r13, com.google.android.gms.internal.ads.zziab r14) {
        /*
            r11 = this;
            r0 = 2
            r11.q(r0)
            com.google.android.gms.internal.ads.zzhzq r1 = r11.f8897a
            int r2 = r1.v()
            int r2 = r1.B(r2)
            java.lang.Object r3 = r13.f8927c
            java.lang.String r4 = ""
            r5 = r3
        L13:
            int r6 = r11.y()     // Catch: java.lang.Throwable -> L47
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto L78
            boolean r7 = r1.b()     // Catch: java.lang.Throwable -> L47
            if (r7 == 0) goto L23
            goto L78
        L23:
            r7 = 1
            r8 = 0
            java.lang.String r9 = "Unable to parse map entry."
            if (r6 == r7) goto L56
            if (r6 == r0) goto L4b
            boolean r6 = r1.b()     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            if (r6 != 0) goto L3d
            int r6 = r11.b     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            int r7 = r11.f8898c     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            if (r6 != r7) goto L38
            goto L3d
        L38:
            boolean r6 = r1.j(r6)     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            goto L3e
        L3d:
            r6 = r8
        L3e:
            if (r6 == 0) goto L41
            goto L13
        L41:
            com.google.android.gms.internal.ads.zzibg r6 = new com.google.android.gms.internal.ads.zzibg     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            throw r6     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
        L47:
            r12 = move-exception
            goto L7f
        L49:
            r6 = move-exception
            goto L5e
        L4b:
            com.google.android.gms.internal.ads.zzids r6 = r13.b     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            java.lang.Class r7 = r3.getClass()     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            java.lang.Object r5 = r11.t(r6, r7, r14)     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            goto L13
        L56:
            com.google.android.gms.internal.ads.zzids r6 = r13.f8926a     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            r7 = 0
            java.lang.Object r4 = r11.t(r6, r7, r7)     // Catch: java.lang.Throwable -> L47 com.google.android.gms.internal.ads.zzibf -> L49
            goto L13
        L5e:
            boolean r7 = r1.b()     // Catch: java.lang.Throwable -> L47
            if (r7 != 0) goto L6f
            int r7 = r11.b     // Catch: java.lang.Throwable -> L47
            int r10 = r11.f8898c     // Catch: java.lang.Throwable -> L47
            if (r7 != r10) goto L6b
            goto L6f
        L6b:
            boolean r8 = r1.j(r7)     // Catch: java.lang.Throwable -> L47
        L6f:
            if (r8 == 0) goto L72
            goto L13
        L72:
            com.google.android.gms.internal.ads.zzibg r12 = new com.google.android.gms.internal.ads.zzibg     // Catch: java.lang.Throwable -> L47
            r12.<init>(r9, r6)     // Catch: java.lang.Throwable -> L47
            throw r12     // Catch: java.lang.Throwable -> L47
        L78:
            r12.put(r4, r5)     // Catch: java.lang.Throwable -> L47
            r1.a(r2)
            return
        L7f:
            r1.a(r2)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhzr.p(com.google.android.gms.internal.ads.zzibw, com.google.android.gms.internal.ads.zzibu, com.google.android.gms.internal.ads.zziab):void");
    }

    public final void q(int i) {
        if ((this.b & 7) == i) {
        } else {
            throw new zzibf();
        }
    }

    public final void r(Object obj, zzicu zzicuVar, zziab zziabVar) {
        zzhzq zzhzqVar = this.f8897a;
        int v = zzhzqVar.v();
        if (zzhzqVar.f8895a + zzhzqVar.b < 100) {
            int B = zzhzqVar.B(v);
            zzhzqVar.f8895a++;
            zzicuVar.j(obj, this, zziabVar);
            zzhzqVar.i(0);
            zzhzqVar.f8895a--;
            zzhzqVar.a(B);
            return;
        }
        throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public final void s(Object obj, zzicu zzicuVar, zziab zziabVar) {
        int i = this.f8898c;
        this.f8898c = ((this.b >>> 3) << 3) | 4;
        try {
            zzicuVar.j(obj, this, zziabVar);
            if (this.b == this.f8898c) {
            } else {
                throw new IOException("Failed to parse the message.");
            }
        } finally {
            this.f8898c = i;
        }
    }

    public final Object t(zzids zzidsVar, Class cls, zziab zziabVar) {
        zzids zzidsVar2 = zzids.g;
        switch (zzidsVar.ordinal()) {
            case 0:
                return Double.valueOf(z());
            case 1:
                return Float.valueOf(A());
            case 2:
                return Long.valueOf(C());
            case 3:
                return Long.valueOf(B());
            case 4:
                return Integer.valueOf(D());
            case 5:
                return Long.valueOf(E());
            case 6:
                return Integer.valueOf(F());
            case 7:
                return Boolean.valueOf(G());
            case 8:
                return I();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                q(2);
                zzicu a2 = zzicm.f8938c.a(cls);
                Object zza = a2.zza();
                r(zza, a2, zziabVar);
                a2.b(zza);
                return zza;
            case 11:
                return L();
            case 12:
                return Integer.valueOf(M());
            case 13:
                return Integer.valueOf(N());
            case 14:
                return Integer.valueOf(O());
            case 15:
                return Long.valueOf(P());
            case 16:
                return Integer.valueOf(Q());
            case 17:
                return Long.valueOf(R());
        }
    }

    public final void u(int i) {
        if (this.f8897a.c() == i) {
        } else {
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final int y() {
        int i = this.d;
        if (i != 0) {
            this.b = i;
            this.d = 0;
        } else {
            i = this.f8897a.h();
            this.b = i;
        }
        if (i != 0 && i != this.f8898c) {
            return i >>> 3;
        }
        return Integer.MAX_VALUE;
    }

    public final double z() {
        q(1);
        return this.f8897a.k();
    }
}
