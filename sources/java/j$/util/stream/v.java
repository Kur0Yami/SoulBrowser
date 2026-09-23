package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class v extends y {
    @Override // j$.util.stream.a
    public final Spliterator D0(Supplier supplier) {
        return new p7(supplier);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final DoubleStream sequential() {
        this.h.s = false;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final DoubleStream parallel() {
        this.h.s = true;
        return this;
    }

    @Override // j$.util.stream.y, j$.util.stream.DoubleStream
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (!this.h.s) {
            y.L0(J0()).forEachRemaining(doubleConsumer);
        } else {
            super.forEach(doubleConsumer);
        }
    }

    @Override // j$.util.stream.y, j$.util.stream.DoubleStream
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (!this.h.s) {
            y.L0(J0()).forEachRemaining(doubleConsumer);
        } else {
            super.forEachOrdered(doubleConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !c7.ORDERED.i(this.m) ? this : new q(this, c7.r, 1);
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
