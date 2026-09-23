package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public abstract class y extends a implements DoubleStream {
    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 findAny() {
        return (j$.util.c0) y0(c0.d);
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 findFirst() {
        return (j$.util.c0) y0(c0.f21392c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.DoubleStream, j$.util.stream.a] */
    @Override // j$.util.stream.DoubleStream
    public final DoubleStream sorted() {
        return new a(this, c7.q | c7.o);
    }

    public static Spliterator.OfDouble L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfDouble) {
            return (Spliterator.OfDouble) spliterator;
        }
        if (p8.f21480a) {
            p8.a(a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        y0(new j0(doubleConsumer, false));
    }

    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        y0(new j0(doubleConsumer, true));
    }

    @Override // j$.util.stream.a
    public final d7 C0() {
        return d7.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.a
    public final c2 A0(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.Y(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final Spliterator K0(a aVar, Supplier supplier, boolean z) {
        return new e7(aVar, supplier, z);
    }

    @Override // j$.util.stream.a
    public final boolean B0(Spliterator spliterator, n5 n5Var) {
        DoubleConsumer f0Var;
        boolean e;
        Spliterator.OfDouble L0 = L0(spliterator);
        if (n5Var instanceof DoubleConsumer) {
            f0Var = (DoubleConsumer) n5Var;
        } else {
            if (p8.f21480a) {
                p8.a(a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(n5Var);
            f0Var = new j$.util.f0(n5Var, 1);
        }
        do {
            e = n5Var.e();
            if (e) {
                break;
            }
        } while (L0.tryAdvance(f0Var));
        return e;
    }

    @Override // j$.util.stream.v3
    public final u1 s0(long j, IntFunction intFunction) {
        return v3.e0(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Double> iterator2() {
        Spliterator.OfDouble spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.c1(spliterator);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final Spliterator.OfDouble spliterator() {
        return L0(super.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream boxed() {
        return new p(this, 0, new m(3), 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream e() {
        Objects.requireNonNull(null);
        return new q(this, c7.p | c7.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new p(this, c7.p | c7.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final IntStream z() {
        Objects.requireNonNull(null);
        return new r(this, c7.p | c7.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final LongStream u() {
        Objects.requireNonNull(null);
        return new s(this, c7.p | c7.n, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream d(j$.util.p pVar) {
        Objects.requireNonNull(pVar);
        return new u(this, c7.p | c7.n | c7.t, pVar, 0);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream b() {
        Objects.requireNonNull(null);
        return new q(this, c7.t, 2);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new u(this, doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return y5.e(this, 0L, j);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : y5.e(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.DoubleStream, j$.util.stream.a] */
    @Override // j$.util.stream.DoubleStream
    public final DoubleStream a() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.f21498a);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.DoubleStream, j$.util.stream.a] */
    @Override // j$.util.stream.DoubleStream
    public final DoubleStream c() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.b);
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream distinct() {
        return ((f5) boxed()).distinct().mapToDouble(new m(4));
    }

    @Override // j$.util.stream.DoubleStream
    public final double sum() {
        double[] dArr = (double[]) collect(new m(7), new m(8), new j$.time.h(26));
        Set set = Collectors.f21377a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 min() {
        return reduce(new j$.time.h(27));
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 max() {
        return reduce(new m(6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.function.ObjDoubleConsumer] */
    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 average() {
        double[] dArr = (double[]) collect(new j$.time.h(28), new Object(), new m(0));
        if (dArr[2] <= 0.0d) {
            return j$.util.c0.f21301c;
        }
        Set set = Collectors.f21377a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new j$.util.c0(d / dArr[2]);
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.y summaryStatistics() {
        return (j$.util.y) collect(new j$.time.h(13), new m(1), new m(2));
    }

    @Override // j$.util.stream.DoubleStream
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        n nVar = new n(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(nVar);
        return y0(new a4(d7.DOUBLE_VALUE, nVar, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean o() {
        return ((Boolean) y0(v3.p0(p1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean t() {
        return ((Boolean) y0(v3.p0(p1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final boolean B() {
        return ((Boolean) y0(v3.p0(p1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final double[] toArray() {
        return (double[]) v3.j0((w1) z0(new m(5))).b();
    }

    @Override // j$.util.stream.DoubleStream
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) y0(new e4(d7.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.c0 reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.c0) y0(new y3(d7.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.DoubleStream
    public final long count() {
        return ((Long) y0(new c4(1))).longValue();
    }
}
