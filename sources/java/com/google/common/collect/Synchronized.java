package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
@J2ktIncompatible
@GwtCompatible
/* loaded from: classes3.dex */
public final class Synchronized {

    /* loaded from: classes3.dex */
    public static final class SynchronizedAsMap<K, V> extends SynchronizedMap<K, Collection<V>> {
        public transient Set j;
        public transient Collection k;

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final Set entrySet() {
            Set set;
            synchronized (this.f) {
                try {
                    if (this.j == null) {
                        this.j = new SynchronizedObject(((Map) this.f12406c).entrySet(), this.f);
                    }
                    set = this.j;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final Object get(Object obj) {
            Collection a2;
            synchronized (this.f) {
                Collection collection = (Collection) super.get(obj);
                if (collection == null) {
                    a2 = null;
                } else {
                    a2 = Synchronized.a(collection, this.f);
                }
            }
            return a2;
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Collection] */
        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final Collection values() {
            Collection collection;
            synchronized (this.f) {
                try {
                    if (this.k == null) {
                        this.k = new SynchronizedObject(((Map) this.f12406c).values(), this.f);
                    }
                    collection = this.k;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedAsMapValues<V> extends SynchronizedCollection<Collection<V>> {
        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new TransformedIterator<Collection<Object>, Collection<Object>>(super.iterator()) { // from class: com.google.common.collect.Synchronized.SynchronizedAsMapValues.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return Synchronized.a((Collection) obj, SynchronizedAsMapValues.this.f);
                }
            };
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedBiMap<K, V> extends SynchronizedMap<K, V> implements BiMap<K, V> {
        public transient Set j;

        @Override // com.google.common.collect.Synchronized.SynchronizedMap
        public final Map c() {
            return (BiMap) ((Map) this.f12406c);
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final Set values() {
            Set set;
            synchronized (this.f) {
                try {
                    if (this.j == null) {
                        this.j = new SynchronizedObject(((BiMap) ((Map) this.f12406c)).values(), this.f);
                    }
                    set = this.j;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedDeque<E> extends SynchronizedQueue<E> implements Deque<E> {
        @Override // java.util.Deque
        public final void addFirst(Object obj) {
            synchronized (this.f) {
                ((Deque) super.c()).addFirst(obj);
            }
        }

        @Override // java.util.Deque
        public final void addLast(Object obj) {
            synchronized (this.f) {
                ((Deque) super.c()).addLast(obj);
            }
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedQueue, com.google.common.collect.Synchronized.SynchronizedCollection
        public final Collection c() {
            return (Deque) super.c();
        }

        @Override // java.util.Deque
        public final Iterator descendingIterator() {
            Iterator<E> descendingIterator;
            synchronized (this.f) {
                descendingIterator = ((Deque) super.c()).descendingIterator();
            }
            return descendingIterator;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedQueue
        /* renamed from: g */
        public final Queue c() {
            return (Deque) super.c();
        }

        @Override // java.util.Deque
        public final Object getFirst() {
            Object first;
            synchronized (this.f) {
                first = ((Deque) super.c()).getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public final Object getLast() {
            Object last;
            synchronized (this.f) {
                last = ((Deque) super.c()).getLast();
            }
            return last;
        }

        @Override // java.util.Deque
        public final boolean offerFirst(Object obj) {
            boolean offerFirst;
            synchronized (this.f) {
                offerFirst = ((Deque) super.c()).offerFirst(obj);
            }
            return offerFirst;
        }

        @Override // java.util.Deque
        public final boolean offerLast(Object obj) {
            boolean offerLast;
            synchronized (this.f) {
                offerLast = ((Deque) super.c()).offerLast(obj);
            }
            return offerLast;
        }

        @Override // java.util.Deque
        public final Object peekFirst() {
            Object peekFirst;
            synchronized (this.f) {
                peekFirst = ((Deque) super.c()).peekFirst();
            }
            return peekFirst;
        }

        @Override // java.util.Deque
        public final Object peekLast() {
            Object peekLast;
            synchronized (this.f) {
                peekLast = ((Deque) super.c()).peekLast();
            }
            return peekLast;
        }

        @Override // java.util.Deque
        public final Object pollFirst() {
            Object pollFirst;
            synchronized (this.f) {
                pollFirst = ((Deque) super.c()).pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.Deque
        public final Object pollLast() {
            Object pollLast;
            synchronized (this.f) {
                pollLast = ((Deque) super.c()).pollLast();
            }
            return pollLast;
        }

        @Override // java.util.Deque
        public final Object pop() {
            Object pop;
            synchronized (this.f) {
                pop = ((Deque) super.c()).pop();
            }
            return pop;
        }

        @Override // java.util.Deque
        public final void push(Object obj) {
            synchronized (this.f) {
                ((Deque) super.c()).push(obj);
            }
        }

        @Override // java.util.Deque
        public final Object removeFirst() {
            Object removeFirst;
            synchronized (this.f) {
                removeFirst = ((Deque) super.c()).removeFirst();
            }
            return removeFirst;
        }

        @Override // java.util.Deque
        public final boolean removeFirstOccurrence(Object obj) {
            boolean removeFirstOccurrence;
            synchronized (this.f) {
                removeFirstOccurrence = ((Deque) super.c()).removeFirstOccurrence(obj);
            }
            return removeFirstOccurrence;
        }

        @Override // java.util.Deque
        public final Object removeLast() {
            Object removeLast;
            synchronized (this.f) {
                removeLast = ((Deque) super.c()).removeLast();
            }
            return removeLast;
        }

        @Override // java.util.Deque
        public final boolean removeLastOccurrence(Object obj) {
            boolean removeLastOccurrence;
            synchronized (this.f) {
                removeLastOccurrence = ((Deque) super.c()).removeLastOccurrence(obj);
            }
            return removeLastOccurrence;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class SynchronizedEntry<K, V> extends SynchronizedObject implements Map.Entry<K, V> {
        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean equals;
            synchronized (this.f) {
                equals = ((Map.Entry) this.f12406c).equals(obj);
            }
            return equals;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            Object key;
            synchronized (this.f) {
                key = ((Map.Entry) this.f12406c).getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            Object value;
            synchronized (this.f) {
                value = ((Map.Entry) this.f12406c).getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = ((Map.Entry) this.f12406c).hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object value;
            synchronized (this.f) {
                value = ((Map.Entry) this.f12406c).setValue(obj);
            }
            return value;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedList<E> extends SynchronizedCollection<E> implements List<E> {
        @Override // java.util.List
        public final void add(int i, Object obj) {
            synchronized (this.f) {
                c().add(i, obj);
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            boolean addAll;
            synchronized (this.f) {
                addAll = c().addAll(i, collection);
            }
            return addAll;
        }

        @Override // java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                equals = c().equals(obj);
            }
            return equals;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final List c() {
            return (List) ((Collection) this.f12406c);
        }

        @Override // java.util.List
        public final Object get(int i) {
            Object obj;
            synchronized (this.f) {
                obj = c().get(i);
            }
            return obj;
        }

        @Override // java.util.Collection, java.util.List
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = c().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int indexOf;
            synchronized (this.f) {
                indexOf = c().indexOf(obj);
            }
            return indexOf;
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int lastIndexOf;
            synchronized (this.f) {
                lastIndexOf = c().lastIndexOf(obj);
            }
            return lastIndexOf;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return c().listIterator();
        }

        @Override // java.util.List
        public final Object remove(int i) {
            Object remove;
            synchronized (this.f) {
                remove = c().remove(i);
            }
            return remove;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            Object obj2;
            synchronized (this.f) {
                obj2 = c().set(i, obj);
            }
            return obj2;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            List c2;
            synchronized (this.f) {
                c2 = Synchronized.c(c().subList(i, i2), this.f);
            }
            return c2;
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return c().listIterator(i);
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedListMultimap<K, V> extends SynchronizedMultimap<K, V> implements ListMultimap<K, V> {
        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap
        public final Multimap c() {
            return (ListMultimap) ((Multimap) this.f12406c);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public final List a(Object obj) {
            List a2;
            synchronized (this.f) {
                a2 = ((ListMultimap) ((Multimap) this.f12406c)).a(obj);
            }
            return a2;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public final List get(Object obj) {
            List c2;
            synchronized (this.f) {
                c2 = Synchronized.c(((ListMultimap) ((Multimap) this.f12406c)).get(obj), this.f);
            }
            return c2;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedMap<K, V> extends SynchronizedObject implements Map<K, V> {
        public transient Set g;
        public transient Collection h;
        public transient Set i;

        public Map c() {
            return (Map) this.f12406c;
        }

        @Override // java.util.Map
        public final void clear() {
            synchronized (this.f) {
                c().clear();
            }
        }

        @Override // java.util.Map
        public final boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f) {
                containsKey = c().containsKey(obj);
            }
            return containsKey;
        }

        public boolean containsValue(Object obj) {
            boolean containsValue;
            synchronized (this.f) {
                containsValue = c().containsValue(obj);
            }
            return containsValue;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        public Set entrySet() {
            Set set;
            synchronized (this.f) {
                try {
                    if (this.i == null) {
                        this.i = new SynchronizedObject(c().entrySet(), this.f);
                    }
                    set = this.i;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // java.util.Map
        public final boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                equals = c().equals(obj);
            }
            return equals;
        }

        public Object get(Object obj) {
            Object obj2;
            synchronized (this.f) {
                obj2 = c().get(obj);
            }
            return obj2;
        }

        @Override // java.util.Map
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = c().hashCode();
            }
            return hashCode;
        }

        @Override // java.util.Map
        public final boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f) {
                isEmpty = c().isEmpty();
            }
            return isEmpty;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        @Override // java.util.Map
        public Set keySet() {
            Set set;
            synchronized (this.f) {
                try {
                    if (this.g == null) {
                        this.g = new SynchronizedObject(c().keySet(), this.f);
                    }
                    set = this.g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return set;
        }

        @Override // java.util.Map
        public final Object put(Object obj, Object obj2) {
            Object put;
            synchronized (this.f) {
                put = c().put(obj, obj2);
            }
            return put;
        }

        @Override // java.util.Map
        public final void putAll(Map map) {
            synchronized (this.f) {
                c().putAll(map);
            }
        }

        @Override // java.util.Map
        public final Object remove(Object obj) {
            Object remove;
            synchronized (this.f) {
                remove = c().remove(obj);
            }
            return remove;
        }

        @Override // java.util.Map
        public final int size() {
            int size;
            synchronized (this.f) {
                size = c().size();
            }
            return size;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Collection] */
        public Collection values() {
            Collection collection;
            synchronized (this.f) {
                try {
                    if (this.h == null) {
                        this.h = new SynchronizedObject(c().values(), this.f);
                    }
                    collection = this.h;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return collection;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedMultimap<K, V> extends SynchronizedObject implements Multimap<K, V> {
        @Override // com.google.common.collect.Multimap
        public final Map G() {
            synchronized (this.f) {
            }
            return null;
        }

        @Override // com.google.common.collect.Multimap
        public final boolean Z(Object obj, Object obj2) {
            boolean Z;
            synchronized (this.f) {
                Z = c().Z(obj, obj2);
            }
            return Z;
        }

        public Collection a(Object obj) {
            Collection a2;
            synchronized (this.f) {
                a2 = c().a(obj);
            }
            return a2;
        }

        public Multimap c() {
            return (Multimap) this.f12406c;
        }

        @Override // com.google.common.collect.Multimap
        public final void clear() {
            synchronized (this.f) {
                c().clear();
            }
        }

        @Override // com.google.common.collect.Multimap
        public final boolean containsKey(Object obj) {
            boolean containsKey;
            synchronized (this.f) {
                containsKey = c().containsKey(obj);
            }
            return containsKey;
        }

        @Override // com.google.common.collect.Multimap
        public final boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                equals = c().equals(obj);
            }
            return equals;
        }

        public Collection get(Object obj) {
            Collection a2;
            synchronized (this.f) {
                a2 = Synchronized.a(c().get(obj), this.f);
            }
            return a2;
        }

        @Override // com.google.common.collect.Multimap
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = c().hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.Multimap
        public Collection i() {
            synchronized (this.f) {
            }
            return null;
        }

        @Override // com.google.common.collect.Multimap
        public final boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f) {
                isEmpty = c().isEmpty();
            }
            return isEmpty;
        }

        @Override // com.google.common.collect.Multimap
        public final Set keySet() {
            synchronized (this.f) {
            }
            return null;
        }

        @Override // com.google.common.collect.Multimap
        public final boolean remove(Object obj, Object obj2) {
            boolean remove;
            synchronized (this.f) {
                remove = c().remove(obj, obj2);
            }
            return remove;
        }

        @Override // com.google.common.collect.Multimap
        public final int size() {
            int size;
            synchronized (this.f) {
                size = c().size();
            }
            return size;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedMultiset<E> extends SynchronizedCollection<E> implements Multiset<E> {
        @Override // com.google.common.collect.Multiset
        public final boolean A(int i, Object obj) {
            boolean A;
            synchronized (this.f) {
                A = c().A(i, obj);
            }
            return A;
        }

        @Override // com.google.common.collect.Multiset
        public final int G0(Object obj) {
            int G0;
            synchronized (this.f) {
                G0 = c().G0(obj);
            }
            return G0;
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            int Q;
            synchronized (this.f) {
                Q = c().Q(obj);
            }
            return Q;
        }

        @Override // com.google.common.collect.Multiset
        public final int T(int i, Object obj) {
            int T;
            synchronized (this.f) {
                T = c().T(i, obj);
            }
            return T;
        }

        @Override // com.google.common.collect.Multiset
        public final int add(int i, Object obj) {
            int add;
            synchronized (this.f) {
                add = c().add(i, obj);
            }
            return add;
        }

        @Override // com.google.common.collect.Multiset
        public final Set entrySet() {
            synchronized (this.f) {
            }
            return null;
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public final boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                equals = c().equals(obj);
            }
            return equals;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final Multiset c() {
            return (Multiset) ((Collection) this.f12406c);
        }

        @Override // java.util.Collection, com.google.common.collect.Multiset
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = c().hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.Multiset
        public final Set j() {
            synchronized (this.f) {
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedObject implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12406c;
        public final Object f;

        public SynchronizedObject(Object obj, Object obj2) {
            obj.getClass();
            this.f12406c = obj;
            this.f = obj2 == null ? this : obj2;
        }

        public final String toString() {
            String obj;
            synchronized (this.f) {
                obj = this.f12406c.toString();
            }
            return obj;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedQueue<E> extends SynchronizedCollection<E> implements Queue<E> {
        @Override // java.util.Queue
        public final Object element() {
            Object element;
            synchronized (this.f) {
                element = c().element();
            }
            return element;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Queue c() {
            return (Queue) ((Collection) this.f12406c);
        }

        @Override // java.util.Queue
        public final boolean offer(Object obj) {
            boolean offer;
            synchronized (this.f) {
                offer = c().offer(obj);
            }
            return offer;
        }

        @Override // java.util.Queue
        public final Object peek() {
            Object peek;
            synchronized (this.f) {
                peek = c().peek();
            }
            return peek;
        }

        @Override // java.util.Queue
        public final Object poll() {
            Object poll;
            synchronized (this.f) {
                poll = c().poll();
            }
            return poll;
        }

        @Override // java.util.Queue
        public final Object remove() {
            Object remove;
            synchronized (this.f) {
                remove = c().remove();
            }
            return remove;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedRandomAccessList<E> extends SynchronizedList<E> implements RandomAccess {
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedSet<E> extends SynchronizedCollection<E> implements Set<E> {
        public boolean equals(Object obj) {
            boolean equals;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                equals = c().equals(obj);
            }
            return equals;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public Set c() {
            return (Set) ((Collection) this.f12406c);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = c().hashCode();
            }
            return hashCode;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedSetMultimap<K, V> extends SynchronizedMultimap<K, V> implements SetMultimap<K, V> {
        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public SetMultimap c() {
            return (SetMultimap) ((Multimap) this.f12406c);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public Set a(Object obj) {
            Set a2;
            synchronized (this.f) {
                a2 = c().a(obj);
            }
            return a2;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public Set get(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().get(obj), this.f);
            }
            return synchronizedObject;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public final Set i() {
            synchronized (this.f) {
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedSortedMap<K, V> extends SynchronizedMap<K, V> implements SortedMap<K, V> {
        @Override // java.util.SortedMap
        public final Comparator comparator() {
            Comparator<? super K> comparator;
            synchronized (this.f) {
                comparator = c().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            Object firstKey;
            synchronized (this.f) {
                firstKey = c().firstKey();
            }
            return firstKey;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedMap c() {
            return (SortedMap) ((Map) this.f12406c);
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.SortedMap] */
        public SortedMap headMap(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().headMap(obj), this.f);
            }
            return synchronizedObject;
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            Object lastKey;
            synchronized (this.f) {
                lastKey = c().lastKey();
            }
            return lastKey;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.SortedMap] */
        public SortedMap subMap(Object obj, Object obj2) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().subMap(obj, obj2), this.f);
            }
            return synchronizedObject;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.SortedMap] */
        public SortedMap tailMap(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().tailMap(obj), this.f);
            }
            return synchronizedObject;
        }
    }

    /* loaded from: classes3.dex */
    public static class SynchronizedSortedSet<E> extends SynchronizedSet<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            Comparator<? super E> comparator;
            synchronized (this.f) {
                comparator = c().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Object first;
            synchronized (this.f) {
                first = c().first();
            }
            return first;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.SortedSet, com.google.common.collect.Synchronized$SynchronizedObject] */
        public SortedSet headSet(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().headSet(obj), this.f);
            }
            return synchronizedObject;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSet
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public SortedSet c() {
            return (SortedSet) super.c();
        }

        @Override // java.util.SortedSet
        public final Object last() {
            Object last;
            synchronized (this.f) {
                last = c().last();
            }
            return last;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.SortedSet, com.google.common.collect.Synchronized$SynchronizedObject] */
        public SortedSet subSet(Object obj, Object obj2) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().subSet(obj, obj2), this.f);
            }
            return synchronizedObject;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.SortedSet, com.google.common.collect.Synchronized$SynchronizedObject] */
        public SortedSet tailSet(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(c().tailSet(obj), this.f);
            }
            return synchronizedObject;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedTable<R, C, V> extends SynchronizedObject implements Table<R, C, V> {
        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Map] */
        @Override // com.google.common.collect.Table
        public final Map B() {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(Maps.h(((Table) this.f12406c).B(), new f(3, this)), this.f);
            }
            return synchronizedObject;
        }

        @Override // com.google.common.collect.Table
        public final boolean equals(Object obj) {
            boolean equals;
            if (this == obj) {
                return true;
            }
            synchronized (this.f) {
                equals = ((Table) this.f12406c).equals(obj);
            }
            return equals;
        }

        @Override // com.google.common.collect.Table
        public final int hashCode() {
            int hashCode;
            synchronized (this.f) {
                hashCode = ((Table) this.f12406c).hashCode();
            }
            return hashCode;
        }

        @Override // com.google.common.collect.Table
        public final int size() {
            int size;
            synchronized (this.f) {
                size = ((Table) this.f12406c).size();
            }
            return size;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Set] */
        @Override // com.google.common.collect.Table
        public final Set u() {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((Table) this.f12406c).u(), this.f);
            }
            return synchronizedObject;
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.Collection] */
    public static Collection a(Collection collection, Object obj) {
        if (collection instanceof SortedSet) {
            return new SynchronizedObject((SortedSet) collection, obj);
        }
        if (collection instanceof Set) {
            return new SynchronizedObject((Set) collection, obj);
        }
        if (collection instanceof List) {
            return c((List) collection, obj);
        }
        return new SynchronizedObject(collection, obj);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map$Entry, com.google.common.collect.Synchronized$SynchronizedObject] */
    public static Map.Entry b(Map.Entry entry, Object obj) {
        if (entry == null) {
            return null;
        }
        return new SynchronizedObject(entry, obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, com.google.common.collect.Synchronized$SynchronizedObject] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List, com.google.common.collect.Synchronized$SynchronizedObject] */
    public static List c(List list, Object obj) {
        if (list instanceof RandomAccess) {
            return new SynchronizedObject(list, obj);
        }
        return new SynchronizedObject(list, obj);
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedSortedSetMultimap<K, V> extends SynchronizedSetMultimap<K, V> implements SortedSetMultimap<K, V> {
        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap
        public final Multimap c() {
            return (SortedSetMultimap) super.c();
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap
        /* renamed from: g */
        public final SetMultimap c() {
            return (SortedSetMultimap) super.c();
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public final SortedSet a(Object obj) {
            SortedSet a2;
            synchronized (this.f) {
                a2 = ((SortedSetMultimap) super.c()).a(obj);
            }
            return a2;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.SortedSet, com.google.common.collect.Synchronized$SynchronizedObject] */
        @Override // com.google.common.collect.Synchronized.SynchronizedSetMultimap, com.google.common.collect.Synchronized.SynchronizedMultimap, com.google.common.collect.Multimap
        public final SortedSet get(Object obj) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((SortedSetMultimap) super.c()).get(obj), this.f);
            }
            return synchronizedObject;
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class SynchronizedCollection<E> extends SynchronizedObject implements Collection<E> {
        @Override // java.util.Collection
        public final boolean add(Object obj) {
            boolean add;
            synchronized (this.f) {
                add = c().add(obj);
            }
            return add;
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            boolean addAll;
            synchronized (this.f) {
                addAll = c().addAll(collection);
            }
            return addAll;
        }

        public Collection c() {
            return (Collection) this.f12406c;
        }

        @Override // java.util.Collection
        public final void clear() {
            synchronized (this.f) {
                c().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean contains;
            synchronized (this.f) {
                contains = c().contains(obj);
            }
            return contains;
        }

        public boolean containsAll(Collection collection) {
            boolean containsAll;
            synchronized (this.f) {
                containsAll = c().containsAll(collection);
            }
            return containsAll;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            boolean isEmpty;
            synchronized (this.f) {
                isEmpty = c().isEmpty();
            }
            return isEmpty;
        }

        public Iterator iterator() {
            return c().iterator();
        }

        public boolean remove(Object obj) {
            boolean remove;
            synchronized (this.f) {
                remove = c().remove(obj);
            }
            return remove;
        }

        public boolean removeAll(Collection collection) {
            boolean removeAll;
            synchronized (this.f) {
                removeAll = c().removeAll(collection);
            }
            return removeAll;
        }

        public boolean retainAll(Collection collection) {
            boolean retainAll;
            synchronized (this.f) {
                retainAll = c().retainAll(collection);
            }
            return retainAll;
        }

        @Override // java.util.Collection
        public final int size() {
            int size;
            synchronized (this.f) {
                size = c().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.f) {
                array = c().toArray();
            }
            return array;
        }

        public Object[] toArray(Object[] objArr) {
            Object[] array;
            synchronized (this.f) {
                array = c().toArray(objArr);
            }
            return array;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedAsMapEntries<K, V> extends SynchronizedSet<Map.Entry<K, Collection<V>>> {
        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            boolean contains;
            synchronized (this.f) {
                Set c2 = c();
                if (!(obj instanceof Map.Entry)) {
                    contains = false;
                } else {
                    contains = c2.contains(new Maps.AnonymousClass7((Map.Entry) obj));
                }
            }
            return contains;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            boolean a2;
            synchronized (this.f) {
                a2 = Collections2.a(c(), collection);
            }
            return a2;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            boolean b;
            if (obj == this) {
                return true;
            }
            synchronized (this.f) {
                b = Sets.b(c(), obj);
            }
            return b;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new TransformedIterator<Map.Entry<Object, Collection<Object>>, Map.Entry<Object, Collection<Object>>>(super.iterator()) { // from class: com.google.common.collect.Synchronized.SynchronizedAsMapEntries.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    final Map.Entry entry = (Map.Entry) obj;
                    return new ForwardingMapEntry<Object, Collection<Object>>(this) { // from class: com.google.common.collect.Synchronized.SynchronizedAsMapEntries.1.1
                        public final /* synthetic */ AnonymousClass1 f;

                        {
                            this.f = this;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                        public final Object e0() {
                            return entry;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public final Object getValue() {
                            return Synchronized.a((Collection) entry.getValue(), SynchronizedAsMapEntries.this.f);
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry
                        /* renamed from: h0 */
                        public final Map.Entry e0() {
                            return entry;
                        }
                    };
                }
            };
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            boolean remove;
            synchronized (this.f) {
                Set c2 = c();
                if (!(obj instanceof Map.Entry)) {
                    remove = false;
                } else {
                    remove = c2.remove(new Maps.AnonymousClass7((Map.Entry) obj));
                }
            }
            return remove;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            boolean i;
            synchronized (this.f) {
                i = Iterators.i(collection, c().iterator());
            }
            return i;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            boolean z;
            synchronized (this.f) {
                Iterator it = c().iterator();
                collection.getClass();
                z = false;
                while (it.hasNext()) {
                    if (!collection.contains(it.next())) {
                        it.remove();
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            Object[] objArr;
            synchronized (this.f) {
                Set c2 = c();
                objArr = new Object[c2.size()];
                ObjectArrays.b(c2, objArr);
            }
            return objArr;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            Object[] c2;
            synchronized (this.f) {
                c2 = ObjectArrays.c(c(), objArr);
            }
            return c2;
        }
    }

    @GwtIncompatible
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class SynchronizedNavigableMap<K, V> extends SynchronizedSortedMap<K, V> implements NavigableMap<K, V> {
        public transient NavigableSet j;
        public transient NavigableMap k;
        public transient NavigableSet l;

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, com.google.common.collect.Synchronized.SynchronizedMap
        public final Map c() {
            return (NavigableMap) super.c();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).ceilingEntry(obj), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            Object ceilingKey;
            synchronized (this.f) {
                ceilingKey = ((NavigableMap) super.c()).ceilingKey(obj);
            }
            return ceilingKey;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            synchronized (this.f) {
                try {
                    NavigableSet navigableSet = this.j;
                    if (navigableSet == null) {
                        ?? synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).descendingKeySet(), this.f);
                        this.j = synchronizedObject;
                        return synchronizedObject;
                    }
                    return navigableSet;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            synchronized (this.f) {
                try {
                    NavigableMap navigableMap = this.k;
                    if (navigableMap == null) {
                        ?? synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).descendingMap(), this.f);
                        this.k = synchronizedObject;
                        return synchronizedObject;
                    }
                    return navigableMap;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).firstEntry(), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).floorEntry(obj), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            Object floorKey;
            synchronized (this.f) {
                floorKey = ((NavigableMap) super.c()).floorKey(obj);
            }
            return floorKey;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap
        /* renamed from: g */
        public final SortedMap c() {
            return (NavigableMap) super.c();
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).headMap(obj, z), this.f);
            }
            return synchronizedObject;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).higherEntry(obj), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            Object higherKey;
            synchronized (this.f) {
                higherKey = ((NavigableMap) super.c()).higherKey(obj);
            }
            return higherKey;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedMap, java.util.Map
        public final Set keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).lastEntry(), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).lowerEntry(obj), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            Object lowerKey;
            synchronized (this.f) {
                lowerKey = ((NavigableMap) super.c()).lowerKey(obj);
            }
            return lowerKey;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            synchronized (this.f) {
                try {
                    NavigableSet navigableSet = this.l;
                    if (navigableSet == null) {
                        ?? synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).navigableKeySet(), this.f);
                        this.l = synchronizedObject;
                        return synchronizedObject;
                    }
                    return navigableSet;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).pollFirstEntry(), this.f);
            }
            return b;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            Map.Entry b;
            synchronized (this.f) {
                b = Synchronized.b(((NavigableMap) super.c()).pollLastEntry(), this.f);
            }
            return b;
        }

        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).subMap(obj, z, obj2, z2), this.f);
            }
            return synchronizedObject;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableMap) super.c()).tailMap(obj, z), this.f);
            }
            return synchronizedObject;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    @GwtIncompatible
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class SynchronizedNavigableSet<E> extends SynchronizedSortedSet<E> implements NavigableSet<E> {
        public transient NavigableSet g;

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, com.google.common.collect.Synchronized.SynchronizedSet, com.google.common.collect.Synchronized.SynchronizedCollection
        public final Collection c() {
            return (NavigableSet) super.c();
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            Object ceiling;
            synchronized (this.f) {
                ceiling = ((NavigableSet) super.c()).ceiling(obj);
            }
            return ceiling;
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((NavigableSet) super.c()).descendingIterator();
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            synchronized (this.f) {
                try {
                    NavigableSet navigableSet = this.g;
                    if (navigableSet == null) {
                        ?? synchronizedObject = new SynchronizedObject(((NavigableSet) super.c()).descendingSet(), this.f);
                        this.g = synchronizedObject;
                        return synchronizedObject;
                    }
                    return navigableSet;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            Object floor;
            synchronized (this.f) {
                floor = ((NavigableSet) super.c()).floor(obj);
            }
            return floor;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, com.google.common.collect.Synchronized.SynchronizedSet
        /* renamed from: g */
        public final Set c() {
            return (NavigableSet) super.c();
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableSet) super.c()).headSet(obj, z), this.f);
            }
            return synchronizedObject;
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            Object higher;
            synchronized (this.f) {
                higher = ((NavigableSet) super.c()).higher(obj);
            }
            return higher;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet
        /* renamed from: k */
        public final SortedSet c() {
            return (NavigableSet) super.c();
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            Object lower;
            synchronized (this.f) {
                lower = ((NavigableSet) super.c()).lower(obj);
            }
            return lower;
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            Object pollFirst;
            synchronized (this.f) {
                pollFirst = ((NavigableSet) super.c()).pollFirst();
            }
            return pollFirst;
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            Object pollLast;
            synchronized (this.f) {
                pollLast = ((NavigableSet) super.c()).pollLast();
            }
            return pollLast;
        }

        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableSet) super.c()).subSet(obj, z, obj2, z2), this.f);
            }
            return synchronizedObject;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [com.google.common.collect.Synchronized$SynchronizedObject, java.util.NavigableSet] */
        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            ?? synchronizedObject;
            synchronized (this.f) {
                synchronizedObject = new SynchronizedObject(((NavigableSet) super.c()).tailSet(obj, z), this.f);
            }
            return synchronizedObject;
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.Synchronized.SynchronizedSortedSet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }
}
