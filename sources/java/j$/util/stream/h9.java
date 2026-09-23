package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class h9 extends d {
    public final a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        d dVar = this.d;
        if (dVar != null) {
            if (this.j) {
                h9 h9Var = (h9) dVar;
                long j = h9Var.l;
                this.l = j;
                if (j == h9Var.k) {
                    this.l = j + ((h9) this.e).l;
                }
            }
            h9 h9Var2 = (h9) dVar;
            long j2 = h9Var2.k;
            h9 h9Var3 = (h9) this.e;
            this.k = j2 + h9Var3.k;
            c2 b0 = h9Var2.k == 0 ? (c2) h9Var3.f : h9Var3.k == 0 ? (c2) h9Var2.f : v3.b0(this.h.C0(), (c2) ((h9) this.d).f, (c2) ((h9) this.e).f);
            if (b() && this.j) {
                b0 = b0.i(this.l, b0.count(), this.i);
            }
            this.f = b0;
        }
        super.onCompletion(countedCompleter);
    }

    public h9(a aVar, v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        super(v3Var, spliterator);
        this.h = aVar;
        this.i = intFunction;
        this.j = c7.ORDERED.i(((a) v3Var).m);
    }

    public h9(h9 h9Var, Spliterator spliterator) {
        super(h9Var, spliterator);
        this.h = h9Var.h;
        this.i = h9Var.i;
        this.j = h9Var.j;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new h9(this, spliterator);
    }

    @Override // j$.util.stream.d
    public final Object a() {
        long j;
        boolean b = b();
        if (!b && this.j) {
            c7 c7Var = c7.SIZED;
            a aVar = this.h;
            int i = aVar.j;
            int i2 = c7Var.e;
            if ((i & i2) == i2) {
                j = aVar.h0(this.b);
                u1 s0 = this.f21398a.s0(j, this.i);
                g9 h = ((f9) this.h).h(s0, (this.j || b) ? false : true);
                this.f21398a.v0(this.b, h);
                c2 build = s0.build();
                this.k = build.count();
                this.l = h.h();
                return build;
            }
        }
        j = -1;
        u1 s02 = this.f21398a.s0(j, this.i);
        g9 h2 = ((f9) this.h).h(s02, (this.j || b) ? false : true);
        this.f21398a.v0(this.b, h2);
        c2 build2 = s02.build();
        this.k = build2.count();
        this.l = h2.h();
        return build2;
    }
}
