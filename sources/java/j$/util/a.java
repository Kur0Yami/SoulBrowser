package j$.util;

import j$.util.Spliterator;
import java.util.ConcurrentModificationException;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class a implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final java.util.List f21294a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f21295c;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
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

    public a(java.util.List list) {
        this.f21294a = list;
        this.b = 0;
        this.f21295c = -1;
    }

    public a(a aVar, int i, int i2) {
        this.f21294a = aVar.f21294a;
        this.b = i;
        this.f21295c = i2;
    }

    public final int a() {
        java.util.List list = this.f21294a;
        int i = this.f21295c;
        if (i >= 0) {
            return i;
        }
        int size = list.size();
        this.f21295c = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int a2 = a();
        int i = this.b;
        int i2 = (a2 + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new a(this, i, i2);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int a2 = a();
        int i = this.b;
        if (i >= a2) {
            return false;
        }
        this.b = i + 1;
        try {
            consumer.accept(this.f21294a.get(i));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        java.util.List list = this.f21294a;
        int a2 = a();
        this.b = a2;
        for (int i = this.b; i < a2; i++) {
            try {
                consumer.accept(list.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a() - this.b;
    }
}
