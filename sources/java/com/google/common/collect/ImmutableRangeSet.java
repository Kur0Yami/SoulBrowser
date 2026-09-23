package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.Cut;
import com.google.common.collect.Lists;
import com.google.common.collect.Range;
import com.google.common.collect.SortedLists;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;

@GwtIncompatible
/* loaded from: classes3.dex */
public final class ImmutableRangeSet<C extends Comparable> extends AbstractRangeSet<C> implements Serializable {
    public static final ImmutableRangeSet f;
    public static final ImmutableRangeSet g;

    /* renamed from: c, reason: collision with root package name */
    public final transient ImmutableList f12302c;

    /* renamed from: com.google.common.collect.ImmutableRangeSet$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ImmutableList<Range<Comparable>> {
        public final /* synthetic */ int g;
        public final /* synthetic */ int h;
        public final /* synthetic */ Range i;
        public final /* synthetic */ ImmutableRangeSet j;

        public AnonymousClass1(ImmutableRangeSet immutableRangeSet, int i, int i2, Range range) {
            this.g = i;
            this.h = i2;
            this.i = range;
            this.j = immutableRangeSet;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public final Object get(int i) {
            ImmutableList immutableList = this.j.f12302c;
            int i2 = this.g;
            Preconditions.g(i, i2);
            int i3 = this.h;
            if (i != 0 && i != i2 - 1) {
                return (Range) immutableList.get(i + i3);
            }
            return ((Range) immutableList.get(i + i3)).d(this.i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.g;
        }
    }

    /* loaded from: classes3.dex */
    public final class AsSet extends ImmutableSortedSet<C> {
        public transient Integer k;

        /* renamed from: com.google.common.collect.ImmutableRangeSet$AsSet$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Comparable> {
            public final UnmodifiableListIterator g;
            public final UnmodifiableIterator h;

            public AnonymousClass1(AsSet asSet) {
                asSet.getClass();
                throw null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                UnmodifiableIterator unmodifiableIterator = this.h;
                if (!unmodifiableIterator.hasNext()) {
                    UnmodifiableListIterator unmodifiableListIterator = this.g;
                    if (!unmodifiableListIterator.hasNext()) {
                        this.f12232c = AbstractIterator.State.g;
                        return null;
                    }
                    Range range = (Range) unmodifiableListIterator.next();
                    int i = ContiguousSet.k;
                    range.getClass();
                    throw null;
                }
                return (Comparable) unmodifiableIterator.next();
            }
        }

        /* renamed from: com.google.common.collect.ImmutableRangeSet$AsSet$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends AbstractIterator<Comparable> {
            public final UnmodifiableListIterator g;
            public final UnmodifiableIterator h;

            public AnonymousClass2(AsSet asSet) {
                asSet.getClass();
                throw null;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                UnmodifiableIterator unmodifiableIterator = this.h;
                if (!unmodifiableIterator.hasNext()) {
                    UnmodifiableListIterator unmodifiableListIterator = this.g;
                    if (!unmodifiableListIterator.hasNext()) {
                        this.f12232c = AbstractIterator.State.g;
                        return null;
                    }
                    Range range = (Range) unmodifiableListIterator.next();
                    int i = ContiguousSet.k;
                    range.getClass();
                    throw null;
                }
                return (Comparable) unmodifiableIterator.next();
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        /* renamed from: B */
        public final UnmodifiableIterator descendingIterator() {
            return new AnonymousClass2(this);
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet G(Object obj, boolean z) {
            O(Range.h((Comparable) obj, BoundType.a(z)));
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet J(Object obj, boolean z, Object obj2, boolean z2) {
            Comparable comparable = (Comparable) obj;
            Comparable comparable2 = (Comparable) obj2;
            if (!z && !z2) {
                Range range = Range.g;
                if (comparable.compareTo(comparable2) == 0) {
                    return RegularImmutableSortedSet.l;
                }
            }
            O(Range.g(comparable, BoundType.a(z), comparable2, BoundType.a(z2)));
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet N(Object obj, boolean z) {
            O(Range.b((Comparable) obj, BoundType.a(z)));
            throw null;
        }

        public final ImmutableSortedSet O(Range range) {
            Cut cut = range.f;
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj != null) {
                try {
                    throw null;
                } catch (ClassCastException unused) {
                    return false;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        public final Iterator descendingIterator() {
            return new AnonymousClass2(this);
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public final Iterator iterator() {
            return new AnonymousClass1(this);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            return new AnonymousClass1(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            Integer num = this.k;
            num.getClass();
            return num.intValue();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet y() {
            return new DescendingImmutableSortedSet(this);
        }
    }

    /* loaded from: classes3.dex */
    public static final class AsSetSerializedForm<C extends Comparable> implements Serializable {
    }

    /* loaded from: classes3.dex */
    public static class Builder<C extends Comparable<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f12303a = new ArrayList();
    }

    /* loaded from: classes3.dex */
    public static final class ComplementRanges<C extends Comparable> extends ImmutableList<Range<C>> {
        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.g(i, 0);
            throw null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return 0;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SerializedForm<C extends Comparable> implements Serializable {
    }

    static {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        f = new ImmutableRangeSet(RegularImmutableList.i);
        g = new ImmutableRangeSet(ImmutableList.w(Range.g));
    }

    public ImmutableRangeSet(ImmutableList immutableList) {
        this.f12302c = immutableList;
    }

    @Override // com.google.common.collect.RangeSet
    public final Set a() {
        ImmutableList immutableList = this.f12302c;
        if (immutableList.isEmpty()) {
            int i = ImmutableSet.g;
            return RegularImmutableSet.n;
        }
        Range range = Range.g;
        return new RegularImmutableSortedSet(immutableList, Range.RangeLexOrdering.f12386c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Range b(Comparable comparable) {
        List transformingSequentialList;
        int a2;
        e eVar = new e(0);
        Cut.BelowValue a3 = Cut.a(comparable);
        ImmutableList immutableList = this.f12302c;
        if (immutableList instanceof RandomAccess) {
            transformingSequentialList = new Lists.TransformingRandomAccessList(immutableList, eVar);
        } else {
            transformingSequentialList = new Lists.TransformingSequentialList(immutableList, eVar);
        }
        if (!(transformingSequentialList instanceof RandomAccess)) {
            transformingSequentialList = new ArrayList(transformingSequentialList);
        }
        int size = transformingSequentialList.size() - 1;
        int i = 0;
        while (true) {
            if (i <= size) {
                int i2 = (i + size) >>> 1;
                int compare = NaturalOrdering.g.compare(a3, transformingSequentialList.get(i2));
                if (compare < 0) {
                    size = i2 - 1;
                } else if (compare > 0) {
                    i = i2 + 1;
                } else {
                    int i3 = i2 - i;
                    SortedLists.KeyPresentBehavior.f12394c.a(a3, transformingSequentialList.subList(i, size + 1), i3);
                    a2 = i + i3;
                    break;
                }
            } else {
                a2 = SortedLists.KeyAbsentBehavior.f12393c.a(i);
                break;
            }
        }
        if (a2 != -1) {
            Range range = (Range) immutableList.get(a2);
            if (range.a(comparable)) {
                return range;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Range c() {
        ImmutableList immutableList = this.f12302c;
        if (!immutableList.isEmpty()) {
            return new Range(((Range) immutableList.get(0)).f12384c, ((Range) immutableList.get(immutableList.size() - 1)).f);
        }
        throw new NoSuchElementException();
    }
}
