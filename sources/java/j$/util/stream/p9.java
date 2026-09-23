package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
public final class p9 extends r9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfLong) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfLong
    public final boolean tryAdvance(LongConsumer longConsumer) {
        boolean z = this.f21495c;
        Spliterator spliterator = this.f21494a;
        if (z) {
            this.f21495c = false;
            boolean tryAdvance = ((Spliterator.OfLong) spliterator).tryAdvance((LongConsumer) this);
            if (tryAdvance && a()) {
                LongPredicate longPredicate = null;
                longPredicate.test(this.e);
                throw null;
            }
            if (tryAdvance) {
                longConsumer.accept(this.e);
            }
            return tryAdvance;
        }
        return ((Spliterator.OfLong) spliterator).tryAdvance(longConsumer);
    }
}
