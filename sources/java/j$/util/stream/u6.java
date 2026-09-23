package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class u6 extends w6 implements Spliterator.OfLong {
    public final /* synthetic */ v6 g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.g(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.u(this, consumer);
    }

    @Override // j$.util.stream.w6
    public final void a(int i, Object obj, Object obj2) {
        ((LongConsumer) obj2).accept(((long[]) obj)[i]);
    }

    @Override // j$.util.stream.w6
    public final Spliterator.OfPrimitive b(Object obj, int i, int i2) {
        return Spliterators.spliterator((long[]) obj, i, i2 + i, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u6(v6 v6Var, int i, int i2, int i3, int i4) {
        super(v6Var, i, i2, i3, i4);
        this.g = v6Var;
    }

    @Override // j$.util.stream.w6
    public final Spliterator.OfPrimitive c(int i, int i2, int i3, int i4) {
        return new u6(this.g, i, i2, i3, i4);
    }
}
