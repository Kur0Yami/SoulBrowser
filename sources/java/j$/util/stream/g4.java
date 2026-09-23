package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class g4 implements q4 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21424a;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BinaryOperator f21425c;

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

    public g4(BinaryOperator binaryOperator) {
        this.f21425c = binaryOperator;
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        g4 g4Var = (g4) q4Var;
        if (g4Var.f21424a) {
            return;
        }
        n(g4Var.b);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21424a = true;
        this.b = null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        if (this.f21424a) {
            this.f21424a = false;
            this.b = obj;
        } else {
            this.b = this.f21425c.apply(this.b, obj);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f21424a ? Optional.empty() : Optional.of(this.b);
    }
}
