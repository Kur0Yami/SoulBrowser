package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class m4 implements q4, l5 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21453a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ IntBinaryOperator f21454c;

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        v3.C();
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
        d((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ void d(Integer num) {
        v3.F(this, num);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    public m4(IntBinaryOperator intBinaryOperator) {
        this.f21454c = intBinaryOperator;
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        m4 m4Var = (m4) q4Var;
        if (m4Var.f21453a) {
            return;
        }
        accept(m4Var.b);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21453a = true;
        this.b = 0;
    }

    @Override // j$.util.stream.n5
    public final void accept(int i) {
        if (this.f21453a) {
            this.f21453a = false;
            this.b = i;
        } else {
            this.b = this.f21454c.applyAsInt(this.b, i);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f21453a ? j$.util.d0.f21328c : new j$.util.d0(this.b);
    }
}
