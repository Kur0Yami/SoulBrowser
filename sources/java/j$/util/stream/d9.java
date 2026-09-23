package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class d9 extends g5 implements g9 {
    @Override // j$.util.stream.g9
    public final long h() {
        return 0L;
    }

    public d9(e9 e9Var, n5 n5Var, boolean z) {
        super(n5Var);
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d);
        throw null;
    }
}
