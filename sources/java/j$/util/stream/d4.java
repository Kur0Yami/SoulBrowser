package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class d4 extends r4 implements q4, k5 {
    public final /* synthetic */ Supplier b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ObjDoubleConsumer f21402c;
    public final /* synthetic */ n d;

    @Override // j$.util.stream.n5
    public final /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        v3.K();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.k5
    public final /* synthetic */ void n(Double d) {
        v3.D(this, d);
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        this.f21485a = this.d.apply(this.f21485a, ((d4) q4Var).f21485a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21485a = this.b.get();
    }

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f21402c.accept(this.f21485a, d);
    }

    public d4(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, n nVar) {
        this.b = supplier;
        this.f21402c = objDoubleConsumer;
        this.d = nVar;
    }
}
