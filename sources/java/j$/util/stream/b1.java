package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class b1 extends i5 {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.util.l0 f21385c;
    public final /* synthetic */ c1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b1(c1 c1Var, n5 n5Var) {
        super(n5Var);
        this.d = c1Var;
        n5 n5Var2 = this.f21437a;
        Objects.requireNonNull(n5Var2);
        this.f21385c = new j$.util.l0(n5Var2, 1);
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void c(long j) {
        this.f21437a.c(-1L);
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        LongStream longStream = (LongStream) ((j$.util.p) this.d.u).apply(j);
        if (longStream != null) {
            try {
                boolean z = this.b;
                j$.util.l0 l0Var = this.f21385c;
                if (!z) {
                    longStream.sequential().forEach(l0Var);
                } else {
                    Spliterator.OfLong spliterator = longStream.sequential().spliterator();
                    while (!this.f21437a.e() && spliterator.tryAdvance((LongConsumer) l0Var)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    longStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (longStream != null) {
            longStream.close();
        }
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final boolean e() {
        this.b = true;
        return this.f21437a.e();
    }
}
