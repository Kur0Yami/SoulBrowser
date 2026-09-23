package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class m0 implements PrimitiveIterator$OfLong, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PrimitiveIterator.OfLong f21363a;

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfLong ofLong = this.f21363a;
        if (obj instanceof m0) {
            obj = ((m0) obj).f21363a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.o0
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f21363a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21363a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f21363a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f21363a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f21363a.hashCode();
    }

    @Override // j$.util.PrimitiveIterator$OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f21363a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f21363a.next();
    }

    @Override // j$.util.PrimitiveIterator$OfLong
    public final /* synthetic */ long nextLong() {
        return this.f21363a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f21363a.remove();
    }
}
