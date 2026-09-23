package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class o4 implements q4, m5 {

    /* renamed from: a, reason: collision with root package name */
    public long f21468a;
    public final /* synthetic */ long b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LongBinaryOperator f21469c;

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

    public o4(long j, LongBinaryOperator longBinaryOperator) {
        this.b = j;
        this.f21469c = longBinaryOperator;
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        accept(((o4) q4Var).f21468a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21468a = this.b;
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21468a = this.f21469c.applyAsLong(this.f21468a, j);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f21468a);
    }
}
