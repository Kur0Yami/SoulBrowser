package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.SortedMultisets;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class DescendingMultiset<E> extends ForwardingMultiset<E> implements SortedMultiset<E> {

    /* renamed from: c, reason: collision with root package name */
    public transient Ordering f12273c;
    public transient NavigableSet f;
    public transient Set g;

    public abstract Iterator B0();

    public abstract SortedMultiset C0();

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return C0().F0(obj2, boundType2, obj, boundType).z();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset L(Object obj, BoundType boundType) {
        return ((TreeMultiset) C0()).a0(obj, boundType).z();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset a0(Object obj, BoundType boundType) {
        return ((TreeMultiset) C0()).L(obj, boundType).z();
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        Ordering ordering = this.f12273c;
        if (ordering == null) {
            Ordering g = Ordering.b(C0().comparator()).g();
            this.f12273c = g;
            return g;
        }
        return ordering;
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final Object e0() {
        return C0();
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public final Set entrySet() {
        Set set = this.g;
        if (set == null) {
            Multisets.EntrySet<Object> entrySet = new Multisets.EntrySet<Object>() { // from class: com.google.common.collect.DescendingMultiset.1EntrySetImpl
                @Override // com.google.common.collect.Multisets.EntrySet
                public final Multiset a() {
                    return DescendingMultiset.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    return DescendingMultiset.this.B0();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public final int size() {
                    return DescendingMultiset.this.C0().entrySet().size();
                }
            };
            this.g = entrySet;
            return entrySet;
        }
        return set;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry firstEntry() {
        return C0().lastEntry();
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection
    /* renamed from: h0 */
    public final Collection e0() {
        return C0();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return Multisets.b(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry lastEntry() {
        return C0().firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollFirstEntry() {
        return C0().pollLastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollLastEntry() {
        return C0().pollFirstEntry();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return n0();
    }

    @Override // com.google.common.collect.ForwardingObject
    public final String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.ForwardingMultiset
    /* renamed from: y0 */
    public final Multiset e0() {
        return C0();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset z() {
        return C0();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.NavigableSet, com.google.common.collect.SortedMultisets$ElementSet] */
    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public final NavigableSet j() {
        NavigableSet navigableSet = this.f;
        if (navigableSet != null) {
            return navigableSet;
        }
        ?? elementSet = new SortedMultisets.ElementSet(this);
        this.f = elementSet;
        return elementSet;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        return ObjectArrays.c(this, objArr);
    }
}
