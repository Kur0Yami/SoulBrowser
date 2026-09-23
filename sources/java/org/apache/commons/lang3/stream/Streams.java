package org.apache.commons.lang3.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collector;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import org.apache.commons.lang3.f;
import org.apache.commons.lang3.g;

/* loaded from: classes4.dex */
public class Streams {

    /* loaded from: classes4.dex */
    public static class ArrayCollector<E> implements Collector<E, List<E>, E[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final Set f22389a = Collections.EMPTY_SET;

        @Override // j$.util.stream.Collector
        public final BiConsumer accumulator() {
            return new f(1);
        }

        @Override // j$.util.stream.Collector
        public final Set characteristics() {
            return f22389a;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.function.BinaryOperator] */
        @Override // j$.util.stream.Collector
        public final BinaryOperator combiner() {
            return new Object();
        }

        @Override // j$.util.stream.Collector
        public final Function finisher() {
            return new a(0, this);
        }

        @Override // j$.util.stream.Collector
        public final Supplier supplier() {
            return new g(5);
        }
    }

    /* loaded from: classes4.dex */
    public static final class EnumerationSpliterator<T> extends Spliterators.AbstractSpliterator<T> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public final void forEachRemaining(Consumer consumer) {
            throw null;
        }

        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        @Override // j$.util.Spliterator
        public final boolean tryAdvance(Consumer consumer) {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public static class FailableStream<T> {
    }
}
