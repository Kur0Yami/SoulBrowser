package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class y4 extends j5 {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.util.l0 f21510c;
    public final /* synthetic */ c1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y4(c1 c1Var, n5 n5Var) {
        super(n5Var);
        this.d = c1Var;
        n5 n5Var2 = this.f21442a;
        Objects.requireNonNull(n5Var2);
        this.f21510c = new j$.util.l0(n5Var2, 1);
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void c(long j) {
        this.f21442a.c(-1L);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        LongStream longStream = (LongStream) ((j$.util.p) this.d.u).apply((j$.util.p) obj);
        if (longStream != null) {
            try {
                boolean z = this.b;
                j$.util.l0 l0Var = this.f21510c;
                if (!z) {
                    longStream.sequential().forEach(l0Var);
                } else {
                    Spliterator.OfLong spliterator = longStream.sequential().spliterator();
                    while (!this.f21442a.e() && spliterator.tryAdvance((LongConsumer) l0Var)) {
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

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final boolean e() {
        this.b = true;
        return this.f21442a.e();
    }
}
