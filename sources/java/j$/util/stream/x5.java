package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class x5 extends b {
    public final a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    @Override // j$.util.stream.b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(v3.f0(this.j.C0()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        if (r2 >= r0) goto L49;
     */
    @Override // j$.util.stream.d, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCompletion(java.util.concurrent.CountedCompleter r12) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.util.stream.x5.onCompletion(java.util.concurrent.CountedCompleter):void");
    }

    public x5(a aVar, v3 v3Var, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(v3Var, spliterator);
        this.j = aVar;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    public x5(x5 x5Var, Spliterator spliterator) {
        super(x5Var, spliterator);
        this.j = x5Var.j;
        this.k = x5Var.k;
        this.l = x5Var.l;
        this.m = x5Var.m;
    }

    @Override // j$.util.stream.d
    public final d c(Spliterator spliterator) {
        return new x5(this, spliterator);
    }

    @Override // j$.util.stream.b
    public final Object h() {
        return v3.f0(this.j.C0());
    }

    @Override // j$.util.stream.d
    public final Object a() {
        if (b()) {
            c7 c7Var = c7.SIZED;
            a aVar = this.j;
            int i = aVar.j;
            int i2 = c7Var.e;
            u1 s0 = this.j.s0((i & i2) == i2 ? aVar.h0(this.b) : -1L, this.k);
            n5 H0 = this.j.H0(((a) this.f21398a).m, s0);
            v3 v3Var = this.f21398a;
            v3Var.d0(this.b, v3Var.w0(H0));
            return s0.build();
        }
        u1 s02 = this.j.s0(-1L, this.k);
        if (this.l == 0) {
            n5 H02 = this.j.H0(((a) this.f21398a).m, s02);
            v3 v3Var2 = this.f21398a;
            v3Var2.d0(this.b, v3Var2.w0(H02));
        } else {
            this.f21398a.v0(this.b, s02);
        }
        c2 build = s02.build();
        this.n = build.count();
        this.o = true;
        this.b = null;
        return build;
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        x5 x5Var = (x5) this.d;
        x5 x5Var2 = (x5) this.e;
        if (x5Var == null || x5Var2 == null) {
            return this.n;
        }
        long j2 = x5Var.j(j);
        return j2 >= j ? j2 : x5Var2.j(j) + j2;
    }
}
