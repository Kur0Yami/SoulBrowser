package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;

@GwtCompatible
/* loaded from: classes3.dex */
final class RegularContiguousSet<C extends Comparable> extends ContiguousSet<C> {
    public static final /* synthetic */ int l = 0;

    /* renamed from: com.google.common.collect.RegularContiguousSet$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ImmutableAsList<Comparable> {
        @Override // com.google.common.collect.ImmutableAsList
        public final ImmutableCollection B() {
            return null;
        }

        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.g(i, size());
            throw null;
        }
    }

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<C extends Comparable> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public final UnmodifiableIterator descendingIterator() {
        return new AbstractSequentialIterator<Comparable>(this, last()) { // from class: com.google.common.collect.RegularContiguousSet.2
            public final Comparable f;

            {
                this.f = this.first();
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            public final Object a(Object obj) {
                Comparable comparable = (Comparable) obj;
                int i = RegularContiguousSet.l;
                Comparable comparable2 = this.f;
                if (comparable2 != null) {
                    Range range = Range.g;
                    if (comparable.compareTo(comparable2) == 0) {
                        return null;
                    }
                    throw null;
                }
                throw null;
            }
        };
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet G(Comparable comparable, boolean z) {
        return X(Range.h(comparable, BoundType.a(z)));
    }

    @Override // com.google.common.collect.ContiguousSet
    public final Range P() {
        throw null;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ContiguousSet] */
    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet J(Comparable comparable, boolean z, Comparable comparable2, boolean z2) {
        if (comparable.compareTo(comparable2) == 0 && !z && !z2) {
            return new ImmutableSortedSet(NaturalOrdering.g);
        }
        return X(Range.g(comparable, BoundType.a(z), comparable2, BoundType.a(z2)));
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet N(Comparable comparable, boolean z) {
        return X(Range.b(comparable, BoundType.a(z)));
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final Comparable first() {
        throw null;
    }

    public final ContiguousSet X(Range range) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final Comparable last() {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            throw null;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return Collections2.a(this, collection);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegularContiguousSet)) {
            return super.equals(obj);
        }
        throw null;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return Sets.e(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        return new AbstractSequentialIterator<Comparable>(this, first()) { // from class: com.google.common.collect.RegularContiguousSet.1
            public final Comparable f;

            {
                this.f = this.last();
            }

            @Override // com.google.common.collect.AbstractSequentialIterator
            public final Object a(Object obj) {
                Comparable comparable = (Comparable) obj;
                int i = RegularContiguousSet.l;
                Comparable comparable2 = this.f;
                if (comparable2 != null) {
                    Range range = Range.g;
                    if (comparable.compareTo(comparable2) == 0) {
                        return null;
                    }
                    throw null;
                }
                throw null;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        first();
        last();
        throw null;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList u() {
        throw null;
    }
}
