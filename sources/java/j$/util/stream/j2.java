package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class j2 extends m2 implements w1 {
    @Override // j$.util.stream.c2
    public final /* synthetic */ void forEach(Consumer consumer) {
        v3.P(this, consumer);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.S(this, j, j2);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ void k(Object[] objArr, int i) {
        v3.M(this, (Double[]) objArr, i);
    }

    @Override // j$.util.stream.b2
    public final Object newArray(int i) {
        return new double[i];
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.util.Spliterator$OfPrimitive, j$.util.stream.f3] */
    @Override // j$.util.stream.c2
    public final Spliterator.OfPrimitive spliterator() {
        return new f3(this);
    }

    @Override // j$.util.stream.c2
    public final Spliterator spliterator() {
        return new f3(this);
    }
}
