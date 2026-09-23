package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMultimap;
import com.google.common.collect.Maps;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractMultimap<K, V> implements Serializable {
    public transient int i;

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractMapBasedMultimap<Object, Object>.Itr<Object> {
    }

    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AbstractMapBasedMultimap<Object, Object>.Itr<Map.Entry<Object, Object>> {
    }

    /* loaded from: classes3.dex */
    public class AsMap extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        public final transient Map h;

        /* loaded from: classes3.dex */
        public final class AsMapEntries extends Maps.EntrySet<K, Collection<V>> {
            public AsMapEntries() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            public final Map a() {
                return AsMap.this;
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                return Collections2.c(AsMap.this.h.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new AsMapIterator();
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                entry.getKey();
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class AsMapIterator implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: c, reason: collision with root package name */
            public final Iterator f12235c;
            public Collection f;

            public AsMapIterator() {
                this.f12235c = AsMap.this.h.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f12235c.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.f12235c.next();
                this.f = (Collection) entry.getValue();
                return AsMap.this.d(entry);
            }

            @Override // java.util.Iterator
            public final void remove() {
                boolean z;
                if (this.f != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.m(z, "no calls to next() since the last call to remove()");
                this.f12235c.remove();
                AbstractMapBasedMultimap.this.i -= this.f.size();
                this.f.clear();
                this.f = null;
            }
        }

        public AsMap(SortedMap sortedMap) {
            this.h = sortedMap;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new AsMapEntries();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            if (this.h != null) {
                Iterators.b(new AsMapIterator());
            } else {
                AbstractMapBasedMultimap.this.clear();
                throw null;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            Map map = this.h;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        public final AbstractMap.SimpleImmutableEntry d(Map.Entry entry) {
            Object key = entry.getKey();
            return new AbstractMap.SimpleImmutableEntry(key, AbstractMapBasedMultimap.this.h((Collection) entry.getValue(), key));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(Object obj) {
            if (this != obj && !this.h.equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Collection collection = (Collection) Maps.f(this.h, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.h(collection, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.h.hashCode();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Collection collection = (Collection) this.h.remove(obj);
            if (collection == null) {
                return null;
            }
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Collection f = abstractMapBasedMultimap.f();
            f.addAll(collection);
            abstractMapBasedMultimap.i -= collection.size();
            collection.clear();
            return f;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.h.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.h.toString();
        }
    }

    /* loaded from: classes3.dex */
    public abstract class Itr<T> implements Iterator<T> {
        public Itr(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            throw null;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class KeySet extends Maps.KeySet<K, Collection<V>> {
        public KeySet(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterators.b(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return this.f12356c.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (this != obj && !this.f12356c.keySet().equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.f12356c.keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            final Iterator<Map.Entry<K, V>> it = this.f12356c.entrySet().iterator();
            return new Iterator<Object>(this) { // from class: com.google.common.collect.AbstractMapBasedMultimap.KeySet.1

                /* renamed from: c, reason: collision with root package name */
                public Map.Entry f12236c;
                public final /* synthetic */ KeySet g;

                {
                    this.g = this;
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public final Object next() {
                    Map.Entry entry = (Map.Entry) it.next();
                    this.f12236c = entry;
                    return entry.getKey();
                }

                @Override // java.util.Iterator
                public final void remove() {
                    boolean z;
                    if (this.f12236c != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.m(z, "no calls to next() since the last call to remove()");
                    Collection collection = (Collection) this.f12236c.getValue();
                    it.remove();
                    AbstractMapBasedMultimap.this.i -= collection.size();
                    collection.clear();
                    this.f12236c = null;
                }
            };
        }

        @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int i;
            Collection collection = (Collection) this.f12356c.remove(obj);
            if (collection != null) {
                i = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.this.i -= i;
            } else {
                i = 0;
            }
            if (i <= 0) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public final class NavigableAsMap extends AbstractMapBasedMultimap<K, V>.SortedAsMap implements NavigableMap<K, Collection<V>> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            throw null;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> ceilingEntry = g().ceilingEntry(obj);
            if (ceilingEntry == null) {
                return null;
            }
            return d(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return g().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* renamed from: e */
        public final SortedSet b() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* renamed from: f */
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            Map.Entry<K, V> firstEntry = g().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return d(firstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> floorEntry = g().floorEntry(obj);
            if (floorEntry == null) {
                return null;
            }
            return d(floorEntry);
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return g().floorKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public final NavigableMap g() {
            return (NavigableMap) ((SortedMap) this.h);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            Map.Entry<K, V> higherEntry = g().higherEntry(obj);
            if (higherEntry == null) {
                return null;
            }
            return d(higherEntry);
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return g().higherKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            Map.Entry<K, V> lastEntry = g().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return d(lastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> lowerEntry = g().lowerEntry(obj);
            if (lowerEntry == null) {
                return null;
            }
            return d(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return g().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            entrySet().iterator();
            throw null;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class NavigableKeySet extends AbstractMapBasedMultimap<K, V>.SortedKeySet implements NavigableSet<K> {
        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return c().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((KeySet) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            throw null;
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return c().floorKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public final NavigableMap c() {
            return (NavigableMap) ((SortedMap) this.f12356c);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return c().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return c().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            return Iterators.h(iterator());
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            return Iterators.h(descendingIterator());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            throw null;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            throw null;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class RandomAccessWrappedList extends AbstractMapBasedMultimap<K, V>.WrappedList implements RandomAccess {
    }

    /* loaded from: classes3.dex */
    public class SortedAsMap extends AbstractMapBasedMultimap<K, V>.AsMap implements SortedMap<K, Collection<V>> {
        public SortedSet j;

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return g().comparator();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public SortedSet b() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AsMap, com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public SortedSet keySet() {
            SortedSet sortedSet = this.j;
            if (sortedSet == null) {
                SortedSet b = b();
                this.j = b;
                return b;
            }
            return sortedSet;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return g().firstKey();
        }

        public SortedMap g() {
            return (SortedMap) this.h;
        }

        public SortedMap headMap(Object obj) {
            throw null;
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return g().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            throw null;
        }

        public SortedMap tailMap(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class SortedKeySet extends AbstractMapBasedMultimap<K, V>.KeySet implements SortedSet<K> {
        public SortedMap c() {
            return (SortedMap) this.f12356c;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return c().comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            return c().firstKey();
        }

        public SortedSet headSet(Object obj) {
            throw null;
        }

        @Override // java.util.SortedSet
        public final Object last() {
            return c().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            throw null;
        }

        public SortedSet tailSet(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class WrappedNavigableSet extends AbstractMapBasedMultimap<K, V>.WrappedSortedSet implements NavigableSet<V> {
        public WrappedNavigableSet(Object obj, NavigableSet navigableSet, WrappedCollection wrappedCollection) {
            super(obj, navigableSet, wrappedCollection);
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return i().ceiling(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return new WrappedCollection.WrappedIterator(i().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return m(i().descendingSet());
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return i().floor(obj);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return m(i().headSet(obj, z));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return i().higher(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.WrappedSortedSet
        /* renamed from: k, reason: merged with bridge method [inline-methods] */
        public final NavigableSet i() {
            return (NavigableSet) ((SortedSet) this.f);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return i().lower(obj);
        }

        public final NavigableSet m(NavigableSet navigableSet) {
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            return new WrappedNavigableSet(this.f12237c, navigableSet, wrappedCollection);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            return Iterators.h(iterator());
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            return Iterators.h(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return m(i().subSet(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return m(i().tailSet(obj, z));
        }
    }

    /* loaded from: classes3.dex */
    public final class WrappedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements Set<V> {
        public WrappedSet(Object obj, Set set) {
            super(obj, set, null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.WrappedCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean f = Sets.f((Set) this.f, collection);
            if (f) {
                AbstractMapBasedMultimap.this.i += this.f.size() - size;
                g();
            }
            return f;
        }
    }

    /* loaded from: classes3.dex */
    public class WrappedSortedSet extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements SortedSet<V> {
        public WrappedSortedSet(Object obj, SortedSet sortedSet, WrappedCollection wrappedCollection) {
            super(obj, sortedSet, wrappedCollection);
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return i().comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            c();
            return i().first();
        }

        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            c();
            SortedSet headSet = i().headSet(obj);
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            return new WrappedSortedSet(this.f12237c, headSet, wrappedCollection);
        }

        public SortedSet i() {
            return (SortedSet) this.f;
        }

        @Override // java.util.SortedSet
        public final Object last() {
            c();
            return i().last();
        }

        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            c();
            SortedSet subSet = i().subSet(obj, obj2);
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            return new WrappedSortedSet(this.f12237c, subSet, wrappedCollection);
        }

        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            c();
            SortedSet tailSet = i().tailSet(obj);
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            return new WrappedSortedSet(this.f12237c, tailSet, wrappedCollection);
        }
    }

    @Override // com.google.common.collect.Multimap
    public Collection a(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Map b() {
        return new AsMap(null);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection c() {
        if (this instanceof SetMultimap) {
            return new AbstractMultimap.Entries();
        }
        return new AbstractMultimap.Entries();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Set d() {
        return new KeySet(null);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public Iterator e() {
        new Itr(this);
        throw null;
    }

    public abstract Collection f();

    public Iterator g() {
        new Itr(this);
        throw null;
    }

    @Override // com.google.common.collect.Multimap
    public Collection get(Object obj) {
        throw null;
    }

    public Collection h(Collection collection, Object obj) {
        return new WrappedCollection(obj, collection, null);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.i;
    }

    /* loaded from: classes3.dex */
    public class WrappedList extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements List<V> {

        /* loaded from: classes3.dex */
        public final class WrappedListIterator extends AbstractMapBasedMultimap<K, V>.WrappedCollection.WrappedIterator implements ListIterator<V> {
            public WrappedListIterator() {
                super();
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                WrappedList wrappedList = WrappedList.this;
                boolean isEmpty = wrappedList.isEmpty();
                b().add(obj);
                AbstractMapBasedMultimap.this.i++;
                if (isEmpty) {
                    wrappedList.a();
                }
            }

            public final ListIterator b() {
                a();
                return (ListIterator) this.f12238c;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                b().set(obj);
            }

            public WrappedListIterator(int i) {
                super(((List) WrappedList.this.f).listIterator(i));
            }
        }

        public WrappedList(Object obj, List list, WrappedCollection wrappedCollection) {
            super(obj, list, wrappedCollection);
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            c();
            boolean isEmpty = this.f.isEmpty();
            ((List) this.f).add(i, obj);
            AbstractMapBasedMultimap.this.i++;
            if (isEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.f).addAll(i, collection);
            if (addAll) {
                AbstractMapBasedMultimap.this.i += this.f.size() - size;
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public final Object get(int i) {
            c();
            return ((List) this.f).get(i);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            c();
            return ((List) this.f).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            c();
            return ((List) this.f).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            c();
            return new WrappedListIterator();
        }

        @Override // java.util.List
        public final Object remove(int i) {
            c();
            Object remove = ((List) this.f).remove(i);
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            abstractMapBasedMultimap.i--;
            g();
            return remove;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            c();
            return ((List) this.f).set(i, obj);
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            c();
            List subList = ((List) this.f).subList(i, i2);
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            boolean z = subList instanceof RandomAccess;
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object obj = this.f12237c;
            if (z) {
                return new WrappedList(obj, subList, wrappedCollection);
            }
            return new WrappedList(obj, subList, wrappedCollection);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            c();
            return new WrappedListIterator(i);
        }
    }

    /* loaded from: classes3.dex */
    public class WrappedCollection extends AbstractCollection<V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12237c;
        public final Collection f;
        public final WrappedCollection g;
        public final Collection h;

        public WrappedCollection(Object obj, Collection collection, WrappedCollection wrappedCollection) {
            Collection collection2;
            this.f12237c = obj;
            this.f = collection;
            this.g = wrappedCollection;
            if (wrappedCollection == null) {
                collection2 = null;
            } else {
                collection2 = wrappedCollection.f;
            }
            this.h = collection2;
        }

        public final void a() {
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection != null) {
                wrappedCollection.a();
            } else {
                AbstractMapBasedMultimap.this.getClass();
                throw null;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            c();
            boolean isEmpty = this.f.isEmpty();
            boolean add = this.f.add(obj);
            if (add) {
                AbstractMapBasedMultimap.this.i++;
                if (isEmpty) {
                    a();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.f.addAll(collection);
            if (addAll) {
                AbstractMapBasedMultimap.this.i += this.f.size() - size;
                if (size == 0) {
                    a();
                }
            }
            return addAll;
        }

        public final void c() {
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection != null) {
                wrappedCollection.c();
                if (wrappedCollection.f != this.h) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f.isEmpty()) {
                    return;
                }
                AbstractMapBasedMultimap.this.getClass();
                throw null;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f.clear();
            AbstractMapBasedMultimap.this.i -= size;
            g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            c();
            return this.f.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            c();
            return this.f.containsAll(collection);
        }

        @Override // java.util.Collection
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            c();
            return this.f.equals(obj);
        }

        public final void g() {
            WrappedCollection wrappedCollection = this.g;
            if (wrappedCollection != null) {
                wrappedCollection.g();
            } else {
                if (!this.f.isEmpty()) {
                    return;
                }
                AbstractMapBasedMultimap.this.getClass();
                throw null;
            }
        }

        @Override // java.util.Collection
        public final int hashCode() {
            c();
            return this.f.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            c();
            return new WrappedIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            c();
            boolean remove = this.f.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                abstractMapBasedMultimap.i--;
                g();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.f.removeAll(collection);
            if (removeAll) {
                AbstractMapBasedMultimap.this.i += this.f.size() - size;
                g();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            int size = size();
            boolean retainAll = this.f.retainAll(collection);
            if (retainAll) {
                AbstractMapBasedMultimap.this.i += this.f.size() - size;
                g();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            c();
            return this.f.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            c();
            return this.f.toString();
        }

        /* loaded from: classes3.dex */
        public class WrappedIterator implements Iterator<V> {

            /* renamed from: c, reason: collision with root package name */
            public final Iterator f12238c;
            public final Collection f;

            public WrappedIterator() {
                Iterator it;
                Collection collection = WrappedCollection.this.f;
                this.f = collection;
                if (collection instanceof List) {
                    it = ((List) collection).listIterator();
                } else {
                    it = collection.iterator();
                }
                this.f12238c = it;
            }

            public final void a() {
                WrappedCollection wrappedCollection = WrappedCollection.this;
                wrappedCollection.c();
                if (wrappedCollection.f == this.f) {
                } else {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.f12238c.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                a();
                return this.f12238c.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.f12238c.remove();
                WrappedCollection wrappedCollection = WrappedCollection.this;
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                abstractMapBasedMultimap.i--;
                wrappedCollection.g();
            }

            public WrappedIterator(Iterator it) {
                this.f = WrappedCollection.this.f;
                this.f12238c = it;
            }
        }
    }
}
