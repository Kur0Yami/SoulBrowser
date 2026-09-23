package j$.util.stream;

import j$.util.function.DoubleConsumer$CC;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class c0 extends g0 implements k5 {

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21392c;
    public static final b0 d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.g0, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        n(Double.valueOf(d2));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f21421a) {
            return new j$.util.c0(((Double) this.b).doubleValue());
        }
        return null;
    }

    static {
        d7 d7Var = d7.DOUBLE_VALUE;
        m mVar = new m(9);
        m mVar2 = new m(10);
        j$.util.c0 c0Var = j$.util.c0.f21301c;
        f21392c = new b0(true, d7Var, c0Var, mVar, mVar2);
        d = new b0(false, d7Var, c0Var, new m(9), new m(10));
    }
}
