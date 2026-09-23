package j$.util.concurrent;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class w implements Spliterator.OfInt {

    /* renamed from: a, reason: collision with root package name */
    public long f21322a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21323c;
    public final int d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.f(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return Spliterator.CC.$default$getComparator(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.t(this, consumer);
    }

    public w(long j, long j2, int i, int i2) {
        this.f21322a = j;
        this.b = j2;
        this.f21323c = i;
        this.d = i2;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final w trySplit() {
        long j = this.f21322a;
        long j2 = (this.b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f21322a = j2;
        return new w(j, j2, this.f21323c, this.d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.b - this.f21322a;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f21322a;
        if (j >= this.b) {
            return false;
        }
        intConsumer.accept(ThreadLocalRandom.current().b(this.f21323c, this.d));
        this.f21322a = j + 1;
        return true;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f21322a;
        long j2 = this.b;
        if (j < j2) {
            this.f21322a = j2;
            ThreadLocalRandom current = ThreadLocalRandom.current();
            do {
                intConsumer.accept(current.b(this.f21323c, this.d));
                j++;
            } while (j < j2);
        }
    }
}
