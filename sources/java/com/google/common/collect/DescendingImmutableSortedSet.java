package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import java.util.Iterator;
import java.util.NavigableSet;

@GwtIncompatible
/* loaded from: classes3.dex */
final class DescendingImmutableSortedSet<E> extends ImmutableSortedSet<E> {
    public final ImmutableSortedSet k;

    public DescendingImmutableSortedSet(ImmutableSortedSet immutableSortedSet) {
        super(Ordering.b(immutableSortedSet.h).g());
        this.k = immutableSortedSet;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: B */
    public final UnmodifiableIterator descendingIterator() {
        return this.k.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    /* renamed from: C */
    public final ImmutableSortedSet descendingSet() {
        return this.k;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet G(Object obj, boolean z) {
        return this.k.tailSet(obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet J(Object obj, boolean z, Object obj2, boolean z2) {
        return this.k.subSet(obj2, z2, obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet N(Object obj, boolean z) {
        return this.k.headSet(obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return this.k.floor(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.k.contains(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Iterator descendingIterator() {
        return this.k.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return this.k;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object floor(Object obj) {
        return this.k.ceiling(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object higher(Object obj) {
        return this.k.lower(obj);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public final Iterator iterator() {
        return this.k.descendingIterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public final Object lower(Object obj) {
        return this.k.higher(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return this.k.m();
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return this.k.descendingIterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.k.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet y() {
        throw new AssertionError("should never be called");
    }
}
