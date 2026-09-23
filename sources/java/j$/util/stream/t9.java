package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class t9 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public final Spliterator f21494a;
    public final AtomicBoolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21495c;
    public int d;

    public abstract Spliterator b(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        Spliterator.CC.$default$forEachRemaining(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    public t9(Spliterator spliterator) {
        this.f21495c = true;
        this.f21494a = spliterator;
        this.b = new AtomicBoolean();
    }

    public t9(Spliterator spliterator, t9 t9Var) {
        this.f21495c = true;
        this.f21494a = spliterator;
        t9Var.getClass();
        this.b = t9Var.b;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f21494a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f21494a.characteristics() & (-16449);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f21494a.getComparator();
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        Spliterator trySplit = this.f21494a.trySplit();
        if (trySplit != null) {
            return b(trySplit);
        }
        return null;
    }

    public final boolean a() {
        return (this.d == 0 && this.b.get()) ? false : true;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfLong trySplit() {
        return (Spliterator.OfLong) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return (Spliterator.OfPrimitive) trySplit();
    }
}
