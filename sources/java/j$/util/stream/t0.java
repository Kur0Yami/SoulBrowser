package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class t0 extends h5 {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.util.i0 f21491c;
    public final /* synthetic */ r0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(r0 r0Var, n5 n5Var) {
        super(n5Var);
        this.d = r0Var;
        n5 n5Var2 = this.f21430a;
        Objects.requireNonNull(n5Var2);
        this.f21491c = new j$.util.i0(n5Var2, 1);
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void c(long j) {
        this.f21430a.c(-1L);
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        IntStream intStream = (IntStream) ((i0) this.d.u).apply(i);
        if (intStream != null) {
            try {
                boolean z = this.b;
                j$.util.i0 i0Var = this.f21491c;
                if (!z) {
                    intStream.sequential().forEach(i0Var);
                } else {
                    Spliterator.OfInt spliterator = intStream.sequential().spliterator();
                    while (!this.f21430a.e() && spliterator.tryAdvance((IntConsumer) i0Var)) {
                    }
                }
            } catch (Throwable th) {
                try {
                    intStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (intStream != null) {
            intStream.close();
        }
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final boolean e() {
        this.b = true;
        return this.f21430a.e();
    }
}
