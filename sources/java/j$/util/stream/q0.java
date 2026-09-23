package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* loaded from: classes2.dex */
public final class q0 extends h5 {
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f21481c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q0(a aVar, n5 n5Var, int i) {
        super(n5Var);
        this.b = i;
        this.f21481c = aVar;
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public void c(long j) {
        switch (this.b) {
            case 5:
                this.f21430a.c(-1L);
                return;
            default:
                super.c(j);
                return;
        }
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        switch (this.b) {
            case 0:
                this.f21430a.accept((n5) ((IntFunction) ((p) this.f21481c).u).apply(i));
                return;
            case 1:
                ((IntConsumer) ((r0) this.f21481c).u).accept(i);
                this.f21430a.accept(i);
                return;
            case 2:
                this.f21430a.accept(((IntUnaryOperator) ((r0) this.f21481c).u).applyAsInt(i));
                return;
            case 3:
                ((s) this.f21481c).getClass();
                IntToLongFunction intToLongFunction = null;
                intToLongFunction.applyAsLong(i);
                throw null;
            case 4:
                ((q) this.f21481c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i);
                throw null;
            default:
                ((r) this.f21481c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i);
                throw null;
        }
    }
}
