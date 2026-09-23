package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
public final class k9 extends l9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfDouble) spliterator, this);
    }

    @Override // j$.util.stream.l9, j$.util.Spliterator.OfPrimitive
    public final /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        tryAdvance((DoubleConsumer) obj);
        return false;
    }

    @Override // j$.util.Spliterator.OfDouble
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        if (this.f21495c && a() && ((Spliterator.OfDouble) this.f21494a).tryAdvance((DoubleConsumer) this)) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(this.e);
            throw null;
        }
        this.f21495c = false;
        return false;
    }

    @Override // j$.util.stream.t9, j$.util.Spliterator
    public final Spliterator.OfDouble trySplit() {
        if (this.b.get()) {
            return null;
        }
        return (Spliterator.OfDouble) super.trySplit();
    }
}
