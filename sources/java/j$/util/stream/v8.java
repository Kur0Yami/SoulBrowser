package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class v8 extends v0 implements f9 {
    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        if (c7.ORDERED.i(aVar.m)) {
            return E0(aVar, spliterator, new y0(26)).spliterator();
        }
        return new t9((Spliterator.OfInt) aVar.x0(spliterator));
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        return (c2) new h9(this, v3Var, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        return new u8(this, n5Var, false);
    }

    @Override // j$.util.stream.f9
    public final g9 h(u1 u1Var, boolean z) {
        return new u8(this, u1Var, z);
    }
}
