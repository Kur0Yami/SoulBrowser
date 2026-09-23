package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public abstract class g5 implements k5 {

    /* renamed from: a, reason: collision with root package name */
    public final n5 f21426a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.k5
    public final /* synthetic */ void n(Double d) {
        v3.D(this, d);
    }

    public g5(n5 n5Var) {
        this.f21426a = (n5) Objects.requireNonNull(n5Var);
    }

    @Override // j$.util.stream.n5
    public void c(long j) {
        this.f21426a.c(j);
    }

    @Override // j$.util.stream.n5
    public void end() {
        this.f21426a.end();
    }

    @Override // j$.util.stream.n5
    public boolean e() {
        return this.f21426a.e();
    }
}
