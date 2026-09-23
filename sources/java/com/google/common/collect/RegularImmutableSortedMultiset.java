package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.primitives.Ints;
import java.util.Collections;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtIncompatible
/* loaded from: classes3.dex */
public final class RegularImmutableSortedMultiset<E> extends ImmutableSortedMultiset<E> {
    public static final long[] m = {0};
    public static final ImmutableSortedMultiset n = new RegularImmutableSortedMultiset(NaturalOrdering.g);
    public final transient RegularImmutableSortedSet i;
    public final transient long[] j;
    public final transient int k;
    public final transient int l;

    public RegularImmutableSortedMultiset(RegularImmutableSortedSet regularImmutableSortedSet, long[] jArr, int i, int i2) {
        this.i = regularImmutableSortedSet;
        this.j = jArr;
        this.k = i;
        this.l = i2;
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        RegularImmutableSortedSet regularImmutableSortedSet = this.i;
        regularImmutableSortedSet.getClass();
        int i = -1;
        if (obj != null) {
            try {
                int binarySearch = Collections.binarySearch(regularImmutableSortedSet.k, obj, regularImmutableSortedSet.h);
                if (binarySearch >= 0) {
                    i = binarySearch;
                }
            } catch (ClassCastException unused) {
            }
        }
        if (i >= 0) {
            int i2 = this.k + i;
            long[] jArr = this.j;
            return (int) (jArr[i2 + 1] - jArr[i2]);
        }
        return 0;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return t(0);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public final NavigableSet j() {
        return this.i;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return t(this.l - 1);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean m() {
        if (this.k <= 0) {
            if (this.l >= this.j.length - 1) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset
    /* renamed from: r */
    public final ImmutableSet j() {
        return this.i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = this.l;
        int i2 = this.k;
        long[] jArr = this.j;
        return Ints.c(jArr[i + i2] - jArr[i2]);
    }

    @Override // com.google.common.collect.ImmutableMultiset
    public final Multiset.Entry t(int i) {
        E e = this.i.k.get(i);
        int i2 = this.k + i;
        long[] jArr = this.j;
        return new Multisets.ImmutableEntry((int) (jArr[i2 + 1] - jArr[i2]), e);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset
    /* renamed from: v */
    public final ImmutableSortedSet j() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    /* renamed from: w */
    public final ImmutableSortedMultiset L(Object obj, BoundType boundType) {
        boolean z;
        if (boundType == BoundType.f) {
            z = true;
        } else {
            z = false;
        }
        return y(0, this.i.P(obj, z));
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.SortedMultiset
    /* renamed from: x */
    public final ImmutableSortedMultiset a0(Object obj, BoundType boundType) {
        boolean z;
        if (boundType == BoundType.f) {
            z = true;
        } else {
            z = false;
        }
        return y(this.i.R(obj, z), this.l);
    }

    public final ImmutableSortedMultiset y(int i, int i2) {
        int i3 = this.l;
        Preconditions.j(i, i2, i3);
        RegularImmutableSortedSet regularImmutableSortedSet = this.i;
        if (i == i2) {
            Comparator comparator = regularImmutableSortedSet.h;
            if (NaturalOrdering.g.equals(comparator)) {
                return n;
            }
            return new RegularImmutableSortedMultiset(comparator);
        }
        if (i == 0 && i2 == i3) {
            return this;
        }
        return new RegularImmutableSortedMultiset(regularImmutableSortedSet.O(i, i2), this.j, this.k + i, i2 - i);
    }

    @Override // com.google.common.collect.ImmutableSortedMultiset, com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
    public final Set j() {
        return this.i;
    }

    public RegularImmutableSortedMultiset(Comparator comparator) {
        this.i = ImmutableSortedSet.D(comparator);
        this.j = m;
        this.k = 0;
        this.l = 0;
    }
}
