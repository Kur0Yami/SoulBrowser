package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class f4 extends r4 implements q4 {
    public final /* synthetic */ Object b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BiFunction f21417c;
    public final /* synthetic */ BinaryOperator d;

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

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

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        this.f21485a = this.d.apply(this.f21485a, ((f4) q4Var).f21485a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21485a = this.b;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f21485a = this.f21417c.apply(this.f21485a, obj);
    }

    public f4(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.b = obj;
        this.f21417c = biFunction;
        this.d = binaryOperator;
    }
}
