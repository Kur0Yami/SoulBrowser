package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class q9 extends r9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfLong) spliterator, this);
    }

    @Override // j$.util.stream.r9, j$.util.Spliterator.OfPrimitive
    public final /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        tryAdvance((LongConsumer) obj);
        return false;
    }

    @Override // j$.util.Spliterator.OfLong
    public final boolean tryAdvance(LongConsumer longConsumer) {
        if (this.f21495c && a() && ((Spliterator.OfLong) this.f21494a).tryAdvance((LongConsumer) this)) {
            LongPredicate longPredicate = null;
            longPredicate.test(this.e);
            throw null;
        }
        this.f21495c = false;
        return false;
    }

    @Override // j$.util.stream.t9, j$.util.Spliterator
    public final Spliterator.OfLong trySplit() {
        if (this.b.get()) {
            return null;
        }
        return (Spliterator.OfLong) super.trySplit();
    }
}
