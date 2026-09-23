package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class h8 extends j8 implements Spliterator, Consumer {
    public Object f;

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
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

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f = obj;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (f() != i8.NO_MORE && this.f21443a.tryAdvance(this)) {
            if (a(1L) == 1) {
                consumer.accept(this.f);
                this.f = null;
                return true;
            }
        }
        return false;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        j7 j7Var = null;
        while (true) {
            i8 f = f();
            if (f == i8.NO_MORE) {
                return;
            }
            i8 i8Var = i8.MAYBE_MORE;
            Spliterator spliterator = this.f21443a;
            if (f == i8Var) {
                int i = this.f21444c;
                if (j7Var == null) {
                    j7Var = new j7(i);
                } else {
                    j7Var.f21449a = 0;
                }
                long j = 0;
                while (spliterator.tryAdvance(j7Var)) {
                    j++;
                    if (j >= i) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long a2 = a(j);
                for (int i2 = 0; i2 < a2; i2++) {
                    consumer.accept(j7Var.b[i2]);
                }
            } else {
                spliterator.forEachRemaining(consumer);
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.j8, j$.util.Spliterator] */
    @Override // j$.util.stream.j8
    public final Spliterator b(Spliterator spliterator) {
        return new j8(spliterator, this);
    }
}
