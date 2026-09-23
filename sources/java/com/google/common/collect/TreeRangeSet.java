package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Cut;
import com.google.common.collect.Iterators;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;

@GwtIncompatible
/* loaded from: classes3.dex */
public class TreeRangeSet<C extends Comparable<?>> extends AbstractRangeSet<C> implements Serializable {

    /* loaded from: classes3.dex */
    public final class AsRanges extends ForwardingCollection<Range<C>> implements Set<Range<C>> {
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            throw null;
        }

        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            throw null;
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.e(this);
        }
    }

    /* loaded from: classes3.dex */
    public final class Complement extends TreeRangeSet<C> {
    }

    /* loaded from: classes3.dex */
    public static final class ComplementRangesByLowerBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {

        /* renamed from: c, reason: collision with root package name */
        public final NavigableMap f12419c = new RangesByUpperBound();
        public final Range f;

        public ComplementRangesByLowerBound(Range range) {
            this.f = range;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
        
            if (((com.google.common.collect.Range) r0.a()).f12384c == r3) goto L17;
         */
        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Iterator a() {
            /*
                r6 = this;
                com.google.common.collect.Range r0 = r6.f
                com.google.common.collect.Cut r1 = r0.f12384c
                java.util.NavigableMap r2 = r6.f12419c
                com.google.common.collect.Cut$BelowAll r3 = com.google.common.collect.Cut.BelowAll.f
                if (r1 == r3) goto L28
                java.lang.Comparable r1 = r1.e()
                com.google.common.collect.Cut r1 = (com.google.common.collect.Cut) r1
                com.google.common.collect.Cut r4 = r0.f12384c
                com.google.common.collect.BoundType r4 = r4.i()
                com.google.common.collect.BoundType r5 = com.google.common.collect.BoundType.f
                if (r4 != r5) goto L1c
                r4 = 1
                goto L1d
            L1c:
                r4 = 0
            L1d:
                com.google.common.collect.TreeRangeSet$RangesByUpperBound r2 = (com.google.common.collect.TreeRangeSet.RangesByUpperBound) r2
                java.util.NavigableMap r1 = r2.tailMap(r1, r4)
                java.util.Collection r1 = r1.values()
                goto L2e
            L28:
                java.util.AbstractMap r2 = (java.util.AbstractMap) r2
                java.util.Collection r1 = r2.values()
            L2e:
                java.util.Iterator r1 = r1.iterator()
                com.google.common.collect.PeekingIterator r1 = com.google.common.collect.Iterators.g(r1)
                boolean r0 = r0.a(r3)
                if (r0 == 0) goto L50
                r0 = r1
                com.google.common.collect.Iterators$PeekingImpl r0 = (com.google.common.collect.Iterators.PeekingImpl) r0
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L61
                java.lang.Object r0 = r0.a()
                com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
                com.google.common.collect.Cut r0 = r0.f12384c
                if (r0 == r3) goto L50
                goto L61
            L50:
                r0 = r1
                com.google.common.collect.Iterators$PeekingImpl r0 = (com.google.common.collect.Iterators.PeekingImpl) r0
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L67
                java.lang.Object r0 = r0.next()
                com.google.common.collect.Range r0 = (com.google.common.collect.Range) r0
                com.google.common.collect.Cut r3 = r0.f
            L61:
                com.google.common.collect.TreeRangeSet$ComplementRangesByLowerBound$1 r0 = new com.google.common.collect.TreeRangeSet$ComplementRangesByLowerBound$1
                r0.<init>(r6, r3, r1)
                return r0
            L67:
                com.google.common.collect.UnmodifiableListIterator r0 = com.google.common.collect.Iterators.ArrayItr.h
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.TreeRangeSet.ComplementRangesByLowerBound.a():java.util.Iterator");
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        public final Iterator b() {
            Cut cut;
            boolean z;
            Range range = this.f;
            boolean c2 = range.c();
            Cut cut2 = range.f;
            Cut.AboveAll aboveAll = Cut.AboveAll.f;
            if (c2) {
                cut = (Cut) cut2.e();
            } else {
                cut = aboveAll;
            }
            if (range.c() && cut2.j() == BoundType.f) {
                z = true;
            } else {
                z = false;
            }
            PeekingIterator g = Iterators.g(((RangesByUpperBound) this.f12419c).headMap(cut, z).descendingMap().values().iterator());
            Iterators.PeekingImpl peekingImpl = (Iterators.PeekingImpl) g;
            if (peekingImpl.hasNext()) {
                if (((Range) peekingImpl.a()).f == aboveAll) {
                    return new AbstractIterator<Map.Entry<Cut<Comparable<?>>, Range<Comparable<?>>>>(this, (Cut) MoreObjects.a(((Range) peekingImpl.next()).f12384c, aboveAll), g) { // from class: com.google.common.collect.TreeRangeSet.ComplementRangesByLowerBound.2
                        public Cut g;
                        public final /* synthetic */ PeekingIterator h;
                        public final /* synthetic */ ComplementRangesByLowerBound i;

                        {
                            this.h = g;
                            this.i = this;
                            this.g = r2;
                        }

                        @Override // com.google.common.collect.AbstractIterator
                        public final Object a() {
                            Range range2 = this.i.f;
                            Cut cut3 = this.g;
                            AbstractIterator.State state = AbstractIterator.State.g;
                            Cut.BelowAll belowAll = Cut.BelowAll.f;
                            if (cut3 == belowAll) {
                                this.f12232c = state;
                                return null;
                            }
                            Iterators.PeekingImpl peekingImpl2 = (Iterators.PeekingImpl) this.h;
                            if (peekingImpl2.hasNext()) {
                                Range range3 = (Range) peekingImpl2.next();
                                Cut cut4 = range3.f;
                                Range range4 = new Range(cut4, this.g);
                                this.g = range3.f12384c;
                                if (range2.f12384c.g(cut4)) {
                                    return new AbstractMap.SimpleImmutableEntry(cut4, range4);
                                }
                            } else if (range2.f12384c.g(belowAll)) {
                                Range range5 = new Range(belowAll, this.g);
                                this.g = belowAll;
                                return new AbstractMap.SimpleImmutableEntry(belowAll, range5);
                            }
                            this.f12232c = state;
                            return null;
                        }
                    };
                }
                Cut cut3 = ((Range) peekingImpl.a()).f;
                throw null;
            }
            if (!range.a(Cut.BelowAll.f)) {
                return Iterators.ArrayItr.h;
            }
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Range get(Object obj) {
            if (obj instanceof Cut) {
                try {
                    Cut cut = (Cut) obj;
                    Map.Entry firstEntry = d(Range.b(cut, BoundType.a(true))).firstEntry();
                    if (firstEntry != null && ((Cut) firstEntry.getKey()).equals(cut)) {
                        return (Range) firstEntry.getValue();
                    }
                    return null;
                } catch (ClassCastException unused) {
                    return null;
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return NaturalOrdering.g;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            if (get(obj) != null) {
                return true;
            }
            return false;
        }

        public final NavigableMap d(Range range) {
            Range range2 = this.f;
            if (!range2.e(range)) {
                return ImmutableSortedMap.k;
            }
            return new ComplementRangesByLowerBound(range.d(range2));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return d(Range.h((Cut) obj, BoundType.a(z)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return Iterators.j(a());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return d(Range.g((Cut) obj, BoundType.a(z), (Cut) obj2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return d(Range.b((Cut) obj, BoundType.a(z)));
        }
    }

    /* loaded from: classes3.dex */
    public final class SubRangeSet extends TreeRangeSet<C> {
    }

    /* loaded from: classes3.dex */
    public static final class SubRangeSetRangesByLowerBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {

        /* renamed from: c, reason: collision with root package name */
        public final Range f12421c;

        /* renamed from: com.google.common.collect.TreeRangeSet$SubRangeSetRangesByLowerBound$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Map.Entry<Cut<Comparable<?>>, Range<Comparable<?>>>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$SubRangeSetRangesByLowerBound$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends AbstractIterator<Map.Entry<Cut<Comparable<?>>, Range<Comparable<?>>>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        public SubRangeSetRangesByLowerBound(Range range) {
            this.f12421c = range;
            throw null;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        public final Iterator b() {
            throw null;
        }

        public final Range c(Object obj) {
            if (obj instanceof Cut) {
                try {
                    if (this.f12421c.a((Cut) obj)) {
                        throw null;
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return NaturalOrdering.g;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            c(obj);
            return false;
        }

        public final NavigableMap d(Range range) {
            Range range2 = this.f12421c;
            if (!range.e(range2)) {
                return ImmutableSortedMap.k;
            }
            new SubRangeSetRangesByLowerBound(range2.d(range));
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            c(obj);
            return null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return d(Range.h((Cut) obj, BoundType.a(z)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return d(Range.g((Cut) obj, BoundType.a(z), (Cut) obj2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return d(Range.b((Cut) obj, BoundType.a(z)));
        }
    }

    @Override // com.google.common.collect.RangeSet
    public final Set a() {
        throw null;
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class RangesByUpperBound<C extends Comparable<?>> extends AbstractNavigableMap<Cut<C>, Range<C>> {

        /* renamed from: c, reason: collision with root package name */
        public final Range f12420c;

        /* renamed from: com.google.common.collect.TreeRangeSet$RangesByUpperBound$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Map.Entry<Cut<Comparable<?>>, Range<Comparable<?>>>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        /* renamed from: com.google.common.collect.TreeRangeSet$RangesByUpperBound$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends AbstractIterator<Map.Entry<Cut<Comparable<?>>, Range<Comparable<?>>>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        public RangesByUpperBound() {
            this.f12420c = Range.g;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            Cut cut = this.f12420c.f12384c;
            if (cut != Cut.BelowAll.f) {
                throw null;
            }
            throw null;
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        public final Iterator b() {
            Range range = this.f12420c;
            if (range.c()) {
                throw null;
            }
            throw null;
        }

        public final Range c(Object obj) {
            if (obj instanceof Cut) {
                try {
                    if (this.f12420c.a((Cut) obj)) {
                        throw null;
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return NaturalOrdering.g;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            c(obj);
            return false;
        }

        public final NavigableMap d(Range range) {
            Range range2 = this.f12420c;
            if (range.e(range2)) {
                return new RangesByUpperBound(range.d(range2));
            }
            return ImmutableSortedMap.k;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            c(obj);
            return null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return d(Range.h((Cut) obj, BoundType.a(z)));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            if (this.f12420c.equals(Range.g)) {
                throw null;
            }
            a();
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            if (this.f12420c.equals(Range.g)) {
                throw null;
            }
            a();
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return d(Range.g((Cut) obj, BoundType.a(z), (Cut) obj2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return d(Range.b((Cut) obj, BoundType.a(z)));
        }

        public RangesByUpperBound(Range range) {
            this.f12420c = range;
        }
    }
}
