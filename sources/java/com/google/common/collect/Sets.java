package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Collections2;
import com.google.common.primitives.Ints;
import j$.util.DesugarCollections;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Sets {

    /* renamed from: com.google.common.collect.Sets$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends SetView<Object> {
        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UnmodifiableIterator iterator() {
            return new AbstractIterator<Object>(null, null) { // from class: com.google.common.collect.Sets.1.1
                public final Iterator g;
                public final Iterator h;
                public final /* synthetic */ Set i;

                {
                    this.i = r1;
                    this.g = r1.iterator();
                    this.h = r2.iterator();
                }

                @Override // com.google.common.collect.AbstractIterator
                public final Object a() {
                    Object next;
                    Iterator it = this.g;
                    if (it.hasNext()) {
                        return it.next();
                    }
                    do {
                        Iterator it2 = this.h;
                        if (it2.hasNext()) {
                            next = it2.next();
                        } else {
                            this.f12232c = AbstractIterator.State.g;
                            return null;
                        }
                    } while (this.i.contains(next));
                    return next;
                }
            };
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int c() {
            return Ints.c(SetView.g(null) + SetView.g(null));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int i() {
            return Math.max(SetView.k(null), SetView.k(null));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Sets$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends SetView<Object> {

        /* renamed from: com.google.common.collect.Sets$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Object> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Sets.SetView
        /* renamed from: a */
        public final UnmodifiableIterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int c() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int i() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Sets$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends SetView<Object> {

        /* renamed from: com.google.common.collect.Sets$4$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Object> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Sets.SetView
        /* renamed from: a */
        public final UnmodifiableIterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int c() {
            return Ints.c(SetView.g(null) + SetView.g(null));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView
        public final int i() {
            int k = SetView.k(null) - SetView.g(null);
            if (k >= 0) {
                return k;
            }
            return Math.max(SetView.k(null) - SetView.g(null), 0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            throw null;
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Sets$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends AbstractSet<Set<Object>> {

        /* renamed from: com.google.common.collect.Sets$5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Set<Object>> {

            /* renamed from: com.google.common.collect.Sets$5$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class C00241 extends AbstractSet<Object> {

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ BitSet f12390c;

                public C00241(BitSet bitSet) {
                    this.f12390c = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public final boolean contains(Object obj) {
                    throw null;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    final BitSet bitSet = this.f12390c;
                    return new AbstractIterator<Object>() { // from class: com.google.common.collect.Sets.5.1.1.1
                        public int g = -1;

                        @Override // com.google.common.collect.AbstractIterator
                        public final Object a() {
                            int nextSetBit = bitSet.nextSetBit(this.g + 1);
                            this.g = nextSetBit;
                            if (nextSetBit == -1) {
                                this.f12232c = AbstractIterator.State.g;
                                return null;
                            }
                            throw null;
                        }
                    };
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public final int size() {
                    return 0;
                }
            }

            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Set) || ((Set) obj).size() != 0) {
                return false;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            throw null;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class CartesianSet<E> extends ForwardingCollection<List<E>> implements Set<List<E>> {

        /* renamed from: com.google.common.collect.Sets$CartesianSet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends ImmutableList<List<Object>> {
            @Override // java.util.List
            public final Object get(int i) {
                throw null;
            }

            @Override // com.google.common.collect.ImmutableCollection
            public final boolean m() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public final int size() {
                throw null;
            }
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            ((List) obj).size();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (!(obj instanceof CartesianSet)) {
                if (obj instanceof Set) {
                    Set set = (Set) obj;
                    if (size() == set.size() && containsAll(set)) {
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return null;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            size();
            throw null;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class DescendingSet<E> extends ForwardingNavigableSet<E> {
        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet
        /* renamed from: B0 */
        public final /* bridge */ /* synthetic */ SortedSet e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet
        /* renamed from: C0 */
        public final NavigableSet e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object ceiling(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final Comparator comparator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Iterator descendingIterator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final Object first() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object floor(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Collection e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            headSet(obj, false);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object higher(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final Object last() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object lower(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object pollFirst() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final Object pollLast() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            subSet(obj, true, obj2, false);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            tailSet(obj, true);
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            return ObjectArrays.c(this, objArr);
        }

        @Override // com.google.common.collect.ForwardingObject
        public final String toString() {
            return s0();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final /* bridge */ /* synthetic */ Set e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            return n0();
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class FilteredNavigableSet<E> extends FilteredSortedSet<E> implements NavigableSet<E> {
        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            NavigableSet<E> tailSet = ((NavigableSet) this.f12256c).tailSet(obj, true);
            return Iterators.e(tailSet.iterator(), this.f);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return Iterators.d(((NavigableSet) this.f12256c).descendingIterator(), this.f);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return Sets.c(((NavigableSet) this.f12256c).descendingSet(), this.f);
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return Iterators.e(((NavigableSet) this.f12256c).headSet(obj, true).descendingIterator(), this.f);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return Sets.c(((NavigableSet) this.f12256c).headSet(obj, z), this.f);
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            NavigableSet<E> tailSet = ((NavigableSet) this.f12256c).tailSet(obj, false);
            return Iterators.e(tailSet.iterator(), this.f);
        }

        @Override // com.google.common.collect.Sets.FilteredSortedSet, java.util.SortedSet
        public final Object last() {
            Iterator<E> descendingIterator = ((NavigableSet) this.f12256c).descendingIterator();
            descendingIterator.getClass();
            Predicate predicate = this.f;
            predicate.getClass();
            while (descendingIterator.hasNext()) {
                E next = descendingIterator.next();
                if (predicate.apply(next)) {
                    return next;
                }
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return Iterators.e(((NavigableSet) this.f12256c).headSet(obj, false).descendingIterator(), this.f);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            return Iterables.d((NavigableSet) this.f12256c, this.f);
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            return Iterables.d(((NavigableSet) this.f12256c).descendingSet(), this.f);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return Sets.c(((NavigableSet) this.f12256c).subSet(obj, z, obj2, z2), this.f);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return Sets.c(((NavigableSet) this.f12256c).tailSet(obj, z), this.f);
        }
    }

    /* loaded from: classes3.dex */
    public static class FilteredSet<E> extends Collections2.FilteredCollection<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.e(this);
        }
    }

    /* loaded from: classes3.dex */
    public static class FilteredSortedSet<E> extends FilteredSet<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return ((SortedSet) this.f12256c).comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Iterator<E> it = this.f12256c.iterator();
            it.getClass();
            Predicate predicate = this.f;
            predicate.getClass();
            while (it.hasNext()) {
                E next = it.next();
                if (predicate.apply(next)) {
                    return next;
                }
            }
            throw new NoSuchElementException();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return new Collections2.FilteredCollection(((SortedSet) this.f12256c).headSet(obj), this.f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object last() {
            SortedSet sortedSet = (SortedSet) this.f12256c;
            while (true) {
                Object last = sortedSet.last();
                if (this.f.apply(last)) {
                    return last;
                }
                sortedSet = sortedSet.headSet(last);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new Collections2.FilteredCollection(((SortedSet) this.f12256c).subSet(obj, obj2), this.f);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new Collections2.FilteredCollection(((SortedSet) this.f12256c).tailSet(obj), this.f);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ImprovedAbstractSet<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return Sets.f(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    /* loaded from: classes3.dex */
    public static final class PowerSet<E> extends AbstractSet<Set<E>> {

        /* renamed from: com.google.common.collect.Sets$PowerSet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIndexedListIterator<Set<Object>> {
            @Override // com.google.common.collect.AbstractIndexedListIterator
            public final Object a(int i) {
                throw null;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            throw null;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (!(obj instanceof PowerSet)) {
                return super.equals(obj);
            }
            throw null;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            throw null;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return "powerSet(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SetView<E> extends AbstractSet<E> {
        public static int g(Set set) {
            if (set instanceof SetView) {
                return ((SetView) set).c();
            }
            return set.size();
        }

        public static int k(Set set) {
            if (set instanceof SetView) {
                return ((SetView) set).i();
            }
            return set.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: a */
        public abstract UnmodifiableIterator iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        public abstract int c();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            Set set;
            int g;
            int k;
            if (obj != this) {
                if ((obj instanceof Set) && i() <= (g = g((set = (Set) obj))) && c() >= (k = k(set))) {
                    UnmodifiableIterator it = iterator();
                    int i = 0;
                    while (true) {
                        if (it.hasNext()) {
                            try {
                                if (!set.contains(it.next())) {
                                    break;
                                }
                                i++;
                            } catch (ClassCastException | NullPointerException unused) {
                            }
                        } else if (i != g) {
                            if (i >= k) {
                                Iterator<E> it2 = set.iterator();
                                int i2 = 0;
                                while (it2.hasNext()) {
                                    it2.next();
                                    i2++;
                                    if (i2 > i) {
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public abstract int i();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static final class SubSet<E> extends AbstractSet<E> {

        /* renamed from: com.google.common.collect.Sets$SubSet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends UnmodifiableIterator<Object> {

            /* renamed from: c, reason: collision with root package name */
            public int f12391c;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f12391c != 0) {
                    return true;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f12391c);
                if (numberOfTrailingZeros != 32) {
                    this.f12391c = (~(1 << numberOfTrailingZeros)) & this.f12391c;
                    throw null;
                }
                throw new NoSuchElementException();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return Integer.bitCount(0);
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final NavigableSet f12392c;
        public final SortedSet f;
        public transient UnmodifiableNavigableSet g;

        public UnmodifiableNavigableSet(NavigableSet navigableSet) {
            navigableSet.getClass();
            this.f12392c = navigableSet;
            this.f = DesugarCollections.unmodifiableSortedSet(navigableSet);
        }

        @Override // com.google.common.collect.ForwardingSortedSet
        /* renamed from: B0 */
        public final SortedSet e0() {
            return this.f;
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return this.f12392c.ceiling(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return Iterators.l(this.f12392c.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            UnmodifiableNavigableSet unmodifiableNavigableSet = this.g;
            if (unmodifiableNavigableSet == null) {
                UnmodifiableNavigableSet unmodifiableNavigableSet2 = new UnmodifiableNavigableSet(this.f12392c.descendingSet());
                this.g = unmodifiableNavigableSet2;
                unmodifiableNavigableSet2.g = this;
                return unmodifiableNavigableSet2;
            }
            return unmodifiableNavigableSet;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return this.f;
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return this.f12392c.floor(obj);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return this.f;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return Sets.h(this.f12392c.headSet(obj, z));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return this.f12392c.higher(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return this.f12392c.lower(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return Sets.h(this.f12392c.subSet(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return Sets.h(this.f12392c.tailSet(obj, z));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return this.f;
        }
    }

    public static SetView a(final Set set, final Set set2) {
        Preconditions.h(set, "set1");
        return new SetView<Object>() { // from class: com.google.common.collect.Sets.3
            @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            /* renamed from: a */
            public final UnmodifiableIterator iterator() {
                return new AbstractIterator<Object>(set, set2) { // from class: com.google.common.collect.Sets.3.1
                    public final Iterator g;
                    public final /* synthetic */ Set h;

                    {
                        this.h = r2;
                        this.g = r1.iterator();
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    public final Object a() {
                        Object next;
                        do {
                            Iterator it = this.g;
                            if (it.hasNext()) {
                                next = it.next();
                            } else {
                                this.f12232c = AbstractIterator.State.g;
                                return null;
                            }
                        } while (((SingletonImmutableSet) this.h).h.equals(next));
                        return next;
                    }
                };
            }

            @Override // com.google.common.collect.Sets.SetView
            public final int c() {
                return SetView.g(set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                if (set.contains(obj) && !set2.contains(obj)) {
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.SetView
            public final int i() {
                return Math.max(SetView.k(set) - SetView.g(set2), 0);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean isEmpty() {
                return set2.containsAll(set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                Iterator it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (!set2.contains(it.next())) {
                        i++;
                    }
                }
                return i;
            }
        };
    }

    public static boolean b(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.NavigableSet, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.NavigableSet, com.google.common.collect.Collections2$FilteredCollection] */
    public static NavigableSet c(NavigableSet navigableSet, Predicate predicate) {
        if (navigableSet instanceof FilteredSet) {
            FilteredSet filteredSet = (FilteredSet) navigableSet;
            return new Collections2.FilteredCollection((NavigableSet) filteredSet.f12256c, Predicates.b(filteredSet.f, predicate));
        }
        navigableSet.getClass();
        predicate.getClass();
        return new Collections2.FilteredCollection(navigableSet, predicate);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    public static Set d(Set set, Predicate predicate) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (collection instanceof FilteredSet) {
                FilteredSet filteredSet = (FilteredSet) collection;
                return new Collections2.FilteredCollection((SortedSet) filteredSet.f12256c, Predicates.b(filteredSet.f, predicate));
            }
            predicate.getClass();
            return new Collections2.FilteredCollection(collection, predicate);
        }
        if (set instanceof FilteredSet) {
            FilteredSet filteredSet2 = (FilteredSet) set;
            return new Collections2.FilteredCollection((Set) filteredSet2.f12256c, Predicates.b(filteredSet2.f, predicate));
        }
        set.getClass();
        predicate.getClass();
        return new Collections2.FilteredCollection(set, predicate);
    }

    public static int e(Set set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 = ~(~(i2 + i));
        }
        return i2;
    }

    public static boolean f(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            return Iterators.i(collection, set.iterator());
        }
        return g(set, collection.iterator());
    }

    public static boolean g(Set set, Iterator it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    public static NavigableSet h(NavigableSet navigableSet) {
        if (!(navigableSet instanceof ImmutableCollection)) {
            if (navigableSet instanceof UnmodifiableNavigableSet) {
                return navigableSet;
            }
            return new UnmodifiableNavigableSet(navigableSet);
        }
        return navigableSet;
    }
}
