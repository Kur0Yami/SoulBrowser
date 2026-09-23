package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.AbstractMapBasedMultimap;
import com.google.common.collect.AbstractMultimap;
import com.google.common.collect.Collections2;
import com.google.common.collect.Iterators;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Multimaps {

    /* loaded from: classes3.dex */
    public static final class AsMap<K, V> extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        public final Multimap h;

        /* loaded from: classes3.dex */
        public final class EntrySet extends Maps.EntrySet<K, Collection<V>> {
            public EntrySet() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            public final Map a() {
                return AsMap.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                Multimap multimap = AsMap.this.h;
                Set keySet = multimap.keySet();
                Objects.requireNonNull(multimap);
                return new Maps.AnonymousClass3(keySet.iterator(), new f(6, multimap));
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AsMap.this.h.keySet().remove(entry.getKey());
                return true;
            }
        }

        public AsMap(Multimap multimap) {
            this.h = multimap;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new EntrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            this.h.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return this.h.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Multimap multimap = this.h;
            if (multimap.containsKey(obj)) {
                return multimap.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            return this.h.isEmpty();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return this.h.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Multimap multimap = this.h;
            if (multimap.containsKey(obj)) {
                return multimap.a(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.h.keySet().size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new AbstractMapBasedMultimap.AsMap(null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Set d() {
            return new AbstractMapBasedMultimap.KeySet(null);
        }

        @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap
        /* renamed from: f */
        public final Collection j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractListMultimap
        /* renamed from: j */
        public final List f() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class CustomMultimap<K, V> extends AbstractMapBasedMultimap<K, V> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new AbstractMapBasedMultimap.AsMap(null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Set d() {
            return new AbstractMapBasedMultimap.KeySet(null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        /* renamed from: f */
        public final Collection j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap
        public final Collection h(Collection collection, Object obj) {
            if (collection instanceof List) {
                List list = (List) collection;
                if (list instanceof RandomAccess) {
                    return new AbstractMapBasedMultimap.WrappedList(obj, list, null);
                }
                return new AbstractMapBasedMultimap.WrappedList(obj, list, null);
            }
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.WrappedNavigableSet(obj, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new AbstractMapBasedMultimap.WrappedSortedSet(obj, (SortedSet) collection, null);
            }
            if (collection instanceof Set) {
                return new AbstractMapBasedMultimap.WrappedSet(obj, (Set) collection);
            }
            return new AbstractMapBasedMultimap.WrappedCollection(obj, collection, null);
        }
    }

    /* loaded from: classes3.dex */
    public static final class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new AbstractMapBasedMultimap.AsMap(null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Set d() {
            return new AbstractMapBasedMultimap.KeySet(null);
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        /* renamed from: f */
        public final Collection j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public final Collection h(Collection collection, Object obj) {
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.WrappedNavigableSet(obj, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new AbstractMapBasedMultimap.WrappedSortedSet(obj, (SortedSet) collection, null);
            }
            return new AbstractMapBasedMultimap.WrappedSet(obj, (Set) collection);
        }

        @Override // com.google.common.collect.AbstractSetMultimap
        public final Set j() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class CustomSortedSetMultimap<K, V> extends AbstractSortedSetMultimap<K, V> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new AbstractMapBasedMultimap.AsMap(null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.AbstractMultimap
        public final Set d() {
            return new AbstractMapBasedMultimap.KeySet(null);
        }

        @Override // com.google.common.collect.AbstractSortedSetMultimap, com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        /* renamed from: f */
        public final Collection j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractSortedSetMultimap, com.google.common.collect.AbstractSetMultimap
        public final Set j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractSortedSetMultimap
        /* renamed from: k */
        public final SortedSet j() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Entries<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        public abstract Multimap a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().Z(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return a().remove(entry.getKey(), entry.getValue());
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return a().size();
        }
    }

    /* loaded from: classes3.dex */
    public static class Keys<K, V> extends AbstractMultiset<K> {

        /* renamed from: com.google.common.collect.Multimaps$Keys$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends TransformedIterator<Map.Entry<Object, Collection<Object>>, Multiset.Entry<Object>> {
            @Override // com.google.common.collect.TransformedIterator
            public final Object a(Object obj) {
                final Map.Entry entry = (Map.Entry) obj;
                return new Multisets.AbstractEntry<Object>() { // from class: com.google.common.collect.Multimaps.Keys.1.1
                    @Override // com.google.common.collect.Multiset.Entry
                    public final Object a() {
                        return entry.getKey();
                    }

                    @Override // com.google.common.collect.Multiset.Entry
                    public final int getCount() {
                        return ((Collection) entry.getValue()).size();
                    }
                };
            }
        }

        @Override // com.google.common.collect.Multiset
        public final int Q(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public int T(int i, Object obj) {
            CollectPreconditions.b(i, "occurrences");
            if (i == 0) {
                throw null;
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
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

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
        public final Set j() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultiset
        public final Iterator k() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class MapMultimap<K, V> extends AbstractMultimap<K, V> implements SetMultimap<K, V>, Serializable {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.collect.Multimaps$MapMultimap$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends Sets.ImprovedAbstractSet<Object> {

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Object f12370c;
            public final /* synthetic */ MapMultimap f;

            public AnonymousClass1(MapMultimap mapMultimap, Object obj) {
                this.f12370c = obj;
                this.f = mapMultimap;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                final Object obj = this.f12370c;
                return new Iterator<Object>(this) { // from class: com.google.common.collect.Multimaps.MapMultimap.1.1

                    /* renamed from: c, reason: collision with root package name */
                    public int f12371c;
                    public final /* synthetic */ AnonymousClass1 g;

                    {
                        this.g = this;
                    }

                    @Override // java.util.Iterator
                    public final boolean hasNext() {
                        if (this.f12371c != 0) {
                            return false;
                        }
                        this.g.f.getClass();
                        throw null;
                    }

                    @Override // java.util.Iterator
                    public final Object next() {
                        hasNext();
                        throw new NoSuchElementException();
                    }

                    @Override // java.util.Iterator
                    public final void remove() {
                        boolean z = true;
                        if (this.f12371c != 1) {
                            z = false;
                        }
                        CollectPreconditions.d(z);
                        this.f12371c = -1;
                        this.g.f.getClass();
                        throw null;
                    }
                };
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                this.f.getClass();
                throw null;
            }
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean Z(Object obj, Object obj2) {
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final /* bridge */ /* synthetic */ Collection a(Object obj) {
            a(obj);
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new AsMap(this);
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Collection c() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.Multimap
        public final void clear() {
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final boolean containsKey(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean containsValue(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Set d() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Iterator e() {
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final Collection get(Object obj) {
            return new AnonymousClass1(this, obj);
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final int hashCode() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final Collection i() {
            throw null;
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean remove(Object obj, Object obj2) {
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final int size() {
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final Set a(Object obj) {
            new HashSet(2);
            throw null;
        }

        @Override // com.google.common.collect.Multimap
        public final Set get(Object obj) {
            return new AnonymousClass1(this, obj);
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final Set i() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TransformedEntriesListMultimap<K, V1, V2> extends TransformedEntriesMultimap<K, V1, V2> implements ListMultimap<K, V2> {
        @Override // com.google.common.collect.Multimaps.TransformedEntriesMultimap
        public final Collection f(Collection collection, Object obj) {
            List list = (List) collection;
            g gVar = new g(this, obj, 0);
            if (list instanceof RandomAccess) {
                return new Lists.TransformingRandomAccessList(list, gVar);
            }
            return new Lists.TransformingSequentialList(list, gVar);
        }

        @Override // com.google.common.collect.Multimaps.TransformedEntriesMultimap, com.google.common.collect.Multimap
        public final List a(Object obj) {
            List list = (List) this.i.a(obj);
            g gVar = new g(this, obj, 0);
            if (list instanceof RandomAccess) {
                return new Lists.TransformingRandomAccessList(list, gVar);
            }
            return new Lists.TransformingSequentialList(list, gVar);
        }

        @Override // com.google.common.collect.Multimaps.TransformedEntriesMultimap, com.google.common.collect.Multimap
        public final List get(Object obj) {
            List list = (List) this.i.get(obj);
            g gVar = new g(this, obj, 0);
            if (list instanceof RandomAccess) {
                return new Lists.TransformingRandomAccessList(list, gVar);
            }
            return new Lists.TransformingSequentialList(list, gVar);
        }
    }

    /* loaded from: classes3.dex */
    public static class TransformedEntriesMultimap<K, V1, V2> extends AbstractMultimap<K, V2> {
        public final Multimap i;
        public final f j;

        public TransformedEntriesMultimap(ListMultimap listMultimap, f fVar) {
            listMultimap.getClass();
            this.i = listMultimap;
            this.j = fVar;
        }

        @Override // com.google.common.collect.Multimap
        public Collection a(Object obj) {
            return f(this.i.a(obj), obj);
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Map b() {
            return new Maps.TransformedEntriesMap(this.i.G(), new f(1, this));
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Collection c() {
            return new AbstractMultimap.Entries();
        }

        @Override // com.google.common.collect.Multimap
        public final void clear() {
            this.i.clear();
        }

        @Override // com.google.common.collect.Multimap
        public final boolean containsKey(Object obj) {
            return this.i.containsKey(obj);
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Set d() {
            return this.i.keySet();
        }

        @Override // com.google.common.collect.AbstractMultimap
        public final Iterator e() {
            return new Iterators.AnonymousClass6(this.i.i().iterator(), new f(0, this.j));
        }

        public Collection f(Collection collection, Object obj) {
            g gVar = new g(this, obj, 1);
            if (collection instanceof List) {
                List list = (List) collection;
                if (list instanceof RandomAccess) {
                    return new Lists.TransformingRandomAccessList(list, gVar);
                }
                return new Lists.TransformingSequentialList(list, gVar);
            }
            return new Collections2.TransformedCollection(collection, gVar);
        }

        @Override // com.google.common.collect.Multimap
        public Collection get(Object obj) {
            return f(this.i.get(obj), obj);
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean isEmpty() {
            return this.i.isEmpty();
        }

        @Override // com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
        public final boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        @Override // com.google.common.collect.Multimap
        public final int size() {
            return this.i.size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableListMultimap<K, V> extends UnmodifiableMultimap<K, V> implements ListMultimap<K, V> {
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Collection a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Collection get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Multimap e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final List a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final List get(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnmodifiableMultimap<K, V> extends ForwardingMultimap<K, V> implements Serializable {
        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Map G() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        /* renamed from: h0 */
        public Multimap e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection i() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Set keySet() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static class UnmodifiableSetMultimap<K, V> extends UnmodifiableMultimap<K, V> implements SetMultimap<K, V> {
        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public /* bridge */ /* synthetic */ Collection a(Object obj) {
            a(obj);
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap
        /* renamed from: h0 */
        public /* bridge */ /* synthetic */ Multimap e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Collection i() {
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Set i() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableSortedSetMultimap<K, V> extends UnmodifiableSetMultimap<K, V> implements SortedSetMultimap<K, V> {
        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Collection a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Collection get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Multimap e0() {
            return null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Set a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final Set get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final SortedSet a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.UnmodifiableSetMultimap, com.google.common.collect.Multimaps.UnmodifiableMultimap, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public final SortedSet get(Object obj) {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.ListMultimap, com.google.common.collect.Multimaps$TransformedEntriesMultimap] */
    public static ListMultimap a(ListMultimap listMultimap, com.google.common.net.a aVar) {
        return new TransformedEntriesMultimap(listMultimap, new f(5, aVar));
    }
}
