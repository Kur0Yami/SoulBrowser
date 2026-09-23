package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract class i5 implements m5 {

    /* renamed from: a, reason: collision with root package name */
    public final n5 f21437a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        v3.H(this, l);
    }

    public i5(n5 n5Var) {
        this.f21437a = (n5) Objects.requireNonNull(n5Var);
    }

    @Override // j$.util.stream.n5
    public void c(long j) {
        this.f21437a.c(j);
    }

    @Override // j$.util.stream.n5
    public void end() {
        this.f21437a.end();
    }

    @Override // j$.util.stream.n5
    public boolean e() {
        return this.f21437a.e();
    }
}
