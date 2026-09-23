package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class j4 extends r4 implements q4 {
    public final /* synthetic */ Supplier b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BiConsumer f21441c;
    public final /* synthetic */ BiConsumer d;

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
        this.d.accept(this.f21485a, ((j4) q4Var).f21485a);
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        this.f21485a = this.b.get();
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.f21441c.accept(this.f21485a, obj);
    }

    public j4(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.b = supplier;
        this.f21441c = biConsumer;
        this.d = biConsumer2;
    }
}
