package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final /* synthetic */ class h1 implements LongStream {

    /* renamed from: a */
    public final /* synthetic */ java.util.stream.LongStream f21429a;

    public /* synthetic */ h1(java.util.stream.LongStream longStream) {
        this.f21429a = longStream;
    }

    public static /* synthetic */ LongStream f(java.util.stream.LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof i1 ? ((i1) longStream).f21435a : new h1(longStream);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ IntStream A() {
        return IntStream.VivifiedWrapper.convert(this.f21429a.mapToInt(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream a() {
        return f(this.f21429a.takeWhile(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return z.f(this.f21429a.asDoubleStream());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.c0 average() {
        return j$.com.android.tools.r8.a.y(this.f21429a.average());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream b() {
        return f(this.f21429a.filter(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return z6.f(this.f21429a.boxed());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream c() {
        return f(this.f21429a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f21429a.close();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f21429a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f21429a.count();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return f(this.f21429a.distinct());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream e() {
        return f(this.f21429a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.LongStream longStream = this.f21429a;
        if (obj instanceof h1) {
            obj = ((h1) obj).f21429a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.e0 findAny() {
        return j$.com.android.tools.r8.a.A(this.f21429a.findAny());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.e0 findFirst() {
        return j$.com.android.tools.r8.a.A(this.f21429a.findFirst());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f21429a.forEach(longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f21429a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21429a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f21429a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        ?? it = this.f21429a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.n0 ? ((j$.util.n0) it).f21367a : new j$.util.m0(it);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator<Long> iterator2() {
        return this.f21429a.iterator();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ DoubleStream j() {
        return z.f(this.f21429a.mapToDouble(null));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return f(this.f21429a.limit(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean m() {
        return this.f21429a.noneMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return z6.f(this.f21429a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.e0 max() {
        return j$.com.android.tools.r8.a.A(this.f21429a.max());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.e0 min() {
        return j$.com.android.tools.r8.a.A(this.f21429a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return e.f(this.f21429a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return e.f(this.f21429a.parallel());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ LongStream parallel() {
        return f(this.f21429a.parallel());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return f(this.f21429a.peek(longConsumer));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean q() {
        return this.f21429a.anyMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f21429a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ j$.util.e0 reduce(LongBinaryOperator longBinaryOperator) {
        return j$.com.android.tools.r8.a.A(this.f21429a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return e.f(this.f21429a.sequential());
    }

    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ LongStream sequential() {
        return f(this.f21429a.sequential());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return f(this.f21429a.skip(j));
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return f(this.f21429a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.LongStream, j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator.OfLong spliterator() {
        return j$.util.u0.a(this.f21429a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.y0.a(this.f21429a.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f21429a.sum();
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f21429a.toArray();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return e.f(this.f21429a.unordered());
    }

    @Override // j$.util.stream.LongStream
    public final /* synthetic */ boolean w() {
        return this.f21429a.allMatch(null);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.b0 summaryStatistics() {
        this.f21429a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(j$.util.p pVar) {
        java.util.stream.LongStream longStream = this.f21429a;
        j$.util.p pVar2 = new j$.util.p(6);
        pVar2.b = pVar;
        return f(longStream.flatMap(pVar2));
    }
}
