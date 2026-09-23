package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.SortedMultisets;
import com.google.common.collect.TreeMultiset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractSortedMultiset<E> extends AbstractMultiset<E> implements SortedMultiset<E> {
    public final Comparator g;
    public transient SortedMultiset h;

    public AbstractSortedMultiset() {
        this(NaturalOrdering.g);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return ((TreeMultiset) ((TreeMultiset) this).a0(obj, boundType)).L(obj2, boundType2);
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Set a() {
        return new SortedMultisets.ElementSet(this);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator comparator() {
        return this.g;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry firstEntry() {
        Iterator k = k();
        if (k.hasNext()) {
            return (Multiset.Entry) k.next();
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry lastEntry() {
        TreeMultiset.AnonymousClass3 anonymousClass3 = (TreeMultiset.AnonymousClass3) m();
        if (anonymousClass3.hasNext()) {
            return anonymousClass3.next();
        }
        return null;
    }

    public abstract Iterator m();

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry pollFirstEntry() {
        Iterator k = k();
        if (k.hasNext()) {
            Multiset.Entry entry = (Multiset.Entry) k.next();
            Multisets.ImmutableEntry immutableEntry = new Multisets.ImmutableEntry(entry.getCount(), entry.a());
            k.remove();
            return immutableEntry;
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry pollLastEntry() {
        TreeMultiset.AnonymousClass3 anonymousClass3 = (TreeMultiset.AnonymousClass3) m();
        if (anonymousClass3.hasNext()) {
            Multiset.Entry<Object> next = anonymousClass3.next();
            Multisets.ImmutableEntry immutableEntry = new Multisets.ImmutableEntry(next.getCount(), next.a());
            anonymousClass3.remove();
            return immutableEntry;
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset z() {
        SortedMultiset sortedMultiset = this.h;
        if (sortedMultiset == null) {
            DescendingMultiset<Object> descendingMultiset = new DescendingMultiset<Object>() { // from class: com.google.common.collect.AbstractSortedMultiset.1DescendingMultisetImpl
                @Override // com.google.common.collect.DescendingMultiset
                public final Iterator B0() {
                    return AbstractSortedMultiset.this.m();
                }

                @Override // com.google.common.collect.DescendingMultiset
                public final SortedMultiset C0() {
                    return AbstractSortedMultiset.this;
                }

                @Override // com.google.common.collect.DescendingMultiset, com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    return Multisets.b(AbstractSortedMultiset.this.z());
                }
            };
            this.h = descendingMultiset;
            return descendingMultiset;
        }
        return sortedMultiset;
    }

    public AbstractSortedMultiset(Comparator comparator) {
        comparator.getClass();
        this.g = comparator;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public NavigableSet j() {
        return (NavigableSet) super.j();
    }
}
