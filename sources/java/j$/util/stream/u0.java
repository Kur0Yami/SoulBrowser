package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class u0 extends x0 {
    @Override // j$.util.stream.a
    public final Spliterator D0(Supplier supplier) {
        return new p7(supplier);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final IntStream sequential() {
        this.h.s = false;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final IntStream parallel() {
        this.h.s = true;
        return this;
    }

    @Override // j$.util.stream.x0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (!this.h.s) {
            x0.L0(J0()).forEachRemaining(intConsumer);
        } else {
            super.forEach(intConsumer);
        }
    }

    @Override // j$.util.stream.x0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (!this.h.s) {
            x0.L0(J0()).forEachRemaining(intConsumer);
        } else {
            super.forEachOrdered(intConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !c7.ORDERED.i(this.m) ? this : new r(this, c7.r, 1);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.a
    public final boolean G0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        throw new UnsupportedOperationException();
    }
}
