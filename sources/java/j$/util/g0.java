package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class g0 implements PrimitiveIterator$OfDouble, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfDouble f21348a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfDouble ofDouble = this.f21348a;
        if (obj instanceof g0) {
            obj = ((g0) obj).f21348a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.o0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f21348a.forEachRemaining((PrimitiveIterator.OfDouble) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21348a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f21348a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f21348a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f21348a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f21348a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f21348a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.f21348a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f21348a.remove();
    }
}
