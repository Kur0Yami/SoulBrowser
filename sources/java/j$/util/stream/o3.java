package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class o3 extends y6 implements c2, u1 {
    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        v3.K();
        throw null;
    }

    @Override // j$.util.stream.u1
    public final c2 build() {
        return this;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final void end() {
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.c2
    public final c2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final void k(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f21391c == 0) {
            System.arraycopy(this.e, 0, objArr, i, this.b);
            return;
        }
        for (int i2 = 0; i2 < this.f21391c; i2++) {
            Object[] objArr2 = this.f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f[i2].length;
        }
        int i3 = this.b;
        if (i3 > 0) {
            System.arraycopy(this.e, 0, objArr, i, i3);
        }
    }

    @Override // j$.util.stream.c2
    public final Object[] m(IntFunction intFunction) {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        k(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        clear();
        p(j);
    }
}
