package j$.util;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class a1 implements PrimitiveIterator$OfInt, IntConsumer, a0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21296a = false;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfInt f21297c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.o0
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (o1.f21369a) {
            o1.a(a1.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (o1.f21369a) {
            o1.a(a1.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new i0(consumer, 0));
    }

    public a1(Spliterator.OfInt ofInt) {
        this.f21297c = ofInt;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f21296a = true;
        this.b = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f21296a) {
            this.f21297c.tryAdvance((IntConsumer) this);
        }
        return this.f21296a;
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final int nextInt() {
        if (!this.f21296a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f21296a = false;
        return this.b;
    }
}
