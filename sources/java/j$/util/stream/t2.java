package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class t2 extends v2 implements a2 {
    @Override // j$.util.stream.c2
    public final /* synthetic */ void forEach(Consumer consumer) {
        v3.R(this, consumer);
    }

    @Override // j$.util.stream.v2, j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.U(this, j, j2);
    }

    @Override // j$.util.stream.v2, j$.util.stream.c2
    public final /* bridge */ /* synthetic */ c2 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.v2, j$.util.stream.c2
    public final b2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ void k(Object[] objArr, int i) {
        v3.O(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.b2
    public final /* bridge */ /* synthetic */ Object b() {
        return v3.f;
    }

    @Override // j$.util.stream.c2
    public final /* bridge */ /* synthetic */ Spliterator.OfPrimitive spliterator() {
        return Spliterators.f21292c;
    }

    @Override // j$.util.stream.c2
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.f21292c;
    }
}
