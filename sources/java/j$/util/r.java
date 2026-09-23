package j$.util;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class r implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21373a;

    public r(Spliterator spliterator) {
        this.f21373a = spliterator;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return this.f21373a.tryAdvance(new p(0, consumer));
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        this.f21373a.forEachRemaining(new p(0, consumer));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator trySplit = this.f21373a.trySplit();
        if (trySplit == null) {
            return null;
        }
        return new r(trySplit);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21373a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return this.f21373a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f21373a.characteristics();
    }

    @Override // j$.util.Spliterator
    public final boolean hasCharacteristics(int i) {
        return this.f21373a.hasCharacteristics(i);
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f21373a.getComparator();
    }
}
