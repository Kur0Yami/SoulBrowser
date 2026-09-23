package j$.util;

import j$.util.Spliterator;
import j$.util.function.DoubleConsumer$CC;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class c1 implements PrimitiveIterator$OfDouble, DoubleConsumer, a0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21303a = false;
    public double b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfDouble f21304c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.o0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (o1.f21369a) {
            o1.a(c1.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (o1.f21369a) {
            o1.a(c1.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new f0(consumer, 0));
    }

    public c1(Spliterator.OfDouble ofDouble) {
        this.f21304c = ofDouble;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f21303a = true;
        this.b = d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f21303a) {
            this.f21304c.tryAdvance((DoubleConsumer) this);
        }
        return this.f21303a;
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final double nextDouble() {
        if (!this.f21303a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f21303a = false;
        return this.b;
    }
}
