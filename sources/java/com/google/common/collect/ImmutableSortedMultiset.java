package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import j$.util.Collection;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ImmutableSortedMultiset<E> extends ImmutableMultiset<E> implements SortedMultiset<E>, Collection {
    public transient ImmutableSortedMultiset h;

    /* loaded from: classes3.dex */
    public static class Builder<E> extends ImmutableMultiset.Builder<E> {

        /* renamed from: c, reason: collision with root package name */
        public Object[] f12304c;
        public int[] d;
        public int e;
        public boolean f;

        @Override // com.google.common.collect.ImmutableMultiset.Builder, com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            e(1, obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder
        /* renamed from: c */
        public final ImmutableMultiset.Builder a(Object obj) {
            e(1, obj);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultiset.Builder
        public final /* bridge */ /* synthetic */ ImmutableMultiset.Builder d(int i, Object obj) {
            e(i, obj);
            return this;
        }

        public final void e(int i, Object obj) {
            obj.getClass();
            CollectPreconditions.b(i, "occurrences");
            if (i == 0) {
                return;
            }
            int i2 = this.e;
            Object[] objArr = this.f12304c;
            if (i2 == objArr.length) {
                if (i2 != 0) {
                    Object[] copyOf = Arrays.copyOf(objArr, i2);
                    Arrays.sort(copyOf, null);
                    if (1 >= copyOf.length) {
                        Arrays.fill(copyOf, 1, this.e, (Object) null);
                        int i3 = this.e;
                        if (4 > i3 * 3) {
                            copyOf = Arrays.copyOf(copyOf, Ints.c(i3 + (i3 / 2) + 1));
                        }
                        int[] iArr = new int[copyOf.length];
                        for (int i4 = 0; i4 < this.e; i4++) {
                            int binarySearch = Arrays.binarySearch(copyOf, 0, 1, this.f12304c[i4], null);
                            int i5 = this.d[i4];
                            if (i5 >= 0) {
                                iArr[binarySearch] = iArr[binarySearch] + i5;
                            } else {
                                iArr[binarySearch] = ~i5;
                            }
                        }
                        this.f12304c = copyOf;
                        this.d = iArr;
                        this.e = 1;
                    } else {
                        Object obj2 = copyOf[0];
                        Object obj3 = copyOf[1];
                        throw null;
                    }
                }
            } else if (this.f) {
                this.f12304c = Arrays.copyOf(objArr, objArr.length);
            }
            this.f = false;
            Object[] objArr2 = this.f12304c;
            int i6 = this.e;
            objArr2[i6] = obj;
            this.d[i6] = i;
            this.e = i6 + 1;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<E> implements Serializable {
    }

    @Override // com.google.common.collect.SortedMultiset
    public final SortedMultiset F0(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        boolean z;
        if (j().h.compare(obj, obj2) <= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.f(z, "Expected lowerBound <= upperBound but %s > %s", obj, obj2);
        return a0(obj, boundType).L(obj2, boundType2);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator comparator() {
        return j().h;
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    public final Multiset.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMultiset z() {
        ImmutableSortedMultiset immutableSortedMultiset = this.h;
        if (immutableSortedMultiset == null) {
            if (isEmpty()) {
                Ordering g = Ordering.b(j().h).g();
                if (NaturalOrdering.g.equals(g)) {
                    immutableSortedMultiset = RegularImmutableSortedMultiset.n;
                } else {
                    immutableSortedMultiset = new RegularImmutableSortedMultiset(g);
                }
            } else {
                immutableSortedMultiset = new DescendingImmutableSortedMultiset(this);
            }
            this.h = immutableSortedMultiset;
        }
        return immutableSortedMultiset;
    }

    @Override // com.google.common.collect.ImmutableMultiset
    /* renamed from: v */
    public abstract ImmutableSortedSet j();

    @Override // com.google.common.collect.SortedMultiset
    /* renamed from: w */
    public abstract ImmutableSortedMultiset L(Object obj, BoundType boundType);

    @Override // com.google.common.collect.SortedMultiset
    /* renamed from: x */
    public abstract ImmutableSortedMultiset a0(Object obj, BoundType boundType);
}
