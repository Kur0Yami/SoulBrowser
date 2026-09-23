package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class i9 extends b {
    public final a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(v3.f0(this.j.C0()));
        }
    }

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object b0;
        d dVar = this.d;
        if (dVar != null) {
            this.n = ((i9) dVar).n | ((i9) this.e).n;
            if (this.l && this.i) {
                this.m = 0L;
                b0 = v3.f0(this.j.C0());
            } else {
                if (this.l) {
                    i9 i9Var = (i9) this.d;
                    if (i9Var.n) {
                        this.m = i9Var.m;
                        b0 = (c2) i9Var.i();
                    }
                }
                i9 i9Var2 = (i9) this.d;
                long j = i9Var2.m;
                i9 i9Var3 = (i9) this.e;
                this.m = j + i9Var3.m;
                if (i9Var2.m == 0) {
                    b0 = (c2) i9Var3.i();
                } else if (i9Var3.m == 0) {
                    b0 = (c2) i9Var2.i();
                } else {
                    b0 = v3.b0(this.j.C0(), (c2) ((i9) this.d).i(), (c2) ((i9) this.e).i());
                }
            }
            d(b0);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }

    public i9(a aVar, v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        super(v3Var, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = c7.ORDERED.i(((a) v3Var).m);
    }

    public i9(i9 i9Var, Spliterator spliterator) {
        super(i9Var, spliterator);
        this.j = i9Var.j;
        this.k = i9Var.k;
        this.l = i9Var.l;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new i9(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return v3.f0(this.j.C0());
    }

    @Override // j$.util.stream.d
    public final Object a() {
        u1 s0 = this.f21398a.s0(-1L, this.k);
        n5 H0 = this.j.H0(((a) this.f21398a).m, s0);
        v3 v3Var = this.f21398a;
        boolean d0 = v3Var.d0(this.b, v3Var.w0(H0));
        this.n = d0;
        if (d0) {
            g();
        }
        c2 build = s0.build();
        this.m = build.count();
        return build;
    }
}
