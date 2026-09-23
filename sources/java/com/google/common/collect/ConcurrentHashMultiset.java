package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Ints;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ConcurrentHashMultiset<E> extends AbstractMultiset<E> implements Serializable {

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ForwardingSet<Object> {
        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj == null) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return Collections2.a(this, collection);
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj == null) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            return Sets.f(this, collection);
        }

        @Override // com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AbstractIterator<Multiset.Entry<Object>> {
        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.ConcurrentHashMultiset$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ForwardingIterator<Multiset.Entry<Object>> {

        /* renamed from: c, reason: collision with root package name */
        public Multiset.Entry f12270c;

        @Override // com.google.common.collect.ForwardingIterator, com.google.common.collect.ForwardingObject
        public final Object e0() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingIterator
        /* renamed from: h0 */
        public final Iterator e0() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
        public final Object next() {
            Multiset.Entry entry = (Multiset.Entry) super.next();
            this.f12270c = entry;
            return entry;
        }

        @Override // com.google.common.collect.ForwardingIterator, java.util.Iterator
        public final void remove() {
            boolean z;
            if (this.f12270c != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.m(z, "no calls to next() since the last call to remove()");
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FieldSettersHolder {
        static {
            Serialization.a(ConcurrentHashMultiset.class, "countMap");
        }
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final boolean A(int i, Object obj) {
        obj.getClass();
        CollectPreconditions.b(i, "oldCount");
        CollectPreconditions.b(0, "newCount");
        Maps.f(null, obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int G0(Object obj) {
        obj.getClass();
        CollectPreconditions.b(0, "count");
        Maps.f(null, obj);
        throw null;
    }

    @Override // com.google.common.collect.Multiset
    public final int Q(Object obj) {
        Maps.f(null, obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int T(int i, Object obj) {
        if (i == 0) {
            Maps.f(null, obj);
            throw null;
        }
        CollectPreconditions.c(i, "occurrences");
        Maps.f(null, obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Set a() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public final int add(int i, Object obj) {
        obj.getClass();
        if (i == 0) {
            Maps.f(null, obj);
            throw null;
        }
        CollectPreconditions.c(i, "occurrences");
        Maps.f(null, obj);
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Set c() {
        return new EntrySet();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final int g() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator i() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return Multisets.b(this);
    }

    @Override // com.google.common.collect.AbstractMultiset
    public final Iterator k() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        throw null;
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends AbstractMultiset<E>.EntrySet {
        public EntrySet() {
            super();
        }

        @Override // com.google.common.collect.AbstractMultiset.EntrySet, com.google.common.collect.Multisets.EntrySet
        public final Multiset a() {
            return ConcurrentHashMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            AbstractMultiset abstractMultiset = AbstractMultiset.this;
            int g = abstractMultiset.g();
            CollectPreconditions.b(g, "arraySize");
            ArrayList arrayList = new ArrayList(Ints.c(g + 5 + (g / 10)));
            Iterators.a(arrayList, abstractMultiset.k());
            return arrayList.toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            AbstractMultiset abstractMultiset = AbstractMultiset.this;
            int g = abstractMultiset.g();
            CollectPreconditions.b(g, "arraySize");
            ArrayList arrayList = new ArrayList(Ints.c(g + 5 + (g / 10)));
            Iterators.a(arrayList, abstractMultiset.k());
            return arrayList.toArray(objArr);
        }
    }
}
