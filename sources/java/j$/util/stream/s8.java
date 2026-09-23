package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class s8 extends h5 {
    public final boolean b;

    public s8(t8 t8Var, n5 n5Var) {
        super(n5Var);
        this.b = true;
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void c(long j) {
        this.f21430a.c(-1L);
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        if (this.b) {
            IntPredicate intPredicate = null;
            intPredicate.test(i);
            throw null;
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final boolean e() {
        return !this.b || this.f21430a.e();
    }
}
