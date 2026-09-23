package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class z implements DoubleStream {

    /* renamed from: a */
    public final /* synthetic */ java.util.stream.DoubleStream f21511a;

    public /* synthetic */ z(java.util.stream.DoubleStream doubleStream) {
        this.f21511a = doubleStream;
    }

    public static /* synthetic */ DoubleStream f(java.util.stream.DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof a0 ? ((a0) doubleStream).f21381a : new z(doubleStream);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean B() {
        return this.f21511a.noneMatch(null);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream a() {
        return f(this.f21511a.takeWhile(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 average() {
        return j$.com.android.tools.r8.a.y(this.f21511a.average());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream b() {
        return f(this.f21511a.filter(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream boxed() {
        return z6.f(this.f21511a.boxed());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream c() {
        return f(this.f21511a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f21511a.close();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f21511a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ long count() {
        return this.f21511a.count();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream distinct() {
        return f(this.f21511a.distinct());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream e() {
        return f(this.f21511a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.DoubleStream doubleStream = this.f21511a;
        if (obj instanceof z) {
            obj = ((z) obj).f21511a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 findAny() {
        return j$.com.android.tools.r8.a.y(this.f21511a.findAny());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 findFirst() {
        return j$.com.android.tools.r8.a.y(this.f21511a.findFirst());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f21511a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f21511a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21511a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f21511a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Double> iterator2() {
        ?? it = this.f21511a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.h0 ? ((j$.util.h0) it).f21350a : new j$.util.g0(it);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Double> iterator2() {
        return this.f21511a.iterator();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream limit(long j) {
        return f(this.f21511a.limit(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return z6.f(this.f21511a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 max() {
        return j$.com.android.tools.r8.a.y(this.f21511a.max());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 min() {
        return j$.com.android.tools.r8.a.y(this.f21511a.min());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean o() {
        return this.f21511a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return e.f(this.f21511a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return e.f(this.f21511a.parallel());
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ DoubleStream parallel() {
        return f(this.f21511a.parallel());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return f(this.f21511a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f21511a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ j$.util.c0 reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.com.android.tools.r8.a.y(this.f21511a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return e.f(this.f21511a.sequential());
    }

    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ DoubleStream sequential() {
        return f(this.f21511a.sequential());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream skip(long j) {
        return f(this.f21511a.skip(j));
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream sorted() {
        return f(this.f21511a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.DoubleStream, j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator.OfDouble spliterator() {
        return j$.util.q0.a(this.f21511a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.y0.a(this.f21511a.spliterator());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double sum() {
        return this.f21511a.sum();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ boolean t() {
        return this.f21511a.allMatch(null);
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ double[] toArray() {
        return this.f21511a.toArray();
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ LongStream u() {
        return h1.f(this.f21511a.mapToLong(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return e.f(this.f21511a.unordered());
    }

    @Override // j$.util.stream.DoubleStream
    public final /* synthetic */ IntStream z() {
        return IntStream.VivifiedWrapper.convert(this.f21511a.mapToInt(null));
    }

    @Override // j$.util.stream.DoubleStream
    public final j$.util.y summaryStatistics() {
        this.f21511a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.DoubleStream
    public final DoubleStream d(j$.util.p pVar) {
        java.util.stream.DoubleStream doubleStream = this.f21511a;
        j$.util.p pVar2 = new j$.util.p(4);
        pVar2.b = pVar;
        return f(doubleStream.flatMap(pVar2));
    }
}
