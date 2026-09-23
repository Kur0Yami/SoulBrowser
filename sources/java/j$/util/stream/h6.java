package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class h6 extends v0 {
    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        Objects.requireNonNull(n5Var);
        return c7.SORTED.i(i) ? n5Var : c7.SIZED.i(i) ? new h5(n5Var) : new h5(n5Var);
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        if (c7.SORTED.i(((a) v3Var).m)) {
            return v3Var.g0(spliterator, false, intFunction);
        }
        int[] iArr = (int[]) ((y1) v3Var.g0(spliterator, true, intFunction)).b();
        Arrays.sort(iArr);
        return new x2(iArr);
    }
}
