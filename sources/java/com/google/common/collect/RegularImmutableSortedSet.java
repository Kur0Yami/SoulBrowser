package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class RegularImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    public static final RegularImmutableSortedSet l;
    public final transient ImmutableList k;

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        l = new RegularImmutableSortedSet(RegularImmutableList.i, NaturalOrdering.g);
    }

    public RegularImmutableSortedSet(ImmutableList immutableList, Comparator comparator) {
        super(comparator);
        this.k = immutableList;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* renamed from: B */
    public final UnmodifiableIterator descendingIterator() {
        return this.k.x().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet G(Object obj, boolean z) {
        return O(0, P(obj, z));
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet J(Object obj, boolean z, Object obj2, boolean z2) {
        return N(obj, z).G(obj2, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet N(Object obj, boolean z) {
        return O(R(obj, z), this.k.size());
    }

    public final RegularImmutableSortedSet O(int i, int i2) {
        ImmutableList immutableList = this.k;
        if (i == 0 && i2 == immutableList.size()) {
            return this;
        }
        Comparator comparator = this.h;
        if (i < i2) {
            return new RegularImmutableSortedSet(immutableList.subList(i, i2), comparator);
        }
        return ImmutableSortedSet.D(comparator);
    }

    public final int P(Object obj, boolean z) {
        obj.getClass();
        int binarySearch = Collections.binarySearch(this.k, obj, this.h);
        if (binarySearch >= 0) {
            if (z) {
                return binarySearch + 1;
            }
            return binarySearch;
        }
        return ~binarySearch;
    }

    public final int R(Object obj, boolean z) {
        obj.getClass();
        int binarySearch = Collections.binarySearch(this.k, obj, this.h);
        if (binarySearch >= 0) {
            if (z) {
                return binarySearch;
            }
            return binarySearch + 1;
        }
        return ~binarySearch;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public final ImmutableList a() {
        return this.k;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        return this.k.c(i, objArr);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int R = R(obj, true);
        ImmutableList immutableList = this.k;
        if (R == immutableList.size()) {
            return null;
        }
        return immutableList.get(R);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.k, obj, this.h) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j();
        }
        Comparator comparator = this.h;
        if (SortedIterables.a(comparator, collection) && collection.size() > 1) {
            UnmodifiableIterator it = iterator();
            Iterator<E> it2 = collection.iterator();
            if (it.hasNext()) {
                E next = it2.next();
                E next2 = it.next();
                while (true) {
                    try {
                        int compare = comparator.compare(next2, next);
                        if (compare < 0) {
                            if (it.hasNext()) {
                                next2 = it.next();
                            } else {
                                return false;
                            }
                        } else if (compare == 0) {
                            if (!it2.hasNext()) {
                                return true;
                            }
                            next = it2.next();
                        } else if (compare > 0) {
                            return false;
                        }
                    } catch (ClassCastException | NullPointerException unused) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        } else {
            return super.containsAll(collection);
        }
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                if (this.k.size() == set.size()) {
                    if (!isEmpty()) {
                        Comparator comparator = this.h;
                        if (SortedIterables.a(comparator, set)) {
                            Iterator<E> it = set.iterator();
                            try {
                                UnmodifiableIterator it2 = iterator();
                                while (it2.hasNext()) {
                                    E next = it2.next();
                                    E next2 = it.next();
                                    if (next2 == null || comparator.compare(next, next2) != 0) {
                                        return false;
                                    }
                                }
                                return true;
                            } catch (ClassCastException | NoSuchElementException unused) {
                                return false;
                            }
                        }
                        return containsAll(set);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.k.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object floor(Object obj) {
        int P = P(obj, true) - 1;
        if (P == -1) {
            return null;
        }
        return this.k.get(P);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] g() {
        return this.k.g();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object higher(Object obj) {
        int R = R(obj, false);
        ImmutableList immutableList = this.k;
        if (R == immutableList.size()) {
            return null;
        }
        return immutableList.get(R);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int i() {
        return this.k.i();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int k() {
        return this.k.k();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public final Object last() {
        if (!isEmpty()) {
            return this.k.get(r0.size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object lower(Object obj) {
        int P = P(obj, false) - 1;
        if (P == -1) {
            return null;
        }
        return this.k.get(P);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return this.k.m();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return this.k.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.k.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet y() {
        Comparator reverseOrder = Collections.reverseOrder(this.h);
        if (isEmpty()) {
            return ImmutableSortedSet.D(reverseOrder);
        }
        return new RegularImmutableSortedSet(this.k.x(), reverseOrder);
    }
}
