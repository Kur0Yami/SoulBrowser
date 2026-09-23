package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class n2 extends e2 {
    @Override // j$.util.stream.c2
    public final c2 i(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.f21408c) {
            return this;
        }
        long count = this.f21407a.count();
        if (j >= count) {
            return this.b.i(j - count, j2 - count, intFunction);
        }
        if (j2 > count) {
            return v3.b0(d7.REFERENCE, this.f21407a.i(j, count, intFunction), this.b.i(0L, j2 - count, intFunction));
        }
        return this.f21407a.i(j, j2, intFunction);
    }

    @Override // j$.util.stream.c2
    public final Spliterator spliterator() {
        return new f3(this);
    }

    @Override // j$.util.stream.c2
    public final void k(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        c2 c2Var = this.f21407a;
        c2Var.k(objArr, i);
        this.b.k(objArr, i + ((int) c2Var.count()));
    }

    @Override // j$.util.stream.c2
    public final Object[] m(IntFunction intFunction) {
        long j = this.f21408c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        k(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.c2
    public final void forEach(Consumer consumer) {
        this.f21407a.forEach(consumer);
        this.b.forEach(consumer);
    }

    public final String toString() {
        long j = this.f21408c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.f21407a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
