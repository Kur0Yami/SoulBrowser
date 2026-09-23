package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class b9 extends w {
    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        if (c7.ORDERED.i(aVar.m)) {
            return E0(aVar, spliterator, new y0(29)).spliterator();
        }
        return new t9((Spliterator.OfDouble) aVar.x0(spliterator));
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        return (c2) new i9(this, v3Var, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        return new a9(this, n5Var);
    }
}
