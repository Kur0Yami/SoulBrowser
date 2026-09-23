package j$.util.stream;

import j$.util.function.LongConsumer$CC;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class u4 extends w4 implements m5 {
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        v3.H(this, l);
    }

    @Override // j$.util.stream.r4, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.b);
    }

    @Override // j$.util.stream.q4
    public final void j(q4 q4Var) {
        this.b += ((w4) q4Var).b;
    }

    @Override // j$.util.stream.w4, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        this.b++;
    }
}
