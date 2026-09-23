package j$.util.stream;

import j$.util.DesugarArrays;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public class f2 implements c2 {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f21414a;
    public int b;

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

    public f2(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21414a = (Object[]) intFunction.apply((int) j);
        this.b = 0;
    }

    public f2(Object[] objArr) {
        this.f21414a = objArr;
        this.b = objArr.length;
    }

    @Override // j$.util.stream.c2
    public final Spliterator spliterator() {
        return DesugarArrays.a(this.f21414a, 0, this.b);
    }

    @Override // j$.util.stream.c2
    public final void k(Object[] objArr, int i) {
        System.arraycopy(this.f21414a, 0, objArr, i, this.b);
    }

    @Override // j$.util.stream.c2
    public final Object[] m(IntFunction intFunction) {
        Object[] objArr = this.f21414a;
        if (objArr.length == this.b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.stream.c2
    public final long count() {
        return this.b;
    }

    @Override // j$.util.stream.c2
    public final void forEach(Consumer consumer) {
        for (int i = 0; i < this.b; i++) {
            consumer.n(this.f21414a[i]);
        }
    }

    public String toString() {
        Object[] objArr = this.f21414a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.b), Arrays.toString(objArr));
    }
}
