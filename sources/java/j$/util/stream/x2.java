package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public class x2 implements y1 {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f21507a;
    public int b;

    @Override // j$.util.stream.c2
    public final /* synthetic */ void forEach(Consumer consumer) {
        v3.Q(this, consumer);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.T(this, j, j2);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return v3.L(this, intFunction);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.c2
    public final /* bridge */ /* synthetic */ c2 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.b2, j$.util.stream.c2
    public final b2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ void k(Object[] objArr, int i) {
        v3.N(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.b2
    public final void f(int i, Object obj) {
        int i2 = this.b;
        System.arraycopy(this.f21507a, 0, (int[]) obj, i, i2);
    }

    @Override // j$.util.stream.b2
    public final void g(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < this.b; i++) {
            intConsumer.accept(this.f21507a[i]);
        }
    }

    public x2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21507a = new int[(int) j];
        this.b = 0;
    }

    public x2(int[] iArr) {
        this.f21507a = iArr;
        this.b = iArr.length;
    }

    @Override // j$.util.stream.b2, j$.util.stream.c2
    public final Spliterator.OfPrimitive spliterator() {
        return Spliterators.spliterator(this.f21507a, 0, this.b, 1040);
    }

    @Override // j$.util.stream.c2
    public final Spliterator spliterator() {
        return Spliterators.spliterator(this.f21507a, 0, this.b, 1040);
    }

    @Override // j$.util.stream.b2
    public final Object b() {
        int[] iArr = this.f21507a;
        int length = iArr.length;
        int i = this.b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // j$.util.stream.c2
    public final long count() {
        return this.b;
    }

    public String toString() {
        int[] iArr = this.f21507a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.b), Arrays.toString(iArr));
    }
}
