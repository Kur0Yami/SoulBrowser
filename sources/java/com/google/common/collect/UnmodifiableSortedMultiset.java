package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Collection;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
final class UnmodifiableSortedMultiset<E> extends Multisets.UnmodifiableMultiset<E> implements SortedMultiset<E> {
    public transient UnmodifiableSortedMultiset h;

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset
    public final Set B0() {
        return Sets.h(((SortedMultiset) this.f12374c).j());
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Multisets$UnmodifiableMultiset, com.google.common.collect.SortedMultiset] */
    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        SortedMultiset F0 = ((SortedMultiset) this.f12374c).F0(obj, boundType, obj2, boundType2);
        F0.getClass();
        return new Multisets.UnmodifiableMultiset(F0);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Multisets$UnmodifiableMultiset, com.google.common.collect.SortedMultiset] */
    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset L(Object obj, BoundType boundType) {
        SortedMultiset L = ((SortedMultiset) this.f12374c).L(obj, boundType);
        L.getClass();
        return new Multisets.UnmodifiableMultiset(L);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Multisets$UnmodifiableMultiset, com.google.common.collect.SortedMultiset] */
    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset a0(Object obj, BoundType boundType) {
        SortedMultiset a0 = ((SortedMultiset) this.f12374c).a0(obj, boundType);
        a0.getClass();
        return new Multisets.UnmodifiableMultiset(a0);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return ((SortedMultiset) this.f12374c).comparator();
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final Object e0() {
        return (SortedMultiset) this.f12374c;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry firstEntry() {
        return ((SortedMultiset) this.f12374c).firstEntry();
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection
    /* renamed from: h0 */
    public final Collection e0() {
        return (SortedMultiset) this.f12374c;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry lastEntry() {
        return ((SortedMultiset) this.f12374c).lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, com.google.common.collect.ForwardingMultiset
    /* renamed from: y0 */
    public final Multiset e0() {
        return (SortedMultiset) this.f12374c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.Multisets$UnmodifiableMultiset, com.google.common.collect.SortedMultiset, com.google.common.collect.UnmodifiableSortedMultiset] */
    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset z() {
        UnmodifiableSortedMultiset unmodifiableSortedMultiset = this.h;
        if (unmodifiableSortedMultiset == null) {
            ?? unmodifiableMultiset = new Multisets.UnmodifiableMultiset(((SortedMultiset) this.f12374c).z());
            unmodifiableMultiset.h = this;
            this.h = unmodifiableMultiset;
            return unmodifiableMultiset;
        }
        return unmodifiableSortedMultiset;
    }

    @Override // com.google.common.collect.Multisets.UnmodifiableMultiset, com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public final NavigableSet j() {
        return (NavigableSet) super.j();
    }
}
