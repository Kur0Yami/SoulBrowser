package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class s7 extends e7 implements Spliterator.OfDouble {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.e(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.s(this, consumer);
    }

    @Override // j$.util.stream.e7
    public final e7 e(Spliterator spliterator) {
        return new e7(this.b, spliterator, this.f21410a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.x6, java.lang.Object, j$.util.stream.c, java.util.function.DoubleConsumer] */
    @Override // j$.util.stream.e7
    public final void d() {
        ?? x6Var = new x6();
        this.h = x6Var;
        Objects.requireNonNull(x6Var);
        this.e = this.b.w0(new r7(x6Var, 1));
        this.f = new j$.util.p(10, this);
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfPrimitive trySplit() {
        return (Spliterator.OfDouble) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfDouble) super.trySplit();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d;
        Objects.requireNonNull(doubleConsumer);
        boolean a2 = a();
        if (a2) {
            r6 r6Var = (r6) this.h;
            long j = this.g;
            int r = r6Var.r(j);
            if (r6Var.f21391c == 0 && r == 0) {
                d = ((double[]) r6Var.e)[(int) j];
            } else {
                d = ((double[][]) r6Var.f)[r][(int) (j - r6Var.d[r])];
            }
            doubleConsumer.accept(d);
        }
        return a2;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(doubleConsumer);
            c();
            Objects.requireNonNull(doubleConsumer);
            r7 r7Var = new r7(doubleConsumer, 0);
            this.b.v0(this.d, r7Var);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(doubleConsumer));
    }
}
