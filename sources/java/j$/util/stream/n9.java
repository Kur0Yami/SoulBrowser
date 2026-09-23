package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
public final class n9 extends o9 {
    @Override // j$.util.stream.t9
    public final Spliterator b(Spliterator spliterator) {
        return new t9((Spliterator.OfInt) spliterator, this);
    }

    @Override // j$.util.stream.o9, j$.util.Spliterator.OfPrimitive
    public final /* bridge */ /* synthetic */ boolean tryAdvance(Object obj) {
        tryAdvance((IntConsumer) obj);
        return false;
    }

    @Override // j$.util.Spliterator.OfInt
    public final boolean tryAdvance(IntConsumer intConsumer) {
        if (this.f21495c && a() && ((Spliterator.OfInt) this.f21494a).tryAdvance((IntConsumer) this)) {
            IntPredicate intPredicate = null;
            intPredicate.test(this.e);
            throw null;
        }
        this.f21495c = false;
        return false;
    }

    @Override // j$.util.stream.t9, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        if (this.b.get()) {
            return null;
        }
        return (Spliterator.OfInt) super.trySplit();
    }
}
