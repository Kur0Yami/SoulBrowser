package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class w8 extends i5 {
    public final boolean b;

    public w8(x8 x8Var, n5 n5Var) {
        super(n5Var);
        this.b = true;
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void c(long j) {
        this.f21437a.c(-1L);
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final boolean e() {
        return !this.b || this.f21437a.e();
    }
}
