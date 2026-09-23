package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import j$.util.Map;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;

@GwtCompatible
/* loaded from: classes3.dex */
public final class ImmutableSortedMap<K, V> extends ImmutableMap<K, V> implements NavigableMap<K, V>, Map {
    public static final ImmutableSortedMap k;
    public final transient RegularImmutableSortedSet h;
    public final transient ImmutableList i;
    public final transient ImmutableSortedMap j;

    /* loaded from: classes3.dex */
    public static class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        public transient Object[] d;
        public transient Object[] e;

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap a() {
            return c();
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder d(Object obj, Object obj2) {
            int i = this.b + 1;
            Object[] objArr = this.d;
            if (i > objArr.length) {
                int b = ImmutableCollection.Builder.b(objArr.length, i);
                this.d = Arrays.copyOf(this.d, b);
                this.e = Arrays.copyOf(this.e, b);
            }
            CollectPreconditions.a(obj, obj2);
            Object[] objArr2 = this.d;
            int i2 = this.b;
            objArr2[i2] = obj;
            this.e[i2] = obj2;
            this.b = i2 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public final ImmutableMap.Builder e(Iterable iterable) {
            super.e(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final ImmutableSortedMap c() {
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    Object[] copyOf = Arrays.copyOf(this.d, i);
                    Arrays.sort(copyOf, null);
                    int i2 = this.b;
                    Object[] objArr = new Object[i2];
                    for (int i3 = 0; i3 < this.b; i3++) {
                        if (i3 <= 0) {
                            Object obj = this.d[i3];
                            Objects.requireNonNull(obj);
                            int binarySearch = Arrays.binarySearch(copyOf, obj, null);
                            Object obj2 = this.e[i3];
                            Objects.requireNonNull(obj2);
                            objArr[binarySearch] = obj2;
                        } else {
                            Object obj3 = copyOf[i3 - 1];
                            Object obj4 = copyOf[i3];
                            throw null;
                        }
                    }
                    return new ImmutableSortedMap(new RegularImmutableSortedSet(ImmutableList.q(copyOf.length, copyOf), null), ImmutableList.q(i2, objArr), null);
                }
                Object obj5 = this.d[0];
                Objects.requireNonNull(obj5);
                Objects.requireNonNull(this.e[0]);
                ImmutableList.w(obj5);
                throw null;
            }
            return ImmutableSortedMap.o(null);
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm<K, V> extends ImmutableMap.SerializedForm<K, V> {
    }

    static {
        RegularImmutableSortedSet D = ImmutableSortedSet.D(NaturalOrdering.g);
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        k = new ImmutableSortedMap(D, RegularImmutableList.i, null);
    }

    public ImmutableSortedMap(RegularImmutableSortedSet regularImmutableSortedSet, ImmutableList immutableList, ImmutableSortedMap immutableSortedMap) {
        this.h = regularImmutableSortedSet;
        this.i = immutableList;
        this.j = immutableSortedMap;
    }

    public static ImmutableSortedMap o(Comparator comparator) {
        if (NaturalOrdering.g.equals(comparator)) {
            return k;
        }
        return new ImmutableSortedMap(ImmutableSortedSet.D(comparator), RegularImmutableList.i, null);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet c() {
        if (isEmpty()) {
            int i = ImmutableSet.g;
            return RegularImmutableSet.n;
        }
        return new ImmutableMapEntrySet<Object, Object>() { // from class: com.google.common.collect.ImmutableSortedMap.1EntrySet
            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
            /* renamed from: p */
            public final UnmodifiableIterator iterator() {
                return a().listIterator(0);
            }

            @Override // com.google.common.collect.ImmutableSet
            public final ImmutableList u() {
                return new ImmutableList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.ImmutableSortedMap.1EntrySet.1
                    @Override // java.util.List
                    public final Object get(int i2) {
                        C1EntrySet c1EntrySet = C1EntrySet.this;
                        return new AbstractMap.SimpleImmutableEntry(ImmutableSortedMap.this.h.k.get(i2), ImmutableSortedMap.this.i.get(i2));
                    }

                    @Override // com.google.common.collect.ImmutableCollection
                    public final boolean m() {
                        return true;
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public final int size() {
                        return ImmutableSortedMap.this.i.size();
                    }
                };
            }

            @Override // com.google.common.collect.ImmutableMapEntrySet
            public final ImmutableMap y() {
                return ImmutableSortedMap.this;
            }
        };
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return Maps.e(ceilingEntry(obj));
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return this.h.h;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return this.h.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        ImmutableSortedMap immutableSortedMap = this.j;
        if (immutableSortedMap == null) {
            boolean isEmpty = isEmpty();
            RegularImmutableSortedSet regularImmutableSortedSet = this.h;
            if (isEmpty) {
                return o(Ordering.b(regularImmutableSortedSet.h).g());
            }
            return new ImmutableSortedMap((RegularImmutableSortedSet) regularImmutableSortedSet.descendingSet(), this.i.x(), this);
        }
        return immutableSortedMap;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Set entrySet() {
        return super.entrySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) super.entrySet().a().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.h.first();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return Maps.e(floorEntry(obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0012, code lost:
    
        if (r4 >= 0) goto L7;
     */
    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r4) {
        /*
            r3 = this;
            com.google.common.collect.RegularImmutableSortedSet r0 = r3.h
            r0.getClass()
            r1 = -1
            if (r4 != 0) goto La
        L8:
            r4 = r1
            goto L14
        La:
            com.google.common.collect.ImmutableList r2 = r0.k     // Catch: java.lang.ClassCastException -> L8
            java.util.Comparator r0 = r0.h     // Catch: java.lang.ClassCastException -> L8
            int r4 = java.util.Collections.binarySearch(r2, r4, r0)     // Catch: java.lang.ClassCastException -> L8
            if (r4 < 0) goto L8
        L14:
            if (r4 != r1) goto L18
            r4 = 0
            return r4
        L18:
            com.google.common.collect.ImmutableList r0 = r3.i
            java.lang.Object r4 = r0.get(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableSortedMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean h() {
        if (!this.h.k.m() && !this.i.m()) {
            return false;
        }
        return true;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return Maps.e(higherEntry(obj));
    }

    @Override // com.google.common.collect.ImmutableMap
    /* renamed from: j */
    public final ImmutableSet keySet() {
        return this.h;
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Set keySet() {
        return this.h;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) super.entrySet().a().get(this.i.size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.h.last();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return Maps.e(lowerEntry(obj));
    }

    @Override // com.google.common.collect.ImmutableMap
    /* renamed from: n */
    public final ImmutableCollection values() {
        return this.i;
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return this.h;
    }

    public final ImmutableSortedMap p(int i, int i2) {
        ImmutableList immutableList = this.i;
        if (i == 0 && i2 == immutableList.size()) {
            return this;
        }
        RegularImmutableSortedSet regularImmutableSortedSet = this.h;
        if (i == i2) {
            return o(regularImmutableSortedSet.h);
        }
        return new ImmutableSortedMap(regularImmutableSortedSet.O(i, i2), immutableList.subList(i, i2), null);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap headMap(Object obj, boolean z) {
        obj.getClass();
        return p(0, this.h.P(obj, z));
    }

    @Override // java.util.NavigableMap
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        boolean z3;
        obj.getClass();
        obj2.getClass();
        if (this.h.h.compare(obj, obj2) <= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.f(z3, "expected fromKey <= toKey but %s > %s", obj, obj2);
        return headMap(obj2, z2).tailMap(obj, z);
    }

    @Override // java.util.NavigableMap
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap tailMap(Object obj, boolean z) {
        obj.getClass();
        return p(this.h.R(obj, z), this.i.size());
    }

    @Override // java.util.Map
    public final int size() {
        return this.i.size();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Collection values() {
        return this.i;
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}
