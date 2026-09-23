package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class u0 implements Spliterator.OfLong {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfLong f21520a;

    public /* synthetic */ u0(Spliterator.OfLong ofLong) {
        this.f21520a = ofLong;
    }

    public static /* synthetic */ Spliterator.OfLong a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof v0 ? ((v0) ofLong).f21521a : new u0(ofLong);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f21520a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f21520a;
        if (obj instanceof u0) {
            obj = ((u0) obj).f21520a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f21520a.estimateSize();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f21520a.forEachRemaining((Spliterator.OfLong) longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21520a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.Spliterator.OfLong
    /* renamed from: forEachRemaining */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f21520a.forEachRemaining(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f21520a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f21520a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f21520a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21520a.hashCode();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f21520a.tryAdvance((Spliterator.OfLong) longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f21520a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.Spliterator.OfLong
    /* renamed from: tryAdvance */
    public final /* synthetic */ boolean tryAdvance2(LongConsumer longConsumer) {
        return this.f21520a.tryAdvance(longConsumer);
    }

    @Override // j$.util.Spliterator.OfLong, j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfLong trySplit() {
        return a(this.f21520a.trySplit());
    }

    @Override // j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return w0.a(this.f21520a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return y0.a(this.f21520a.trySplit());
    }
}
