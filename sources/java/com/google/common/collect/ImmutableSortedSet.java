package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSet;
import j$.util.SortedSet;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableSortedSet<E> extends ImmutableSet<E> implements NavigableSet<E>, SortedIterable<E>, SortedSet {
    public static final /* synthetic */ int j = 0;
    public final transient Comparator h;
    public transient ImmutableSortedSet i;

    /* loaded from: classes3.dex */
    public static final class Builder<E> extends ImmutableSet.Builder<E> {
        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.ArrayBasedBuilder, com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder, com.google.common.collect.ImmutableCollection.ArrayBasedBuilder
        /* renamed from: c */
        public final ImmutableCollection.ArrayBasedBuilder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        /* renamed from: e */
        public final ImmutableSet.Builder a(Object obj) {
            super.a(obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        public final ImmutableSet f() {
            RegularImmutableSortedSet regularImmutableSortedSet;
            Object[] objArr = this.f12288a;
            int i = this.b;
            if (i == 0) {
                regularImmutableSortedSet = ImmutableSortedSet.D(null);
            } else {
                int i2 = ImmutableSortedSet.j;
                ObjectArrays.a(i, objArr);
                Arrays.sort(objArr, 0, i, null);
                if (1 >= i) {
                    Arrays.fill(objArr, 1, i, (Object) null);
                    if (1 < objArr.length / 2) {
                        objArr = Arrays.copyOf(objArr, 1);
                    }
                    regularImmutableSortedSet = new RegularImmutableSortedSet(ImmutableList.q(1, objArr), null);
                } else {
                    Object obj = objArr[1];
                    Object obj2 = objArr[0];
                    throw null;
                }
            }
            this.b = regularImmutableSortedSet.k.size();
            this.f12289c = true;
            return regularImmutableSortedSet;
        }

        @Override // com.google.common.collect.ImmutableSet.Builder
        public final ImmutableSet.Builder g(ImmutableSet.Builder builder) {
            super.g(builder);
            return this;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<E> implements Serializable {
    }

    public ImmutableSortedSet(Comparator comparator) {
        this.h = comparator;
    }

    public static RegularImmutableSortedSet D(Comparator comparator) {
        if (NaturalOrdering.g.equals(comparator)) {
            return RegularImmutableSortedSet.l;
        }
        return new RegularImmutableSortedSet(RegularImmutableList.i, comparator);
    }

    @Override // java.util.NavigableSet
    /* renamed from: B */
    public abstract UnmodifiableIterator descendingIterator();

    @Override // java.util.NavigableSet
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet descendingSet() {
        ImmutableSortedSet immutableSortedSet = this.i;
        if (immutableSortedSet == null) {
            ImmutableSortedSet y = y();
            this.i = y;
            y.i = this;
            return y;
        }
        return immutableSortedSet;
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet headSet(Object obj, boolean z) {
        obj.getClass();
        return G(obj, z);
    }

    public abstract ImmutableSortedSet G(Object obj, boolean z);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        boolean z3;
        obj.getClass();
        obj2.getClass();
        if (this.h.compare(obj, obj2) <= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.d(z3);
        return J(obj, z, obj2, z2);
    }

    public abstract ImmutableSortedSet J(Object obj, boolean z, Object obj2, boolean z2);

    @Override // java.util.NavigableSet, java.util.SortedSet
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return N(obj, z);
    }

    public abstract ImmutableSortedSet N(Object obj, boolean z);

    public Object ceiling(Object obj) {
        Iterator<E> it = tailSet(obj, true).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Override // java.util.SortedSet, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return this.h;
    }

    public Object first() {
        return iterator().next();
    }

    public Object floor(Object obj) {
        UnmodifiableIterator descendingIterator = headSet(obj, true).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    public Object higher(Object obj) {
        Iterator<E> it = tailSet(obj, false).iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public Object last() {
        return descendingIterator().next();
    }

    public Object lower(Object obj) {
        UnmodifiableIterator descendingIterator = headSet(obj, false).descendingIterator();
        if (descendingIterator.hasNext()) {
            return descendingIterator.next();
        }
        return null;
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    public abstract ImmutableSortedSet y();
}
