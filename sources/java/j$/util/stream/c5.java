package j$.util.stream;

import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class c5 extends f5 {
    @Override // j$.util.stream.f5, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!this.h.s) {
            J0().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // j$.util.stream.f5, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!this.h.s) {
            J0().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !c7.ORDERED.i(this.m) ? this : new a(this, c7.r);
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
