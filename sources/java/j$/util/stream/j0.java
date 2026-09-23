package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class j0 extends n0 implements k5 {
    public final DoubleConsumer b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        n((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.k5
    public final /* synthetic */ void n(Double d) {
        v3.D(this, d);
    }

    @Override // j$.util.stream.n8
    public final Object f(a aVar, Spliterator spliterator) {
        aVar.v0(spliterator, this);
        return null;
    }

    @Override // j$.util.stream.n8
    public final /* bridge */ /* synthetic */ Object i(v3 v3Var, Spliterator spliterator) {
        a(v3Var, spliterator);
        return null;
    }

    public j0(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.b = doubleConsumer;
    }

    @Override // j$.util.stream.n0, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.b.accept(d);
    }
}
