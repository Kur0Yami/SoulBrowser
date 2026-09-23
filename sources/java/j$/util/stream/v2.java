package j$.util.stream;

import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public abstract class v2 implements c2 {
    @Override // j$.util.stream.c2
    public final long count() {
        return 0L;
    }

    public final void g(Object obj) {
    }

    @Override // j$.util.stream.c2
    public /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.c2
    public c2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final Object[] m(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    public final void f(int i, Object obj) {
    }
}
