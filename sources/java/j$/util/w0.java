package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class w0 implements Spliterator.OfPrimitive {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfPrimitive f21522a;

    public /* synthetic */ w0(Spliterator.OfPrimitive ofPrimitive) {
        this.f21522a = ofPrimitive;
    }

    public static /* synthetic */ Spliterator.OfPrimitive a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof x0 ? ((x0) ofPrimitive).f21523a : ofPrimitive instanceof Spliterator.OfDouble ? q0.a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? s0.a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? u0.a((Spliterator.OfLong) ofPrimitive) : new w0(ofPrimitive);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f21522a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f21522a;
        if (obj instanceof w0) {
            obj = ((w0) obj).f21522a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f21522a.estimateSize();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f21522a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21522a.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f21522a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f21522a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f21522a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21522a.hashCode();
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f21522a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f21522a.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator.OfPrimitive, j$.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return a(this.f21522a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return y0.a(this.f21522a.trySplit());
    }
}
