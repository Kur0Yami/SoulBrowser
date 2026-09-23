package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class j0 implements PrimitiveIterator$OfInt, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfInt f21354a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f21354a;
        if (obj instanceof j0) {
            obj = ((j0) obj).f21354a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.o0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f21354a.forEachRemaining((PrimitiveIterator.OfInt) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21354a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f21354a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f21354a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f21354a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f21354a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f21354a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfInt
    public final /* synthetic */ int nextInt() {
        return this.f21354a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f21354a.remove();
    }
}
