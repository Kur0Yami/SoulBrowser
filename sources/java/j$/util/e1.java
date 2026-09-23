package j$.util;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class e1 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f21334a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21335c;
    public final int d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    public e1(Object[] objArr, int i, int i2, int i3) {
        this.f21334a = objArr;
        this.b = i;
        this.f21335c = i2;
        this.d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.b;
        int i2 = (this.f21335c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new e1(this.f21334a, i, i2, this.d);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        int i;
        consumer.getClass();
        Object[] objArr = this.f21334a;
        int length = objArr.length;
        int i2 = this.f21335c;
        if (length < i2 || (i = this.b) < 0) {
            return;
        }
        this.b = i2;
        if (i >= i2) {
            return;
        }
        do {
            consumer.accept(objArr[i]);
            i++;
        } while (i < i2);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int i = this.b;
        if (i < 0 || i >= this.f21335c) {
            return false;
        }
        this.b = i + 1;
        consumer.accept(this.f21334a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21335c - this.b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.d;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (Spliterator.CC.$default$hasCharacteristics(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
