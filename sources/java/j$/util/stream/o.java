package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* loaded from: classes2.dex */
public final class o extends g5 {
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f21463c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(a aVar, n5 n5Var, int i) {
        super(n5Var);
        this.b = i;
        this.f21463c = aVar;
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public void c(long j) {
        switch (this.b) {
            case 4:
                this.f21426a.c(-1L);
                return;
            default:
                super.c(j);
                return;
        }
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.b) {
            case 0:
                this.f21426a.accept((n5) ((DoubleFunction) ((p) this.f21463c).u).apply(d));
                return;
            case 1:
                ((q) this.f21463c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d);
                throw null;
            case 2:
                ((r) this.f21463c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d);
                throw null;
            case 3:
                ((s) this.f21463c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d);
                throw null;
            case 4:
                ((q) this.f21463c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d);
                throw null;
            default:
                ((DoubleConsumer) ((u) this.f21463c).u).accept(d);
                this.f21426a.accept(d);
                return;
        }
    }
}
