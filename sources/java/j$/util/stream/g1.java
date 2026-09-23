package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public abstract class g1 extends a implements LongStream {
    @Override // j$.util.stream.LongStream
    public final j$.util.e0 findAny() {
        return (j$.util.e0) y0(e0.d);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.e0 findFirst() {
        return (j$.util.e0) y0(e0.f21406c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.a, j$.util.stream.LongStream] */
    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new a(this, c7.q | c7.o);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        y0(new l0(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        y0(new l0(longConsumer, true));
    }

    public static Spliterator.OfLong L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfLong) {
            return (Spliterator.OfLong) spliterator;
        }
        if (p8.f21480a) {
            p8.a(a.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // j$.util.stream.a
    public final d7 C0() {
        return d7.LONG_VALUE;
    }

    @Override // j$.util.stream.a
    public final c2 A0(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.a0(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final Spliterator K0(a aVar, Supplier supplier, boolean z) {
        return new e7(aVar, supplier, z);
    }

    @Override // j$.util.stream.a
    public final boolean B0(Spliterator spliterator, n5 n5Var) {
        LongConsumer l0Var;
        boolean e;
        Spliterator.OfLong L0 = L0(spliterator);
        if (n5Var instanceof LongConsumer) {
            l0Var = (LongConsumer) n5Var;
        } else {
            if (p8.f21480a) {
                p8.a(a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(n5Var);
            l0Var = new j$.util.l0(n5Var, 1);
        }
        do {
            e = n5Var.e();
            if (e) {
                break;
            }
        } while (L0.tryAdvance(l0Var));
        return e;
    }

    @Override // j$.util.stream.v3
    public final u1 s0(long j, IntFunction intFunction) {
        return v3.o0(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator, reason: merged with bridge method [inline-methods] */
    public final Iterator<Long> iterator2() {
        Spliterator.OfLong spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.b1(spliterator);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final Spliterator.OfLong spliterator() {
        return L0(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream asDoubleStream() {
        return new q(this, c7.n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new p(this, 0, new y0(4), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream e() {
        Objects.requireNonNull(null);
        return new s(this, c7.p | c7.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new p(this, c7.p | c7.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final IntStream A() {
        Objects.requireNonNull(null);
        return new r(this, c7.p | c7.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final DoubleStream j() {
        Objects.requireNonNull(null);
        return new q(this, c7.p | c7.n, 6);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(j$.util.p pVar) {
        Objects.requireNonNull(pVar);
        return new c1(this, c7.p | c7.n | c7.t, pVar, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new s(this, c7.t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new c1(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return y5.g(this, 0L, j);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : y5.g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.a, j$.util.stream.LongStream] */
    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.f21498a);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.a, j$.util.stream.LongStream] */
    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.b);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((f5) boxed()).distinct().mapToLong(new y0(1));
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new y0(9));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.e0 min() {
        return reduce(new y0(0));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.e0 max() {
        return reduce(new y0(8));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 average() {
        long j = ((long[]) collect(new y0(5), new y0(6), new y0(7)))[0];
        return j > 0 ? new j$.util.c0(r0[1] / j) : j$.util.c0.f21301c;
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) y0(new w3(d7.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.b0 summaryStatistics() {
        return (j$.util.b0) collect(new j$.time.h(19), new m(29), new y0(2));
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        n nVar = new n(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(nVar);
        return y0(new a4(d7.LONG_VALUE, nVar, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean q() {
        return ((Boolean) y0(v3.r0(p1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.e0 reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.e0) y0(new y3(d7.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    public final boolean w() {
        return ((Boolean) y0(v3.r0(p1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final boolean m() {
        return ((Boolean) y0(v3.r0(p1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) v3.l0((a2) z0(new y0(3))).b();
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) y0(new c4(0))).longValue();
    }
}
