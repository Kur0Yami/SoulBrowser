package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class j5 implements n5 {

    /* renamed from: a, reason: collision with root package name */
    public final n5 f21442a;

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

    public j5(n5 n5Var) {
        this.f21442a = (n5) Objects.requireNonNull(n5Var);
    }

    @Override // j$.util.stream.n5
    public void c(long j) {
        this.f21442a.c(j);
    }

    @Override // j$.util.stream.n5
    public void end() {
        this.f21442a.end();
    }

    @Override // j$.util.stream.n5
    public boolean e() {
        return this.f21442a.e();
    }
}
