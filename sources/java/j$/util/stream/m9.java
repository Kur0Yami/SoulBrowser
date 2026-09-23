package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class m9 extends o9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        boolean z = this.f21495c;
        Spliterator spliterator = this.f21494a;
        if (z) {
            this.f21495c = false;
            boolean tryAdvance = ((Spliterator.OfInt) spliterator).tryAdvance((IntConsumer) this);
            if (tryAdvance && a()) {
                IntPredicate intPredicate = null;
                intPredicate.test(this.e);
                throw null;
            }
            if (tryAdvance) {
                intConsumer.accept(this.e);
            }
            return tryAdvance;
        }
        return ((Spliterator.OfInt) spliterator).tryAdvance(intConsumer);
    }
}
