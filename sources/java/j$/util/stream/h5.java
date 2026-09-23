package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public abstract class h5 implements l5 {

    /* renamed from: a, reason: collision with root package name */
    public final n5 f21430a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
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

    public h5(n5 n5Var) {
        this.f21430a = (n5) Objects.requireNonNull(n5Var);
    }

    @Override // j$.util.stream.n5
    public void c(long j) {
        this.f21430a.c(j);
    }

    @Override // j$.util.stream.n5
    public void end() {
        this.f21430a.end();
    }

    @Override // j$.util.stream.n5
    public boolean e() {
        return this.f21430a.e();
    }
}
