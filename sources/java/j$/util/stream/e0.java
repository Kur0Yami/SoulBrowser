package j$.util.stream;

import j$.util.function.LongConsumer$CC;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class e0 extends g0 implements m5 {

    /* renamed from: c, reason: collision with root package name */
    public static final b0 f21406c;
    public static final b0 d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.g0, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        n(Long.valueOf(j));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f21421a) {
            return new j$.util.e0(((Long) this.b).longValue());
        }
        return null;
    }

    static {
        d7 d7Var = d7.LONG_VALUE;
        m mVar = new m(13);
        m mVar2 = new m(14);
        j$.util.e0 e0Var = j$.util.e0.f21332c;
        f21406c = new b0(true, d7Var, e0Var, mVar, mVar2);
        d = new b0(false, d7Var, e0Var, new m(13), new m(14));
    }
}
