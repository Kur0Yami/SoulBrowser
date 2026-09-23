package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class q6 extends w6 implements Spliterator.OfDouble {
    public final /* synthetic */ r6 g;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.com.android.tools.r8.a.e(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.com.android.tools.r8.a.s(this, consumer);
    }

    @Override // j$.util.stream.w6
    public final void a(int i, Object obj, Object obj2) {
        ((DoubleConsumer) obj2).accept(((double[]) obj)[i]);
    }

    @Override // j$.util.stream.w6
    public final Spliterator.OfPrimitive b(Object obj, int i, int i2) {
        return Spliterators.spliterator((double[]) obj, i, i2 + i, 1040);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q6(r6 r6Var, int i, int i2, int i3, int i4) {
        super(r6Var, i, i2, i3, i4);
        this.g = r6Var;
    }

    @Override // j$.util.stream.w6
    public final Spliterator.OfPrimitive c(int i, int i2, int i3, int i4) {
        return new q6(this.g, i, i2, i3, i4);
    }
}
