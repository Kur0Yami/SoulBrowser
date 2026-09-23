package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public abstract class a extends v3 implements BaseStream {
    public final a h;
    public final a i;
    public final int j;
    public final a k;
    public int l;
    public int m;
    public Spliterator n;
    public Supplier o;
    public boolean p;
    public final boolean q;
    public Runnable r;
    public boolean s;

    public abstract c2 A0(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract boolean B0(Spliterator spliterator, n5 n5Var);

    public abstract d7 C0();

    public abstract Spliterator D0(Supplier supplier);

    public abstract boolean G0();

    public abstract n5 H0(int i, n5 n5Var);

    public abstract Spliterator K0(a aVar, Supplier supplier, boolean z);

    public a(Spliterator spliterator, int i, boolean z) {
        this.i = null;
        this.n = spliterator;
        this.h = this;
        int i2 = c7.g & i;
        this.j = i2;
        this.m = (~(i2 << 1)) & c7.l;
        this.l = 0;
        this.s = z;
    }

    public a(a aVar, int i) {
        if (aVar.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        aVar.p = true;
        aVar.k = this;
        this.i = aVar;
        this.j = c7.h & i;
        this.m = c7.d(i, aVar.m);
        a aVar2 = aVar.h;
        this.h = aVar2;
        if (G0()) {
            aVar2.q = true;
        }
        this.l = aVar.l + 1;
    }

    public a(Supplier supplier, int i, boolean z) {
        this.i = null;
        this.o = supplier;
        this.h = this;
        int i2 = c7.g & i;
        this.j = i2;
        this.m = (~(i2 << 1)) & c7.l;
        this.l = 0;
        this.s = z;
    }

    public final Object y0(n8 n8Var) {
        if (this.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.p = true;
        if (this.h.s) {
            return n8Var.i(this, I0(n8Var.v()));
        }
        return n8Var.f(this, I0(n8Var.v()));
    }

    public final c2 z0(IntFunction intFunction) {
        if (this.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.p = true;
        if (this.h.s && this.i != null && G0()) {
            this.l = 0;
            a aVar = this.i;
            return E0(aVar, aVar.I0(0), intFunction);
        }
        return g0(I0(0), true, intFunction);
    }

    public final Spliterator J0() {
        a aVar = this.h;
        if (this != aVar) {
            throw new IllegalStateException();
        }
        if (this.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.p = true;
        Spliterator spliterator = aVar.n;
        if (spliterator != null) {
            aVar.n = null;
            return spliterator;
        }
        Supplier supplier = aVar.o;
        if (supplier != null) {
            Spliterator spliterator2 = (Spliterator) supplier.get();
            this.h.o = null;
            return spliterator2;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream sequential() {
        this.h.s = false;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream parallel() {
        this.h.s = true;
        return this;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.p = true;
        this.o = null;
        this.n = null;
        a aVar = this.h;
        Runnable runnable = aVar.r;
        if (runnable != null) {
            aVar.r = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        a aVar = this.h;
        Runnable runnable2 = aVar.r;
        if (runnable2 != null) {
            runnable = new m8(runnable2, runnable);
        }
        aVar.r = runnable;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public Spliterator spliterator() {
        if (this.p) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.p = true;
        a aVar = this.h;
        if (this == aVar) {
            Spliterator spliterator = aVar.n;
            if (spliterator != null) {
                aVar.n = null;
                return spliterator;
            }
            Supplier supplier = aVar.o;
            if (supplier != null) {
                aVar.o = null;
                return D0(supplier);
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return K0(this, new j$.util.p(2, this), aVar.s);
    }

    @Override // j$.util.stream.v3
    public final c2 g0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.h.s) {
            return A0(this, spliterator, z, intFunction);
        }
        u1 s0 = s0(h0(spliterator), intFunction);
        v0(spliterator, s0);
        return s0.build();
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.h.s;
    }

    public final Spliterator I0(int i) {
        int i2;
        int i3;
        a aVar = this.h;
        Spliterator spliterator = aVar.n;
        if (spliterator != null) {
            aVar.n = null;
        } else {
            Supplier supplier = aVar.o;
            if (supplier != null) {
                spliterator = (Spliterator) supplier.get();
                this.h.o = null;
            } else {
                throw new IllegalStateException("source already consumed or closed");
            }
        }
        a aVar2 = this.h;
        if (aVar2.s && aVar2.q) {
            a aVar3 = aVar2.k;
            int i4 = 1;
            while (aVar2 != this) {
                int i5 = aVar3.j;
                if (aVar3.G0()) {
                    if (c7.SHORT_CIRCUIT.i(i5)) {
                        i5 &= ~c7.u;
                    }
                    spliterator = aVar3.F0(aVar2, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~c7.t) & i5;
                        i3 = c7.s;
                    } else {
                        i2 = (~c7.s) & i5;
                        i3 = c7.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                int i6 = i4 + 1;
                aVar3.l = i4;
                aVar3.m = c7.d(i5, aVar2.m);
                a aVar4 = aVar3;
                aVar3 = aVar3.k;
                aVar2 = aVar4;
                i4 = i6;
            }
        }
        if (i != 0) {
            this.m = c7.d(i, this.m);
        }
        return spliterator;
    }

    @Override // j$.util.stream.v3
    public final long h0(Spliterator spliterator) {
        if (c7.SIZED.i(this.m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.v3
    public final n5 v0(Spliterator spliterator, n5 n5Var) {
        c0(spliterator, w0((n5) Objects.requireNonNull(n5Var)));
        return n5Var;
    }

    @Override // j$.util.stream.v3
    public final void c0(Spliterator spliterator, n5 n5Var) {
        Objects.requireNonNull(n5Var);
        if (!c7.SHORT_CIRCUIT.i(this.m)) {
            n5Var.c(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(n5Var);
            n5Var.end();
            return;
        }
        d0(spliterator, n5Var);
    }

    @Override // j$.util.stream.v3
    public final boolean d0(Spliterator spliterator, n5 n5Var) {
        a aVar = this;
        while (aVar.l > 0) {
            aVar = aVar.i;
        }
        n5Var.c(spliterator.getExactSizeIfKnown());
        boolean B0 = aVar.B0(spliterator, n5Var);
        n5Var.end();
        return B0;
    }

    @Override // j$.util.stream.v3
    public final n5 w0(n5 n5Var) {
        Objects.requireNonNull(n5Var);
        for (a aVar = this; aVar.l > 0; aVar = aVar.i) {
            n5Var = aVar.H0(aVar.i.m, n5Var);
        }
        return n5Var;
    }

    @Override // j$.util.stream.v3
    public final Spliterator x0(Spliterator spliterator) {
        return this.l == 0 ? spliterator : K0(this, new j$.util.p(3, spliterator), this.h.s);
    }

    public c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator F0(a aVar, Spliterator spliterator) {
        return E0(aVar, spliterator, new j$.time.h(11)).spliterator();
    }
}
