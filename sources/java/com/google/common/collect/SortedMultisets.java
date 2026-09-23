package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
final class SortedMultisets {

    /* loaded from: classes3.dex */
    public static class ElementSet<E> extends Multisets.ElementSet<E> implements SortedSet<E> {

        /* renamed from: c, reason: collision with root package name */
        public final SortedMultiset f12395c;

        public ElementSet(SortedMultiset sortedMultiset) {
            this.f12395c = sortedMultiset;
        }

        @Override // com.google.common.collect.Multisets.ElementSet
        public final Multiset a() {
            return this.f12395c;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return this.f12395c.comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Multiset.Entry firstEntry = this.f12395c.firstEntry();
            if (firstEntry != null) {
                return firstEntry.a();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return this.f12395c.L(obj, BoundType.f12251c).j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new TransformedIterator(this.f12395c.entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public final Object last() {
            Multiset.Entry lastEntry = this.f12395c.lastEntry();
            if (lastEntry != null) {
                return lastEntry.a();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return this.f12395c.F0(obj, BoundType.f, obj2, BoundType.f12251c).j();
        }

        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return this.f12395c.a0(obj, BoundType.f).j();
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class NavigableElementSet<E> extends ElementSet<E> implements NavigableSet<E> {
        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return SortedMultisets.a(this.f12395c.a0(obj, BoundType.f).firstEntry());
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((ElementSet) descendingSet()).iterator();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.NavigableSet, com.google.common.collect.SortedMultisets$ElementSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return new ElementSet(this.f12395c.z());
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return SortedMultisets.a(this.f12395c.L(obj, BoundType.f).lastEntry());
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.NavigableSet, com.google.common.collect.SortedMultisets$ElementSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return new ElementSet(this.f12395c.L(obj, BoundType.a(z)));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return SortedMultisets.a(this.f12395c.a0(obj, BoundType.f12251c).firstEntry());
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return SortedMultisets.a(this.f12395c.L(obj, BoundType.f12251c).lastEntry());
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            return SortedMultisets.a(this.f12395c.pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            return SortedMultisets.a(this.f12395c.pollLastEntry());
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.NavigableSet, com.google.common.collect.SortedMultisets$ElementSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new ElementSet(this.f12395c.F0(obj, BoundType.a(z), obj2, BoundType.a(z2)));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.NavigableSet, com.google.common.collect.SortedMultisets$ElementSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return new ElementSet(this.f12395c.a0(obj, BoundType.a(z)));
        }
    }

    public static Object a(Multiset.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.a();
    }
}
