package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class j6 extends d5 {
    public final boolean t;
    public final Comparator u;

    public j6(f5 f5Var) {
        super(f5Var, c7.q | c7.o);
        this.t = true;
        this.u = j$.util.e.INSTANCE;
    }

    public j6(f5 f5Var, Comparator comparator) {
        super(f5Var, c7.q | c7.p);
        this.t = false;
        this.u = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        Objects.requireNonNull(n5Var);
        if (c7.SORTED.i(i) && this.t) {
            return n5Var;
        }
        if (c7.SIZED.i(i)) {
            return new c6(n5Var, this.u);
        }
        return new c6(n5Var, this.u);
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        if (c7.SORTED.i(((a) v3Var).m) && this.t) {
            return v3Var.g0(spliterator, false, intFunction);
        }
        Object[] m = v3Var.g0(spliterator, true, intFunction).m(intFunction);
        Arrays.sort(m, this.u);
        return new f2(m);
    }
}
