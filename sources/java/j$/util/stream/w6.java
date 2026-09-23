package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract class w6 implements Spliterator.OfPrimitive {

    /* renamed from: a, reason: collision with root package name */
    public int f21504a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f21505c;
    public final int d;
    public Object e;
    public final /* synthetic */ x6 f;

    public abstract void a(int i, Object obj, Object obj2);

    public abstract Spliterator.OfPrimitive b(Object obj, int i, int i2);

    public abstract Spliterator.OfPrimitive c(int i, int i2, int i3, int i4);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
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

    public w6(x6 x6Var, int i, int i2, int i3, int i4) {
        this.f = x6Var;
        this.f21504a = i;
        this.b = i2;
        this.f21505c = i3;
        this.d = i4;
        Object[] objArr = x6Var.f;
        this.e = objArr == null ? x6Var.e : objArr[i];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.f21504a;
        int i2 = this.d;
        int i3 = this.b;
        if (i == i3) {
            return i2 - this.f21505c;
        }
        long[] jArr = this.f.d;
        return ((jArr[i3] + i2) - jArr[i]) - this.f21505c;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.f21504a;
        int i2 = this.b;
        if (i >= i2 && (i != i2 || this.f21505c >= this.d)) {
            return false;
        }
        Object obj2 = this.e;
        int i3 = this.f21505c;
        this.f21505c = i3 + 1;
        a(i3, obj2, obj);
        int i4 = this.f21505c;
        Object obj3 = this.e;
        x6 x6Var = this.f;
        if (i4 == x6Var.q(obj3)) {
            this.f21505c = 0;
            int i5 = this.f21504a + 1;
            this.f21504a = i5;
            Object[] objArr = x6Var.f;
            if (objArr != null && i5 <= i2) {
                this.e = objArr[i5];
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(Object obj) {
        x6 x6Var;
        Objects.requireNonNull(obj);
        int i = this.f21504a;
        int i2 = this.d;
        int i3 = this.b;
        if (i < i3 || (i == i3 && this.f21505c < i2)) {
            int i4 = this.f21505c;
            while (true) {
                x6Var = this.f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = x6Var.f[i];
                x6Var.p(obj2, i4, x6Var.q(obj2), obj);
                i++;
                i4 = 0;
            }
            x6Var.p(this.f21504a == i3 ? this.e : x6Var.f[i3], i4, i2, obj);
            this.f21504a = i3;
            this.f21505c = i2;
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator.OfPrimitive trySplit() {
        int i = this.f21504a;
        int i2 = this.b;
        if (i < i2) {
            int i3 = i2 - 1;
            int i4 = this.f21505c;
            x6 x6Var = this.f;
            Spliterator.OfPrimitive c2 = c(i, i3, i4, x6Var.q(x6Var.f[i3]));
            this.f21504a = i2;
            this.f21505c = 0;
            this.e = x6Var.f[i2];
            return c2;
        }
        if (i != i2) {
            return null;
        }
        int i5 = this.f21505c;
        int i6 = (this.d - i5) / 2;
        if (i6 == 0) {
            return null;
        }
        Spliterator.OfPrimitive b = b(this.e, i5, i6);
        this.f21505c += i6;
        return b;
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    @Override // j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfLong trySplit() {
        return (Spliterator.OfLong) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    @Override // j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) trySplit();
    }
}
