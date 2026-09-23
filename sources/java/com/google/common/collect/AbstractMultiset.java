package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractMultiset<E> extends AbstractCollection<E> implements Multiset<E> {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f12242c;
    public transient Set f;

    /* loaded from: classes3.dex */
    public final class ElementSet extends Multisets.ElementSet<E> {
        public ElementSet() {
        }

        @Override // com.google.common.collect.Multisets.ElementSet
        public final Multiset a() {
            return AbstractMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return AbstractMultiset.this.i();
        }
    }

    /* loaded from: classes3.dex */
    public class EntrySet extends Multisets.EntrySet<E> {
        public EntrySet() {
        }

        @Override // com.google.common.collect.Multisets.EntrySet
        public Multiset a() {
            return AbstractMultiset.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return AbstractMultiset.this.k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return AbstractMultiset.this.g();
        }
    }

    public boolean A(int i, Object obj) {
        CollectPreconditions.b(i, "oldCount");
        CollectPreconditions.b(0, "newCount");
        if (Q(obj) != i) {
            return false;
        }
        G0(obj);
        return true;
    }

    public int G0(Object obj) {
        CollectPreconditions.b(0, "count");
        int Q = Q(obj);
        int i = 0 - Q;
        if (i > 0) {
            add(i, obj);
            return Q;
        }
        if (i < 0) {
            T(-i, obj);
        }
        return Q;
    }

    public int T(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    public Set a() {
        return new ElementSet();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        add(1, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection instanceof Multiset) {
            Multiset multiset = (Multiset) collection;
            if (multiset instanceof AbstractMapBasedMultiset) {
                if (!((AbstractMapBasedMultiset) multiset).isEmpty()) {
                    throw null;
                }
                return false;
            }
            if (!multiset.isEmpty()) {
                for (Multiset.Entry entry : multiset.entrySet()) {
                    add(entry.getCount(), entry.a());
                }
                return true;
            }
            return false;
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.a(this, collection.iterator());
    }

    public Set c() {
        return new EntrySet();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        if (Q(obj) > 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.common.collect.Multiset
    public Set entrySet() {
        Set set = this.f;
        if (set == null) {
            Set c2 = c();
            this.f = c2;
            return c2;
        }
        return set;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(Object obj) {
        return Multisets.a(this, obj);
    }

    public abstract int g();

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return entrySet().hashCode();
    }

    public abstract Iterator i();

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // com.google.common.collect.Multiset
    public Set j() {
        Set set = this.f12242c;
        if (set == null) {
            Set a2 = a();
            this.f12242c = a2;
            return a2;
        }
        return set;
    }

    public abstract Iterator k();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (T(1, obj) > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j();
        }
        return j().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).j();
        }
        return j().retainAll(collection);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    public int add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }
}
