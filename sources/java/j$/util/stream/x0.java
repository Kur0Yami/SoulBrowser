package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public abstract class x0 extends a implements IntStream {
    @Override // j$.util.stream.IntStream
    public final j$.util.d0 findAny() {
        return (j$.util.d0) y0(d0.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.d0 findFirst() {
        return (j$.util.d0) y0(d0.f21400c);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new a(this, c7.q | c7.o);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        y0(new k0(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        y0(new k0(intConsumer, true));
    }

    public static Spliterator.OfInt L0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (p8.f21480a) {
            p8.a(a.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.a
    public final d7 C0() {
        return d7.INT_VALUE;
    }

    @Override // j$.util.stream.a
    public final c2 A0(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.Z(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final Spliterator K0(a aVar, Supplier supplier, boolean z) {
        return new e7(aVar, supplier, z);
    }

    @Override // j$.util.stream.a
    public final boolean B0(Spliterator spliterator, n5 n5Var) {
        IntConsumer i0Var;
        boolean e;
        Spliterator.OfInt L0 = L0(spliterator);
        if (n5Var instanceof IntConsumer) {
            i0Var = (IntConsumer) n5Var;
        } else {
            if (p8.f21480a) {
                p8.a(a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(n5Var);
            i0Var = new j$.util.i0(n5Var, 1);
        }
        do {
            e = n5Var.e();
            if (e) {
                break;
            }
        } while (L0.tryAdvance(i0Var));
        return e;
    }

    @Override // j$.util.stream.v3
    public final u1 s0(long j, IntFunction intFunction) {
        return v3.n0(j);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Integer> iterator2() {
        Spliterator.OfInt spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.a1(spliterator);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final Spliterator.OfInt spliterator() {
        return L0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new s(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream asDoubleStream() {
        return new q(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new p(this, 0, new m(20), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new r0(this, c7.p | c7.n, intUnaryOperator, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new p(this, c7.p | c7.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream k() {
        Objects.requireNonNull(null);
        return new s(this, c7.p | c7.n, 2);
    }

    @Override // j$.util.stream.IntStream
    public final DoubleStream g() {
        Objects.requireNonNull(null);
        return new q(this, c7.p | c7.n, 4);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) y0(new l4(d7.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream r(i0 i0Var) {
        Objects.requireNonNull(i0Var);
        return new r0(this, c7.p | c7.n | c7.t, i0Var, 2);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.d0 reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.d0) y0(new y3(d7.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new r(this, c7.t, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new r0(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return y5.f(this, 0L, j);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : y5.f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.f21498a);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.IntStream, j$.util.stream.a] */
    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = u9.f21498a;
        Objects.requireNonNull(null);
        return new a(this, u9.b);
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) y0(new c4(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((f5) boxed()).distinct().mapToInt(new m(19));
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new m(24));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.d0 min() {
        return reduce(new m(21));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.d0 max() {
        return reduce(new m(25));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.c0 average() {
        long j = ((long[]) collect(new m(26), new m(27), new m(28)))[0];
        return j > 0 ? new j$.util.c0(r0[1] / j) : j$.util.c0.f21301c;
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z summaryStatistics() {
        return (j$.util.z) collect(new j$.time.h(18), new m(22), new m(23));
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        n nVar = new n(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(nVar);
        return y0(new a4(d7.INT_VALUE, nVar, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final boolean x() {
        return ((Boolean) y0(v3.q0(p1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean p() {
        return ((Boolean) y0(v3.q0(p1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean s() {
        return ((Boolean) y0(v3.q0(p1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) v3.k0((y1) z0(new m(18))).b();
    }
}
