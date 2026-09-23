package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Multiset;
import j$.util.Collection;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableMultiset<E> extends ImmutableCollection<E> implements Multiset<E>, Collection {
    public transient ImmutableList f;
    public transient ImmutableSet g;

    /* loaded from: classes3.dex */
    public static class Builder<E> extends ImmutableCollection.Builder<E> {

        /* renamed from: a, reason: collision with root package name */
        public ObjectCountHashMap f12301a;
        public boolean b;

        @Override // com.google.common.collect.ImmutableCollection.Builder
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public Builder a(Object obj) {
            return d(1, obj);
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [com.google.common.collect.ObjectCountHashMap, java.lang.Object] */
        public Builder d(int i, Object obj) {
            Objects.requireNonNull(this.f12301a);
            if (i == 0) {
                return this;
            }
            if (this.b) {
                ObjectCountHashMap objectCountHashMap = this.f12301a;
                ?? obj2 = new Object();
                obj2.h(objectCountHashMap.f12381c);
                for (int c2 = objectCountHashMap.c(); c2 != -1; c2 = objectCountHashMap.k(c2)) {
                    obj2.m(objectCountHashMap.f(c2), objectCountHashMap.e(c2));
                }
                this.f12301a = obj2;
            }
            this.b = false;
            obj.getClass();
            ObjectCountHashMap objectCountHashMap2 = this.f12301a;
            objectCountHashMap2.m(i + objectCountHashMap2.d(obj), obj);
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends IndexedImmutableSet<Multiset.Entry<E>> {
        public EntrySet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                if (entry.getCount() > 0 && ImmutableMultiset.this.Q(entry.a()) == entry.getCount()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i) {
            return ImmutableMultiset.this.t(i);
        }

        @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return ImmutableMultiset.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return ImmutableMultiset.this.m();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ImmutableMultiset.this.j().size();
        }
    }

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class EntrySetSerializedForm<E> implements Serializable {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.ImmutableMultiset$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.ObjectCountHashMap, java.lang.Object] */
    public static ImmutableMultiset q(java.util.Collection collection) {
        int i;
        ObjectCountHashMap objectCountHashMap;
        if (collection instanceof ImmutableMultiset) {
            ImmutableMultiset immutableMultiset = (ImmutableMultiset) collection;
            if (!immutableMultiset.m()) {
                return immutableMultiset;
            }
        }
        boolean z = collection instanceof Multiset;
        if (z) {
            i = ((Multiset) collection).j().size();
        } else {
            i = 11;
        }
        ?? obj = new Object();
        obj.b = false;
        ?? obj2 = new Object();
        obj2.h(i);
        obj.f12301a = obj2;
        if (z) {
            Multiset multiset = (Multiset) collection;
            if (multiset instanceof RegularImmutableMultiset) {
                objectCountHashMap = ((RegularImmutableMultiset) multiset).h;
            } else {
                boolean z2 = multiset instanceof AbstractMapBasedMultiset;
                objectCountHashMap = null;
            }
            if (objectCountHashMap != null) {
                obj2.b(Math.max(obj2.f12381c, objectCountHashMap.f12381c));
                for (int c2 = objectCountHashMap.c(); c2 >= 0; c2 = objectCountHashMap.k(c2)) {
                    obj.d(objectCountHashMap.f(c2), objectCountHashMap.e(c2));
                }
            } else {
                Set entrySet = multiset.entrySet();
                ObjectCountHashMap objectCountHashMap2 = obj.f12301a;
                objectCountHashMap2.b(Math.max(objectCountHashMap2.f12381c, entrySet.size()));
                for (Multiset.Entry entry : multiset.entrySet()) {
                    obj.d(entry.getCount(), entry.a());
                }
            }
        } else {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                obj.a(it.next());
            }
        }
        Objects.requireNonNull(obj.f12301a);
        if (obj.f12301a.f12381c == 0) {
            return RegularImmutableMultiset.k;
        }
        obj.b = true;
        return new RegularImmutableMultiset(obj.f12301a);
    }

    @Override // com.google.common.collect.Multiset
    public final boolean A(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    public final int G0(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multiset
    public final int T(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList a() {
        ImmutableList immutableList = this.f;
        if (immutableList == null) {
            ImmutableList a2 = super.a();
            this.f = a2;
            return a2;
        }
        return immutableList;
    }

    @Override // com.google.common.collect.Multiset
    public final int add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        UnmodifiableIterator it = entrySet().iterator();
        while (it.hasNext()) {
            Multiset.Entry entry = (Multiset.Entry) it.next();
            Arrays.fill(objArr, i, entry.getCount() + i, entry.a());
            i += entry.getCount();
        }
        return i;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (Q(obj) > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(Object obj) {
        return Multisets.a(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return Sets.e(entrySet());
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* renamed from: p */
    public final UnmodifiableIterator iterator() {
        final UnmodifiableIterator it = entrySet().iterator();
        return new UnmodifiableIterator<Object>() { // from class: com.google.common.collect.ImmutableMultiset.1

            /* renamed from: c, reason: collision with root package name */
            public int f12300c;
            public Object f;

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f12300c <= 0 && !it.hasNext()) {
                    return false;
                }
                return true;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (this.f12300c <= 0) {
                    Multiset.Entry entry = (Multiset.Entry) it.next();
                    this.f = entry.a();
                    this.f12300c = entry.getCount();
                }
                this.f12300c--;
                Object obj = this.f;
                Objects.requireNonNull(obj);
                return obj;
            }
        };
    }

    @Override // com.google.common.collect.Multiset
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableSet j();

    @Override // com.google.common.collect.Multiset
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet entrySet() {
        ImmutableSet immutableSet = this.g;
        if (immutableSet == null) {
            if (isEmpty()) {
                immutableSet = RegularImmutableSet.n;
            } else {
                immutableSet = new EntrySet();
            }
            this.g = immutableSet;
        }
        return immutableSet;
    }

    public abstract Multiset.Entry t(int i);

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }
}
