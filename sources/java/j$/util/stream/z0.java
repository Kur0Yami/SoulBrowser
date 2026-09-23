package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* loaded from: classes2.dex */
public final class z0 extends i5 {
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f21512c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z0(a aVar, n5 n5Var, int i) {
        super(n5Var);
        this.b = i;
        this.f21512c = aVar;
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public void c(long j) {
        switch (this.b) {
            case 4:
                this.f21437a.c(-1L);
                return;
            default:
                super.c(j);
                return;
        }
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.b) {
            case 0:
                this.f21437a.accept((n5) ((LongFunction) ((p) this.f21512c).u).apply(j));
                return;
            case 1:
                ((s) this.f21512c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j);
                throw null;
            case 2:
                ((r) this.f21512c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j);
                throw null;
            case 3:
                ((q) this.f21512c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j);
                throw null;
            case 4:
                ((s) this.f21512c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j);
                throw null;
            default:
                ((LongConsumer) ((c1) this.f21512c).u).accept(j);
                this.f21437a.accept(j);
                return;
        }
    }
}
