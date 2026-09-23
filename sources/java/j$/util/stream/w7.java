package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class w7 extends e7 implements Spliterator.OfLong {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.g(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.u(this, consumer);
    }

    @Override // j$.util.stream.e7
    public final e7 e(Spliterator spliterator) {
        return new e7(this.b, spliterator, this.f21410a);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.stream.x6, java.lang.Object, j$.util.stream.c, java.util.function.LongConsumer] */
    @Override // j$.util.stream.e7
    public final void d() {
        ?? x6Var = new x6();
        this.h = x6Var;
        Objects.requireNonNull(x6Var);
        this.e = this.b.w0(new v7(x6Var, 1));
        this.f = new j$.util.p(12, this);
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfLong trySplit() {
        return (Spliterator.OfLong) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator.OfPrimitive trySplit() {
        return (Spliterator.OfLong) super.trySplit();
    }

    @Override // j$.util.stream.e7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfLong) super.trySplit();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(LongConsumer longConsumer) {
        long j;
        Objects.requireNonNull(longConsumer);
        boolean a2 = a();
        if (a2) {
            v6 v6Var = (v6) this.h;
            long j2 = this.g;
            int r = v6Var.r(j2);
            if (v6Var.f21391c == 0 && r == 0) {
                j = ((long[]) v6Var.e)[(int) j2];
            } else {
                j = ((long[][]) v6Var.f)[r][(int) (j2 - v6Var.d[r])];
            }
            longConsumer.accept(j);
        }
        return a2;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(longConsumer);
            c();
            Objects.requireNonNull(longConsumer);
            v7 v7Var = new v7(longConsumer, 0);
            this.b.v0(this.d, v7Var);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(longConsumer));
    }
}
