package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class e9 extends w implements f9 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, java.util.function.IntFunction] */
    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        if (c7.ORDERED.i(aVar.m)) {
            return E0(aVar, spliterator, new Object()).spliterator();
        }
        return new t9((Spliterator.OfDouble) aVar.x0(spliterator));
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        return (c2) new h9(this, v3Var, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        return new d9(this, n5Var, false);
    }

    @Override // j$.util.stream.f9
    public final g9 h(u1 u1Var, boolean z) {
        return new d9(this, u1Var, z);
    }
}
