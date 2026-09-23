package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class n4 extends r4 implements q4, l5 {
    public final /* synthetic */ Supplier b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ObjIntConsumer f21461c;
    public final /* synthetic */ n d;

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

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        this.f21485a = this.d.apply(this.f21485a, ((n4) q4Var).f21485a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21485a = this.b.get();
    }

    @Override // j$.util.stream.n5
    public final void accept(int i) {
        this.f21461c.accept(this.f21485a, i);
    }

    public n4(Supplier supplier, ObjIntConsumer objIntConsumer, n nVar) {
        this.b = supplier;
        this.f21461c = objIntConsumer;
        this.d = nVar;
    }
}
