package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class t extends g5 {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.util.f0 f21490c;
    public final /* synthetic */ u d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, n5 n5Var) {
        super(n5Var);
        this.d = uVar;
        n5 n5Var2 = this.f21426a;
        Objects.requireNonNull(n5Var2);
        this.f21490c = new j$.util.f0(n5Var2, 1);
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void c(long j) {
        this.f21426a.c(-1L);
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        DoubleStream doubleStream = (DoubleStream) ((j$.util.p) this.d.u).apply(d);
        if (doubleStream != null) {
            try {
                boolean z = this.b;
                j$.util.f0 f0Var = this.f21490c;
                if (!z) {
                    doubleStream.sequential().forEach(f0Var);
                } else {
                    Spliterator.OfDouble spliterator = doubleStream.sequential().spliterator();
                    while (!this.f21426a.e() && spliterator.tryAdvance((DoubleConsumer) f0Var)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    doubleStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (doubleStream != null) {
            doubleStream.close();
        }
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final boolean e() {
        this.b = true;
        return this.f21426a.e();
    }
}
