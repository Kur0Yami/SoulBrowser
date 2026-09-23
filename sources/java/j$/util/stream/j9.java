package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class j9 extends l9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfDouble) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfDouble
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        boolean z = this.f21495c;
        Spliterator spliterator = this.f21494a;
        if (z) {
            this.f21495c = false;
            boolean tryAdvance = ((Spliterator.OfDouble) spliterator).tryAdvance((DoubleConsumer) this);
            if (tryAdvance && a()) {
                DoublePredicate doublePredicate = null;
                doublePredicate.test(this.e);
                throw null;
            }
            if (tryAdvance) {
                doubleConsumer.accept(this.e);
            }
            return tryAdvance;
        }
        return ((Spliterator.OfDouble) spliterator).tryAdvance(doubleConsumer);
    }
}
