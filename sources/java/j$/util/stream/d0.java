package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class d0 extends g0 implements l5 {

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21400c;
    public static final b0 d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.g0, j$.util.stream.n5
    public final void accept(int i) {
        n(Integer.valueOf(i));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f21421a) {
            return new j$.util.d0(((Integer) this.b).intValue());
        }
        return null;
    }

    static {
        d7 d7Var = d7.INT_VALUE;
        m mVar = new m(11);
        m mVar2 = new m(12);
        j$.util.d0 d0Var = j$.util.d0.f21328c;
        f21400c = new b0(true, d7Var, d0Var, mVar, mVar2);
        d = new b0(false, d7Var, d0Var, new m(11), new m(12));
    }
}
