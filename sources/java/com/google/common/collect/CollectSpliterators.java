package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

@GwtCompatible
@IgnoreJRERequirement
/* loaded from: classes3.dex */
final class CollectSpliterators {

    /* renamed from: com.google.common.collect.CollectSpliterators$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Spliterator<Object> {
        @Override // j$.util.Spliterator
        public final int characteristics() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final void forEachRemaining(Consumer<? super Object> consumer) {
            throw null;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ Comparator<? super Object> getComparator() {
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
        public final boolean tryAdvance(Consumer<? super Object> consumer) {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final Spliterator<Object> trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* renamed from: com.google.common.collect.CollectSpliterators$1Splitr, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1Splitr implements Spliterator<Object>, Consumer<Object> {

        /* renamed from: c, reason: collision with root package name */
        public Object f12255c;

        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            this.f12255c = obj;
        }

        public /* synthetic */ Consumer andThen(Consumer consumer) {
            return Consumer$CC.$default$andThen(this, consumer);
        }

        @Override // j$.util.Spliterator
        public final int characteristics() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public /* synthetic */ void forEachRemaining(Consumer<? super Object> consumer) {
            Spliterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // j$.util.Spliterator
        public final Comparator<? super Object> getComparator() {
            throw null;
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
        public final boolean tryAdvance(Consumer<? super Object> consumer) {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final Spliterator<Object> trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* renamed from: com.google.common.collect.CollectSpliterators$1WithCharacteristics, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1WithCharacteristics implements Spliterator<Object> {
        @Override // j$.util.Spliterator
        public final int characteristics() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final void forEachRemaining(Consumer<? super Object> consumer) {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final Comparator<? super Object> getComparator() {
            if (hasCharacteristics(4)) {
                throw null;
            }
            throw new IllegalStateException();
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
        public final boolean tryAdvance(Consumer<? super Object> consumer) {
            throw null;
        }

        @Override // j$.util.Spliterator
        public final Spliterator<Object> trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static abstract class FlatMapSpliterator<InElementT, OutElementT, OutSpliteratorT extends Spliterator<OutElementT>> implements Spliterator<OutElementT> {

        @IgnoreJRERequirement
        /* loaded from: classes3.dex */
        public interface Factory<InElementT, OutSpliteratorT extends Spliterator<?>> {
        }

        @Override // j$.util.Spliterator
        public final int characteristics() {
            return 0;
        }

        @Override // j$.util.Spliterator
        public final long estimateSize() {
            return Math.max(0L, 0L);
        }

        @Override // j$.util.Spliterator
        public final void forEachRemaining(Consumer consumer) {
            Object obj = null;
            obj.getClass();
            throw null;
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
        public final boolean tryAdvance(Consumer consumer) {
            Object obj = null;
            obj.getClass();
            throw null;
        }

        @Override // j$.util.Spliterator
        public final Spliterator trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class FlatMapSpliteratorOfDouble<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Double, DoubleConsumer, Spliterator.OfDouble> implements Spliterator.OfDouble {
        @Override // j$.util.Spliterator.OfDouble
        public final void forEachRemaining(DoubleConsumer doubleConsumer) {
            throw null;
        }

        @Override // j$.util.Spliterator.OfDouble
        public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
            throw null;
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, j$.util.Spliterator
        public final Spliterator.OfDouble trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class FlatMapSpliteratorOfInt<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Integer, IntConsumer, Spliterator.OfInt> implements Spliterator.OfInt {
        @Override // j$.util.Spliterator.OfInt
        public final void forEachRemaining(IntConsumer intConsumer) {
            throw null;
        }

        @Override // j$.util.Spliterator.OfInt
        public final boolean tryAdvance(IntConsumer intConsumer) {
            throw null;
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, j$.util.Spliterator
        public final Spliterator.OfInt trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class FlatMapSpliteratorOfLong<InElementT> extends FlatMapSpliteratorOfPrimitive<InElementT, Long, LongConsumer, Spliterator.OfLong> implements Spliterator.OfLong {
        @Override // j$.util.Spliterator.OfLong
        public final void forEachRemaining(LongConsumer longConsumer) {
            throw null;
        }

        @Override // j$.util.Spliterator.OfLong
        public final boolean tryAdvance(LongConsumer longConsumer) {
            throw null;
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliteratorOfPrimitive, com.google.common.collect.CollectSpliterators.FlatMapSpliterator, j$.util.Spliterator
        public final Spliterator.OfLong trySplit() {
            throw null;
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class FlatMapSpliteratorOfObject<InElementT, OutElementT> extends FlatMapSpliterator<InElementT, OutElementT, Spliterator<OutElementT>> {
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static abstract class FlatMapSpliteratorOfPrimitive<InElementT, OutElementT, OutConsumerT, OutSpliteratorT extends Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT>> extends FlatMapSpliterator<InElementT, OutElementT, OutSpliteratorT> implements Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT> {
        @Override // j$.util.Spliterator.OfPrimitive
        public final void forEachRemaining(Object obj) {
            Object obj2 = null;
            obj2.getClass();
            throw null;
        }

        @Override // j$.util.Spliterator.OfPrimitive
        public final boolean tryAdvance(Object obj) {
            Object obj2 = null;
            obj2.getClass();
            throw null;
        }

        @Override // com.google.common.collect.CollectSpliterators.FlatMapSpliterator, j$.util.Spliterator
        public final Spliterator.OfPrimitive trySplit() {
            throw null;
        }
    }
}
