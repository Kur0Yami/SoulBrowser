package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class u7 extends e7 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.f(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.t(this, consumer);
    }

    @Override // j$.util.stream.e7
    public final e7 e(Spliterator spliterator) {
        return new e7(this.b, spliterator, this.f21410a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.x6, java.util.function.IntConsumer, java.lang.Object, j$.util.stream.c] */
    @Override // j$.util.stream.e7
    public final void d() {
        ?? x6Var = new x6();
        this.h = x6Var;
        Objects.requireNonNull(x6Var);
        this.e = this.b.w0(new t7(x6Var, 1));
        this.f = new j$.util.p(11, this);
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfPrimitive trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i;
        Objects.requireNonNull(intConsumer);
        boolean a2 = a();
        if (a2) {
            t6 t6Var = (t6) this.h;
            long j = this.g;
            int r = t6Var.r(j);
            if (t6Var.f21391c == 0 && r == 0) {
                i = ((int[]) t6Var.e)[(int) j];
            } else {
                i = ((int[][]) t6Var.f)[r][(int) (j - t6Var.d[r])];
            }
            intConsumer.accept(i);
        }
        return a2;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(intConsumer);
            c();
            Objects.requireNonNull(intConsumer);
            t7 t7Var = new t7(intConsumer, 0);
            this.b.v0(this.d, t7Var);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(intConsumer));
    }
}
