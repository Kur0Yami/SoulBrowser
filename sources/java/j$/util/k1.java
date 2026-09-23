package j$.util;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class k1 implements Spliterator.OfInt {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f21356a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21357c;
    public final int d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.f(this, consumer);
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

    public k1(int[] iArr, int i, int i2, int i3) {
        this.f21356a = iArr;
        this.b = i;
        this.f21357c = i2;
        this.d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        int i = this.b;
        int i2 = (this.f21357c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new k1(this.f21356a, i, i2, this.d);
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(IntConsumer intConsumer) {
        int i;
        intConsumer.getClass();
        int[] iArr = this.f21356a;
        int length = iArr.length;
        int i2 = this.f21357c;
        if (length < i2 || (i = this.b) < 0) {
            return;
        }
        this.b = i2;
        if (i >= i2) {
            return;
        }
        do {
            intConsumer.accept(iArr[i]);
            i++;
        } while (i < i2);
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        int i = this.b;
        if (i < 0 || i >= this.f21357c) {
            return false;
        }
        this.b = i + 1;
        intConsumer.accept(this.f21356a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21357c - this.b;
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
