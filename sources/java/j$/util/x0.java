package j$.util;

import j$.util.Spliterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class x0 implements Spliterator.OfPrimitive {

    /* renamed from: a */
    public final /* synthetic */ Spliterator.OfPrimitive f21523a;

    public /* synthetic */ x0(Spliterator.OfPrimitive ofPrimitive) {
        this.f21523a = ofPrimitive;
    }

    public static /* synthetic */ Spliterator.OfPrimitive a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof w0 ? ((w0) ofPrimitive).f21522a : ofPrimitive instanceof Spliterator.OfDouble ? r0.a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? t0.a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? v0.a((Spliterator.OfLong) ofPrimitive) : new x0(ofPrimitive);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f21523a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f21523a;
        if (obj instanceof x0) {
            obj = ((x0) obj).f21523a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f21523a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f21523a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f21523a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ java.util.Comparator getComparator() {
        return this.f21523a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f21523a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f21523a.hasCharacteristics(i);
    }

    public final /* synthetic */ int hashCode() {
        return this.f21523a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f21523a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f21523a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return a(this.f21523a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f21523a.trySplit());
    }
}
