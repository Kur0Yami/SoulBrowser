package org.apache.commons.lang3;

import j$.util.function.Function$CC;
import j$.util.stream.Collector;
import java.lang.reflect.Array;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.lang3.Streams;

@Deprecated
/* loaded from: classes4.dex */
public class Streams {

    @Deprecated
    /* loaded from: classes4.dex */
    public static class ArrayCollector<O> implements Collector<O, List<O>, O[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final Set f22354a = Collections.EMPTY_SET;

        @Override // j$.util.stream.Collector
        public final BiConsumer accumulator() {
            return new f(1);
        }

        @Override // j$.util.stream.Collector
        public final Set characteristics() {
            return f22354a;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.function.BinaryOperator] */
        @Override // j$.util.stream.Collector
        public final BinaryOperator combiner() {
            return new Object();
        }

        @Override // j$.util.stream.Collector
        public final Function finisher() {
            return new Function() { // from class: org.apache.commons.lang3.h
                @Override // java.util.function.Function
                /* renamed from: andThen */
                public /* synthetic */ Function mo17andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List list = (List) obj;
                    Set set = Streams.ArrayCollector.f22354a;
                    Streams.ArrayCollector.this.getClass();
                    return list.toArray((Object[]) Array.newInstance((Class<?>) null, list.size()));
                }

                @Override // java.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            };
        }

        @Override // j$.util.stream.Collector
        public final Supplier supplier() {
            return new g(5);
        }
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public static class FailableStream<O> {
    }
}
