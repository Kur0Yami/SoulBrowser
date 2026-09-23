package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Multisets {

    /* renamed from: com.google.common.collect.Multisets$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends ViewMultiset<Object> {

        /* renamed from: com.google.common.collect.Multisets$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C00221 extends AbstractIterator<Multiset.Entry<Object>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Set a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
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

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ViewMultiset<Object> {

        /* renamed from: com.google.common.collect.Multisets$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Multiset.Entry<Object>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Set a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator i() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewMultiset<Object> {

        /* renamed from: com.google.common.collect.Multisets$3$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Multiset.Entry<Object>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Set a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
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

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw null;
        }

        @Override // com.google.common.collect.Multisets.ViewMultiset, java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends ViewMultiset<Object> {

        /* renamed from: com.google.common.collect.Multisets$4$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends AbstractIterator<Object> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        /* renamed from: com.google.common.collect.Multisets$4$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends AbstractIterator<Multiset.Entry<Object>> {
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Multisets.ViewMultiset, java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multisets.ViewMultiset, com.google.common.collect.AbstractMultiset
        public final int g() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator i() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw null;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends TransformedIterator<Multiset.Entry<Object>, Object> {
        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return ((Multiset.Entry) obj).a();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractEntry<E> implements Multiset.Entry<E> {
        public final boolean equals(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                if (getCount() == entry.getCount() && Objects.equals(a(), entry.a())) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            Object a2 = a();
            if (a2 == null) {
                hashCode = 0;
            } else {
                hashCode = a2.hashCode();
            }
            return hashCode ^ getCount();
        }

        public final String toString() {
            String valueOf = String.valueOf(a());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            return valueOf + " x " + count;
        }
    }

    /* loaded from: classes3.dex */
    public static final class DecreasingCount implements Comparator<Multiset.Entry<?>> {
        @Override // java.util.Comparator
        public final int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return entry2.getCount() - entry.getCount();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ElementSet<E> extends Sets.ImprovedAbstractSet<E> {
        public abstract Multiset a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (a().T(Integer.MAX_VALUE, obj) > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return a().entrySet().size();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class EntrySet<E> extends Sets.ImprovedAbstractSet<Multiset.Entry<E>> {
        public abstract Multiset a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                if (entry.getCount() > 0 && a().Q(entry.a()) == entry.getCount()) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                Object a2 = entry.a();
                int count = entry.getCount();
                if (count != 0) {
                    return a().A(count, a2);
                }
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FilteredMultiset<E> extends ViewMultiset<E> {
        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public final int T(int i, Object obj) {
            CollectPreconditions.b(i, "occurrences");
            if (i != 0) {
                if (!contains(obj)) {
                    return 0;
                }
                throw null;
            }
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Set a() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public final int add(int i, Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Set c() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator i() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.Multisets.ViewMultiset, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw new AssertionError("should never be called");
        }
    }

    /* loaded from: classes3.dex */
    public static class ImmutableEntry<E> extends AbstractEntry<E> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12372c;
        public final int f;

        public ImmutableEntry(int i, Object obj) {
            this.f12372c = obj;
            this.f = i;
            CollectPreconditions.b(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final Object a() {
            return this.f12372c;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            return this.f;
        }
    }

    /* loaded from: classes3.dex */
    public static final class MultisetIteratorImpl<E> implements Iterator<E> {

        /* renamed from: c, reason: collision with root package name */
        public final Multiset f12373c;
        public final Iterator f;
        public Multiset.Entry g;
        public int h;
        public int i;
        public boolean j;

        public MultisetIteratorImpl(Multiset multiset, Iterator it) {
            this.f12373c = multiset;
            this.f = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.h <= 0 && !this.f.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                if (this.h == 0) {
                    Multiset.Entry entry = (Multiset.Entry) this.f.next();
                    this.g = entry;
                    int count = entry.getCount();
                    this.h = count;
                    this.i = count;
                }
                this.h--;
                this.j = true;
                Multiset.Entry entry2 = this.g;
                Objects.requireNonNull(entry2);
                return entry2.a();
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            CollectPreconditions.d(this.j);
            if (this.i == 1) {
                this.f.remove();
            } else {
                Multiset.Entry entry = this.g;
                Objects.requireNonNull(entry);
                this.f12373c.remove(entry.a());
            }
            this.i--;
            this.j = false;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnmodifiableMultiset<E> extends ForwardingMultiset<E> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Multiset f12374c;
        public transient Set f;
        public transient Set g;

        public UnmodifiableMultiset(SortedMultiset sortedMultiset) {
            this.f12374c = sortedMultiset;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public final boolean A(int i, Object obj) {
            throw new UnsupportedOperationException();
        }

        public Set B0() {
            return DesugarCollections.unmodifiableSet(this.f12374c.j());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public final int G0(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public final int T(int i, Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public final Set entrySet() {
            Set set = this.g;
            if (set == null) {
                Set unmodifiableSet = DesugarCollections.unmodifiableSet(this.f12374c.entrySet());
                this.g = unmodifiableSet;
                return unmodifiableSet;
            }
            return set;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return Iterators.l(this.f12374c.iterator());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set j() {
            Set set = this.f;
            if (set == null) {
                Set B0 = B0();
                this.f = B0;
                return B0;
            }
            return set;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection
        /* renamed from: y0, reason: merged with bridge method [inline-methods] */
        public Multiset e0() {
            return this.f12374c;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public final int add(int i, Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewMultiset<E> extends AbstractMultiset<E> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            j().clear();
        }

        @Override // com.google.common.collect.AbstractMultiset
        public int g() {
            return j().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return Multisets.b(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            long j = 0;
            while (entrySet().iterator().hasNext()) {
                j += ((Multiset.Entry) r0.next()).getCount();
            }
            return Ints.c(j);
        }
    }

    public static boolean a(Multiset multiset, Object obj) {
        if (obj != multiset) {
            if (obj instanceof Multiset) {
                Multiset multiset2 = (Multiset) obj;
                if (multiset.size() == multiset2.size() && multiset.entrySet().size() == multiset2.entrySet().size()) {
                    for (Multiset.Entry entry : multiset2.entrySet()) {
                        if (multiset.Q(entry.a()) != entry.getCount()) {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public static Iterator b(Multiset multiset) {
        return new MultisetIteratorImpl(multiset, multiset.entrySet().iterator());
    }
}
