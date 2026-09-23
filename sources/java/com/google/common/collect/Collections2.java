package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.AbstractIterator;
import j$.util.Objects;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Collections2 {

    /* loaded from: classes3.dex */
    public static class FilteredCollection<E> extends AbstractCollection<E> {

        /* renamed from: c, reason: collision with root package name */
        public final Collection f12256c;
        public final Predicate f;

        public FilteredCollection(Collection collection, Predicate predicate) {
            this.f12256c = collection;
            this.f = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            Preconditions.d(this.f.apply(obj));
            return this.f12256c.add(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                Preconditions.d(this.f.apply(it.next()));
            }
            return this.f12256c.addAll(collection);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            Collection collection = this.f12256c;
            boolean z = collection instanceof RandomAccess;
            Predicate predicate = this.f;
            if (z && (collection instanceof List)) {
                List list = (List) collection;
                predicate.getClass();
                int i = 0;
                for (int i2 = 0; i2 < list.size(); i2++) {
                    Object obj = list.get(i2);
                    if (!predicate.apply(obj)) {
                        if (i2 > i) {
                            try {
                                list.set(i, obj);
                            } catch (IllegalArgumentException unused) {
                                Iterables.e(list, predicate, i, i2);
                                return;
                            } catch (UnsupportedOperationException unused2) {
                                Iterables.e(list, predicate, i, i2);
                                return;
                            }
                        }
                        i++;
                    }
                }
                list.subList(i, list.size()).clear();
                return;
            }
            Iterator it = collection.iterator();
            predicate.getClass();
            while (it.hasNext()) {
                if (predicate.apply(it.next())) {
                    it.remove();
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (Collections2.c(this.f12256c, obj)) {
                return this.f.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            return Collections2.a(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return !Iterables.a(this.f12256c, this.f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return Iterators.d(this.f12256c.iterator(), this.f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            if (contains(obj) && this.f12256c.remove(obj)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            Iterator<E> it = this.f12256c.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            Iterator<E> it = this.f12256c.iterator();
            boolean z = false;
            while (it.hasNext()) {
                E next = it.next();
                if (this.f.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            Iterator<E> it = this.f12256c.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.f.apply(it.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray() {
            return Lists.a(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return Lists.a(iterator()).toArray(objArr);
        }
    }

    /* loaded from: classes3.dex */
    public static final class OrderedPermutationCollection<E> extends AbstractCollection<List<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return false;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator, com.google.common.collect.AbstractIterator, com.google.common.collect.Collections2$OrderedPermutationIterator] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            ?? abstractIterator = new AbstractIterator();
            abstractIterator.g = new ArrayList((Collection) null);
            return abstractIterator;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return "orderedPermutationCollection(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class OrderedPermutationIterator<E> extends AbstractIterator<List<E>> {
        public ArrayList g;

        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            ArrayList arrayList = this.g;
            if (arrayList == null) {
                this.f12232c = AbstractIterator.State.g;
                return null;
            }
            ImmutableList s = ImmutableList.s(arrayList);
            Objects.requireNonNull(this.g);
            int size = this.g.size();
            int i = size - 2;
            if (i < 0) {
                this.g = null;
                return s;
            }
            this.g.get(i);
            this.g.get(size - 1);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class PermutationCollection<E> extends AbstractCollection<List<E>> {
        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            new PermutationIterator();
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            return "permutations(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class PermutationIterator<E> extends AbstractIterator<List<E>> {
        public final ArrayList g = new ArrayList((Collection) null);
        public int h;

        public PermutationIterator() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            if (this.h <= 0) {
                this.f12232c = AbstractIterator.State.g;
                return null;
            }
            ArrayList arrayList = this.g;
            ImmutableList s = ImmutableList.s(arrayList);
            int size = arrayList.size() - 1;
            this.h = size;
            if (size == -1) {
                return s;
            }
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformedCollection<F, T> extends AbstractCollection<T> {

        /* renamed from: c, reason: collision with root package name */
        public final Collection f12257c;
        public final Function f;

        public TransformedCollection(Collection collection, Function function) {
            collection.getClass();
            this.f12257c = collection;
            function.getClass();
            this.f = function;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f12257c.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f12257c.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return Iterators.k(this.f12257c.iterator(), this.f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f12257c.size();
        }
    }

    public static boolean a(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static Collection b(Predicate predicate) {
        throw null;
    }

    public static boolean c(Collection collection, Object obj) {
        collection.getClass();
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }
}
