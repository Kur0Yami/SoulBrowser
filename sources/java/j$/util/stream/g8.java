package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract class g8 extends j8 implements Spliterator.OfPrimitive {
    public abstract void g(Object obj);

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

    public abstract i7 i(int i);

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        while (f() != i8.NO_MORE && ((Spliterator.OfPrimitive) this.f21443a).tryAdvance(this)) {
            if (a(1L) == 1) {
                g(obj);
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(Object obj) {
        Objects.requireNonNull(obj);
        i7 i7Var = null;
        while (true) {
            i8 f = f();
            if (f == i8.NO_MORE) {
                return;
            }
            i8 i8Var = i8.MAYBE_MORE;
            Spliterator spliterator = this.f21443a;
            if (f == i8Var) {
                int i = this.f21444c;
                if (i7Var == null) {
                    i7Var = i(i);
                } else {
                    i7Var.b = 0;
                }
                long j = 0;
                while (((Spliterator.OfPrimitive) spliterator).tryAdvance((Spliterator.OfPrimitive) i7Var)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                } else {
                    i7Var.a(obj, a(j));
                }
            } else {
                ((Spliterator.OfPrimitive) spliterator).forEachRemaining((Spliterator.OfPrimitive) obj);
                return;
            }
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
