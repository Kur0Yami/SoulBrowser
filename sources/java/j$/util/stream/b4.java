package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class b4 implements q4, k5 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21386a;
    public double b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DoubleBinaryOperator f21387c;

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

    public b4(DoubleBinaryOperator doubleBinaryOperator) {
        this.f21387c = doubleBinaryOperator;
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        b4 b4Var = (b4) q4Var;
        if (b4Var.f21386a) {
            return;
        }
        accept(b4Var.b);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21386a = true;
        this.b = 0.0d;
    }

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        if (this.f21386a) {
            this.f21386a = false;
            this.b = d;
        } else {
            this.b = this.f21387c.applyAsDouble(this.b, d);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f21386a ? j$.util.c0.f21301c : new j$.util.c0(this.b);
    }
}
