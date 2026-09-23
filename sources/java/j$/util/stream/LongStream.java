package j$.util.stream;

import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    IntStream A();

    LongStream a();

    DoubleStream asDoubleStream();

    j$.util.c0 average();

    LongStream b();

    Stream boxed();

    LongStream c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    LongStream d(j$.util.p pVar);

    LongStream distinct();

    LongStream e();

    j$.util.e0 findAny();

    j$.util.e0 findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    Iterator<Long> iterator2();

    DoubleStream j();

    LongStream limit(long j);

    boolean m();

    Stream mapToObj(LongFunction longFunction);

    j$.util.e0 max();

    j$.util.e0 min();

    @Override // j$.util.stream.BaseStream
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    boolean q();

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.e0 reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    Spliterator.OfLong spliterator();

    long sum();

    j$.util.b0 summaryStatistics();

    long[] toArray();

    boolean w();
}
