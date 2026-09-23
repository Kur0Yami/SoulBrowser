package j$.util;

import j$.util.Spliterator;
import j$.util.function.LongConsumer$CC;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class b1 implements PrimitiveIterator$OfLong, LongConsumer, a0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21298a = false;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfLong f21299c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.o0
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (o1.f21369a) {
            o1.a(b1.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (o1.f21369a) {
            o1.a(b1.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new l0(consumer, 0));
    }

    public b1(Spliterator.OfLong ofLong) {
        this.f21299c = ofLong;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21298a = true;
        this.b = j;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f21298a) {
            this.f21299c.tryAdvance((LongConsumer) this);
        }
        return this.f21298a;
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final long nextLong() {
        if (!this.f21298a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f21298a = false;
        return this.b;
    }
}
