package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.function.Consumer$CC;
import j$.util.function.DoubleConsumer$CC;
import j$.util.function.IntConsumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

@GwtCompatible
@IgnoreJRERequirement
/* loaded from: classes3.dex */
public final class Streams {

    /* renamed from: com.google.common.collect.Streams$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Spliterators.AbstractSpliterator<Object> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
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

    /* renamed from: com.google.common.collect.Streams$1OptionalState, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1OptionalState {
    }

    /* renamed from: com.google.common.collect.Streams$1Splitr, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1Splitr extends MapWithIndexSpliterator<Spliterator<Object>, Object, C1Splitr> implements Consumer<Object> {
        public Object f;

        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public final MapWithIndexSpliterator a(Spliterator spliterator, long j) {
            throw null;
        }

        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            this.f = obj;
        }

        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer$CC.$default$andThen(this, consumer);
        }

        @Override // j$.util.Spliterator
        public final boolean tryAdvance(Consumer consumer) {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Streams$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends Spliterators.AbstractSpliterator<Object> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
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

    /* renamed from: com.google.common.collect.Streams$2Splitr, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C2Splitr extends MapWithIndexSpliterator<Spliterator.OfInt, Object, C2Splitr> implements IntConsumer {
        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public final MapWithIndexSpliterator a(Spliterator spliterator, long j) {
            throw null;
        }

        @Override // java.util.function.IntConsumer
        public final void accept(int i) {
        }

        public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
            return IntConsumer$CC.$default$andThen(this, intConsumer);
        }

        @Override // j$.util.Spliterator
        public final boolean tryAdvance(Consumer consumer) {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Streams$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends Spliterators.AbstractSpliterator<Object> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
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

    /* renamed from: com.google.common.collect.Streams$3Splitr, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C3Splitr extends MapWithIndexSpliterator<Spliterator.OfLong, Object, C3Splitr> implements LongConsumer {
        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public final MapWithIndexSpliterator a(Spliterator spliterator, long j) {
            throw null;
        }

        @Override // java.util.function.LongConsumer
        public final void accept(long j) {
        }

        public /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
            return LongConsumer$CC.$default$andThen(this, longConsumer);
        }

        @Override // j$.util.Spliterator
        public final boolean tryAdvance(Consumer consumer) {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Streams$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends Spliterators.AbstractSpliterator<Object> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
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

    /* renamed from: com.google.common.collect.Streams$4Splitr, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C4Splitr extends MapWithIndexSpliterator<Spliterator.OfDouble, Object, C4Splitr> implements DoubleConsumer {
        @Override // com.google.common.collect.Streams.MapWithIndexSpliterator
        public final MapWithIndexSpliterator a(Spliterator spliterator, long j) {
            throw null;
        }

        @Override // java.util.function.DoubleConsumer
        public final void accept(double d) {
        }

        public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
            return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
        }

        @Override // j$.util.Spliterator
        public final boolean tryAdvance(Consumer consumer) {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Streams$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends Spliterators.AbstractSpliterator<Object> {
        @Override // j$.util.Spliterators.AbstractSpliterator, j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
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

    /* loaded from: classes3.dex */
    public interface DoubleFunctionWithIndex<R> {
    }

    /* loaded from: classes3.dex */
    public interface FunctionWithIndex<T, R> {
    }

    /* loaded from: classes3.dex */
    public interface IntFunctionWithIndex<R> {
    }

    /* loaded from: classes3.dex */
    public interface LongFunctionWithIndex<R> {
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static abstract class MapWithIndexSpliterator<F extends Spliterator<?>, R, S extends MapWithIndexSpliterator<F, R, S>> implements Spliterator<R> {

        /* renamed from: c, reason: collision with root package name */
        public long f12404c;

        public abstract MapWithIndexSpliterator a(Spliterator spliterator, long j);

        @Override // j$.util.Spliterator
        public final int characteristics() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ Comparator getComparator() {
            return Spliterator.CC.$default$getComparator(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ long getExactSizeIfKnown() {
            return Spliterator.CC.$default$getExactSizeIfKnown(this);
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ boolean hasCharacteristics(int i) {
            return Spliterator.CC.$default$hasCharacteristics(this, i);
        }

        @Override // j$.util.Spliterator
        public final Spliterator trySplit() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TemporaryPair<A, B> {
    }
}
