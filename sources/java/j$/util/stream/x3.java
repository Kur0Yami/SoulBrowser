package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class x3 extends r4 implements q4, m5 {
    public final /* synthetic */ Supplier b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ObjLongConsumer f21508c;
    public final /* synthetic */ n d;

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

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        this.f21485a = this.d.apply(this.f21485a, ((x3) q4Var).f21485a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21485a = this.b.get();
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21508c.accept(this.f21485a, j);
    }

    public x3(Supplier supplier, ObjLongConsumer objLongConsumer, n nVar) {
        this.b = supplier;
        this.f21508c = objLongConsumer;
        this.d = nVar;
    }
}
