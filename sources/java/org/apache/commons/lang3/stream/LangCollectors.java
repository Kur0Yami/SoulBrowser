package org.apache.commons.lang3.stream;

import j$.util.stream.Collector;
import java.util.Collections;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final class LangCollectors {

    /* loaded from: classes4.dex */
    public static final class SimpleCollector<T, A, R> implements Collector<T, A, R> {
        @Override // j$.util.stream.Collector
        public final BiConsumer accumulator() {
            return null;
        }

        @Override // j$.util.stream.Collector
        public final Set characteristics() {
            return null;
        }

        @Override // j$.util.stream.Collector
        public final BinaryOperator combiner() {
            return null;
        }

        @Override // j$.util.stream.Collector
        public final Function finisher() {
            return null;
        }

        @Override // j$.util.stream.Collector
        public final Supplier supplier() {
            return null;
        }
    }

    static {
        Set set = Collections.EMPTY_SET;
    }
}
