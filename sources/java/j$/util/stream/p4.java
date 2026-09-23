package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class p4 implements q4, m5 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21475a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LongBinaryOperator f21476c;

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

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        v3.H(this, l);
    }

    public p4(LongBinaryOperator longBinaryOperator) {
        this.f21476c = longBinaryOperator;
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        p4 p4Var = (p4) q4Var;
        if (p4Var.f21475a) {
            return;
        }
        accept(p4Var.b);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21475a = true;
        this.b = 0L;
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f21475a) {
            this.f21475a = false;
            this.b = j;
        } else {
            this.b = this.f21476c.applyAsLong(this.b, j);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f21475a ? j$.util.e0.f21332c : new j$.util.e0(this.b);
    }
}
