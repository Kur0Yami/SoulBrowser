package j$.util.stream;

import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface DoubleStream extends BaseStream<Double, DoubleStream> {
    boolean B();

    DoubleStream a();

    j$.util.c0 average();

    DoubleStream b();

    Stream boxed();

    DoubleStream c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    DoubleStream d(j$.util.p pVar);

    DoubleStream distinct();

    DoubleStream e();

    j$.util.c0 findAny();

    j$.util.c0 findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    Iterator<Double> iterator2();

    DoubleStream limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.c0 max();

    j$.util.c0 min();

    boolean o();

    @Override // j$.util.stream.BaseStream
    DoubleStream parallel();

    DoubleStream peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.c0 reduce(DoubleBinaryOperator doubleBinaryOperator);

    @Override // j$.util.stream.BaseStream
    DoubleStream sequential();

    DoubleStream skip(long j);

    DoubleStream sorted();

    @Override // j$.util.stream.BaseStream
    Spliterator.OfDouble spliterator();

    double sum();

    j$.util.y summaryStatistics();

    boolean t();

    double[] toArray();

    LongStream u();

    IntStream z();
}
