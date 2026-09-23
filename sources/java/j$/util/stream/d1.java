package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class d1 extends g1 {
    @Override // j$.util.stream.a
    public final Spliterator D0(Supplier supplier) {
        return new p7(supplier);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final LongStream sequential() {
        this.h.s = false;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final LongStream parallel() {
        this.h.s = true;
        return this;
    }

    @Override // j$.util.stream.g1, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (!this.h.s) {
            g1.L0(J0()).forEachRemaining(longConsumer);
        } else {
            super.forEach(longConsumer);
        }
    }

    @Override // j$.util.stream.g1, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (!this.h.s) {
            g1.L0(J0()).forEachRemaining(longConsumer);
        } else {
            super.forEachOrdered(longConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !c7.ORDERED.i(this.m) ? this : new s(this, c7.r, 4);
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
