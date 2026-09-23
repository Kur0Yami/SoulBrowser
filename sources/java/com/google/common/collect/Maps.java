package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.collect.Iterators;
import com.google.common.collect.MapDifference;
import com.google.common.collect.Sets;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Maps {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.Maps$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends TransformedIterator<Map.Entry<Object, Object>, Object> {
        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return ((Map.Entry) obj).getKey();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.Maps$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends TransformedIterator<Map.Entry<Object, Object>, Object> {
        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return ((Map.Entry) obj).getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends TransformedIterator<Object, Map.Entry<Object, Object>> {
        public final /* synthetic */ Function f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Iterator it, Function function) {
            super(it);
            this.f = function;
        }

        @Override // com.google.common.collect.TransformedIterator
        public final Object a(Object obj) {
            return new AbstractMap.SimpleImmutableEntry(obj, this.f.apply(obj));
        }
    }

    /* renamed from: com.google.common.collect.Maps$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends ForwardingSortedSet<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SortedSet f12343c;

        public AnonymousClass5(SortedSet sortedSet) {
            this.f12343c = sortedSet;
        }

        @Override // com.google.common.collect.ForwardingSortedSet
        /* renamed from: B0 */
        public final SortedSet e0() {
            return this.f12343c;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return this.f12343c;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return this.f12343c;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return new AnonymousClass5(super.headSet(obj));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new AnonymousClass5(super.subSet(obj, obj2));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new AnonymousClass5(super.tailSet(obj));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return this.f12343c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.Maps$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 extends AbstractMapEntry<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Map.Entry f12345c;

        public AnonymousClass7(Map.Entry entry) {
            this.f12345c = entry;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12345c.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f12345c.getValue();
        }
    }

    /* renamed from: com.google.common.collect.Maps$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 extends UnmodifiableIterator<Map.Entry<Object, Object>> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Iterator f12346c;

        public AnonymousClass8(Iterator it) {
            this.f12346c = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f12346c.hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            Map.Entry entry = (Map.Entry) this.f12346c.next();
            entry.getClass();
            return new AnonymousClass7(entry);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.collect.Maps$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 extends AbstractMapEntry<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Map.Entry f12347c;
        public final /* synthetic */ EntryTransformer f;

        public AnonymousClass9(Map.Entry entry, EntryTransformer entryTransformer) {
            this.f12347c = entry;
            this.f = entryTransformer;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12347c.getKey();
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            Map.Entry entry = this.f12347c;
            return this.f.a(entry.getKey(), entry.getValue());
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractFilteredMap<K, V> extends ViewCachingAbstractMap<K, V> {
        public final Map h;
        public final Predicate i;

        public AbstractFilteredMap(Map map, Predicate predicate) {
            this.h = map;
            this.i = predicate;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Collection c() {
            return new FilteredMapValues(this, this.h, this.i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map map = this.h;
            if (map.containsKey(obj) && d(obj, map.get(obj))) {
                return true;
            }
            return false;
        }

        public final boolean d(Object obj, Object obj2) {
            return this.i.apply(new AbstractMap.SimpleImmutableEntry(obj, obj2));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Object obj2 = this.h.get(obj);
            if (obj2 != null && d(obj, obj2)) {
                return obj2;
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            Preconditions.d(d(obj, obj2));
            return this.h.put(obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void putAll(Map map) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                Preconditions.d(d(entry.getKey(), entry.getValue()));
            }
            this.h.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            if (containsKey(obj)) {
                return this.h.remove(obj);
            }
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static class AsMapView<K, V> extends ViewCachingAbstractMap<K, V> {
        public final Set h;
        public final Function i;

        public AsMapView(Set set, Function function) {
            set.getClass();
            this.h = set;
            function.getClass();
            this.i = function;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new EntrySet<Object, Object>() { // from class: com.google.common.collect.Maps.AsMapView.1EntrySetImpl
                @Override // com.google.common.collect.Maps.EntrySet
                public final Map a() {
                    return AsMapView.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    AsMapView asMapView = AsMapView.this;
                    Set d = asMapView.d();
                    return new AnonymousClass3(d.iterator(), asMapView.i);
                }
            };
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            final Set d = d();
            return new ForwardingSet<Object>() { // from class: com.google.common.collect.Maps.4
                @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
                public final boolean add(Object obj) {
                    throw new UnsupportedOperationException();
                }

                @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
                public final boolean addAll(Collection collection) {
                    throw new UnsupportedOperationException();
                }

                @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
                public final Object e0() {
                    return d;
                }

                @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
                /* renamed from: h0 */
                public final Collection e0() {
                    return d;
                }

                @Override // com.google.common.collect.ForwardingSet
                /* renamed from: y0 */
                public final Set e0() {
                    return d;
                }
            };
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Collection c() {
            return new Collections2.TransformedCollection(this.h, this.i);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            d().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return d().contains(obj);
        }

        public Set d() {
            return this.h;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            if (Collections2.c(d(), obj)) {
                return this.i.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            if (d().remove(obj)) {
                return this.i.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return d().size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class BiMapConverter<A, B> extends Converter<A, B> implements Serializable {
        @Override // com.google.common.base.Converter
        public final Object b(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof BiMapConverter)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Maps.asConverter(null)";
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static abstract class DescendingMap<K, V> extends ForwardingMap<K, V> implements NavigableMap<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public transient Ordering f12349c;
        public transient Set f;
        public transient NavigableSet g;

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            return s0().floorEntry(obj);
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return s0().floorKey(obj);
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            Ordering ordering = this.f12349c;
            if (ordering == null) {
                Comparator<? super K> comparator = s0().comparator();
                if (comparator == null) {
                    comparator = NaturalOrdering.g;
                }
                Ordering g = Ordering.b(comparator).g();
                this.f12349c = g;
                return g;
            }
            return ordering;
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return s0().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return s0();
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return s0();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set entrySet() {
            Set set = this.f;
            if (set == null) {
                EntrySet<Object, Object> entrySet = new EntrySet<Object, Object>() { // from class: com.google.common.collect.Maps.DescendingMap.1EntrySetImpl
                    @Override // com.google.common.collect.Maps.EntrySet
                    public final Map a() {
                        return DescendingMap.this;
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                    public final Iterator iterator() {
                        return DescendingMap.this.n0();
                    }
                };
                this.f = entrySet;
                return entrySet;
            }
            return set;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            return s0().lastEntry();
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return s0().lastKey();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            return s0().ceilingEntry(obj);
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return s0().ceilingKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap
        /* renamed from: h0 */
        public final Map e0() {
            return s0();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return s0().tailMap(obj, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            return s0().lowerEntry(obj);
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return s0().lowerKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            return s0().firstEntry();
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return s0().firstKey();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            return s0().higherEntry(obj);
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return s0().higherKey(obj);
        }

        public abstract Iterator n0();

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.NavigableSet, com.google.common.collect.Maps$KeySet] */
        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            NavigableSet navigableSet = this.g;
            if (navigableSet == null) {
                ?? keySet = new KeySet(this);
                this.g = keySet;
                return keySet;
            }
            return navigableSet;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return s0().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return s0().pollFirstEntry();
        }

        public abstract NavigableMap s0();

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return s0().subMap(obj2, z2, obj, z).descendingMap();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return s0().headMap(obj, z).descendingMap();
        }

        @Override // com.google.common.collect.ForwardingObject
        public final String toString() {
            return Maps.g(this);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Collection values() {
            return new Values(this);
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

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class EntryFunction implements Function<Map.Entry<?, ?>, Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12351c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ EntryFunction[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.Maps$EntryFunction$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.Maps$EntryFunction$2] */
        static {
            ?? r0 = new EntryFunction() { // from class: com.google.common.collect.Maps.EntryFunction.1
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ((Map.Entry) obj).getKey();
                }
            };
            f12351c = r0;
            ?? r1 = new EntryFunction() { // from class: com.google.common.collect.Maps.EntryFunction.2
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ((Map.Entry) obj).getValue();
                }
            };
            f = r1;
            g = new EntryFunction[]{r0, r1};
        }

        public static EntryFunction valueOf(String str) {
            return (EntryFunction) Enum.valueOf(EntryFunction.class, str);
        }

        public static EntryFunction[] values() {
            return (EntryFunction[]) g.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class EntrySet<K, V> extends Sets.ImprovedAbstractSet<Map.Entry<K, V>> {
        public abstract Map a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object f = Maps.f(a(), key);
                if (Objects.equals(f, entry.getValue())) {
                    if (f != null || a().containsKey(key)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            try {
                collection.getClass();
                return Sets.f(this, collection);
            } catch (UnsupportedOperationException unused) {
                return Sets.g(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            try {
                collection.getClass();
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet(Maps.c(collection.size()));
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSet.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }
    }

    /* loaded from: classes3.dex */
    public interface EntryTransformer<K, V1, V2> {
        Object a(Object obj, Object obj2);
    }

    /* loaded from: classes3.dex */
    public static final class FilteredEntryBiMap<K, V> extends FilteredEntryMap<K, V> implements BiMap<K, V> {
        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Collection values() {
            throw null;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set values() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class FilteredEntryMap<K, V> extends AbstractFilteredMap<K, V> {
        public final Set j;

        /* loaded from: classes3.dex */
        public final class EntrySet extends ForwardingSet<Map.Entry<K, V>> {
            public EntrySet() {
            }

            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public final Object e0() {
                return FilteredEntryMap.this.j;
            }

            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
            /* renamed from: h0 */
            public final Collection e0() {
                return FilteredEntryMap.this.j;
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new TransformedIterator<Map.Entry<Object, Object>, Map.Entry<Object, Object>>(FilteredEntryMap.this.j.iterator()) { // from class: com.google.common.collect.Maps.FilteredEntryMap.EntrySet.1
                    @Override // com.google.common.collect.TransformedIterator
                    public final Object a(Object obj) {
                        final Map.Entry entry = (Map.Entry) obj;
                        return new ForwardingMapEntry<Object, Object>(this) { // from class: com.google.common.collect.Maps.FilteredEntryMap.EntrySet.1.1
                            public final /* synthetic */ AnonymousClass1 f;

                            {
                                this.f = this;
                            }

                            @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                            public final Object e0() {
                                return entry;
                            }

                            @Override // com.google.common.collect.ForwardingMapEntry
                            /* renamed from: h0 */
                            public final Map.Entry e0() {
                                return entry;
                            }

                            @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                            public final Object setValue(Object obj2) {
                                Preconditions.d(FilteredEntryMap.this.d(getKey(), obj2));
                                return super.setValue(obj2);
                            }
                        };
                    }
                };
            }

            @Override // com.google.common.collect.ForwardingSet
            /* renamed from: y0 */
            public final Set e0() {
                return FilteredEntryMap.this.j;
            }
        }

        /* loaded from: classes3.dex */
        public class KeySet extends KeySet<K, V> {
            public KeySet() {
                super(FilteredEntryMap.this);
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                FilteredEntryMap filteredEntryMap = FilteredEntryMap.this;
                if (filteredEntryMap.containsKey(obj)) {
                    filteredEntryMap.h.remove(obj);
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean removeAll(Collection collection) {
                FilteredEntryMap filteredEntryMap = FilteredEntryMap.this;
                return FilteredEntryMap.e(filteredEntryMap.h, filteredEntryMap.i, collection);
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean retainAll(Collection collection) {
                FilteredEntryMap filteredEntryMap = FilteredEntryMap.this;
                return FilteredEntryMap.f(filteredEntryMap.h, filteredEntryMap.i, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final Object[] toArray() {
                return Lists.a(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final Object[] toArray(Object[] objArr) {
                return Lists.a(iterator()).toArray(objArr);
            }
        }

        public FilteredEntryMap(Map map, Predicate predicate) {
            super(map, predicate);
            this.j = Sets.d(map.entrySet(), this.i);
        }

        public static boolean e(Map map, Predicate predicate, Collection collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public static boolean f(Map map, Predicate predicate, Collection collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new EntrySet();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public Set b() {
            return new KeySet();
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class FilteredEntryNavigableMap<K, V> extends AbstractNavigableMap<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final NavigableMap f12354c;
        public final Predicate f;
        public final Map g;

        public FilteredEntryNavigableMap(NavigableMap navigableMap, Predicate predicate) {
            navigableMap.getClass();
            this.f12354c = navigableMap;
            this.f = predicate;
            this.g = new FilteredEntryMap(navigableMap, predicate);
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            return Iterators.d(this.f12354c.entrySet().iterator(), this.f);
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        public final Iterator b() {
            return Iterators.d(this.f12354c.descendingMap().entrySet().iterator(), this.f);
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public final void clear() {
            ((AbstractMap) this.g).clear();
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return this.f12354c.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return ((AbstractFilteredMap) this.g).containsKey(obj);
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return Maps.d(this.f12354c.descendingMap(), this.f);
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public final Set entrySet() {
            return ((ViewCachingAbstractMap) this.g).entrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            return ((AbstractFilteredMap) this.g).get(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return Maps.d(this.f12354c.headMap(obj, z), this.f);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            return !Iterables.a(this.f12354c.entrySet(), this.f);
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return new NavigableKeySet<Object, Object>(this) { // from class: com.google.common.collect.Maps.FilteredEntryNavigableMap.1
                @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public final boolean removeAll(Collection collection) {
                    FilteredEntryNavigableMap filteredEntryNavigableMap = FilteredEntryNavigableMap.this;
                    return FilteredEntryMap.e(filteredEntryNavigableMap.f12354c, filteredEntryNavigableMap.f, collection);
                }

                @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public final boolean retainAll(Collection collection) {
                    FilteredEntryNavigableMap filteredEntryNavigableMap = FilteredEntryNavigableMap.this;
                    return FilteredEntryMap.f(filteredEntryNavigableMap.f12354c, filteredEntryNavigableMap.f, collection);
                }
            };
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return (Map.Entry) Iterables.d(this.f12354c.entrySet(), this.f);
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return (Map.Entry) Iterables.d(this.f12354c.descendingMap().entrySet(), this.f);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            return ((AbstractFilteredMap) this.g).put(obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void putAll(Map map) {
            ((AbstractFilteredMap) this.g).putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            return ((AbstractFilteredMap) this.g).remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return ((AbstractMap) this.g).size();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return Maps.d(this.f12354c.subMap(obj, z, obj2, z2), this.f);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return Maps.d(this.f12354c.tailMap(obj, z), this.f);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public final Collection values() {
            return new FilteredMapValues(this, this.f12354c, this.f);
        }
    }

    /* loaded from: classes3.dex */
    public static final class FilteredEntrySortedMap<K, V> extends FilteredEntryMap<K, V> implements SortedMap<K, V> {

        /* loaded from: classes3.dex */
        public final class SortedKeySet extends FilteredEntryMap<K, V>.KeySet implements SortedSet<K> {
            public SortedKeySet() {
                super();
            }

            @Override // java.util.SortedSet
            public final Comparator comparator() {
                return ((SortedMap) FilteredEntrySortedMap.this.h).comparator();
            }

            @Override // java.util.SortedSet
            public final Object first() {
                return FilteredEntrySortedMap.this.firstKey();
            }

            @Override // java.util.SortedSet
            public final SortedSet headSet(Object obj) {
                return (SortedSet) ((FilteredEntrySortedMap) FilteredEntrySortedMap.this.headMap(obj)).keySet();
            }

            @Override // java.util.SortedSet
            public final Object last() {
                return FilteredEntrySortedMap.this.lastKey();
            }

            @Override // java.util.SortedSet
            public final SortedSet subSet(Object obj, Object obj2) {
                return (SortedSet) ((FilteredEntrySortedMap) FilteredEntrySortedMap.this.subMap(obj, obj2)).keySet();
            }

            @Override // java.util.SortedSet
            public final SortedSet tailSet(Object obj) {
                return (SortedSet) ((FilteredEntrySortedMap) FilteredEntrySortedMap.this.tailMap(obj)).keySet();
            }
        }

        @Override // com.google.common.collect.Maps.FilteredEntryMap, com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            return new SortedKeySet();
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return ((SortedMap) this.h).comparator();
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return ((SortedSet) super.keySet()).iterator().next();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.Maps$FilteredEntryMap, java.util.SortedMap] */
        @Override // java.util.SortedMap
        public final SortedMap headMap(Object obj) {
            return new FilteredEntryMap(((SortedMap) this.h).headMap(obj), this.i);
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            Map map = this.h;
            SortedMap<K, V> sortedMap = (SortedMap) map;
            while (true) {
                K lastKey = sortedMap.lastKey();
                if (d(lastKey, map.get(lastKey))) {
                    return lastKey;
                }
                sortedMap = ((SortedMap) map).headMap(lastKey);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.Maps$FilteredEntryMap, java.util.SortedMap] */
        @Override // java.util.SortedMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return new FilteredEntryMap(((SortedMap) this.h).subMap(obj, obj2), this.i);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.Maps$FilteredEntryMap, java.util.SortedMap] */
        @Override // java.util.SortedMap
        public final SortedMap tailMap(Object obj) {
            return new FilteredEntryMap(((SortedMap) this.h).tailMap(obj), this.i);
        }
    }

    /* loaded from: classes3.dex */
    public static final class FilteredKeyMap<K, V> extends AbstractFilteredMap<K, V> {
        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return Sets.d(this.h.entrySet(), this.i);
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            return Sets.d(this.h.keySet(), null);
        }

        @Override // com.google.common.collect.Maps.AbstractFilteredMap, java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            if (!this.h.containsKey(obj)) {
                return false;
            }
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class FilteredMapValues<K, V> extends Values<K, V> {
        public final Map f;
        public final Predicate g;

        public FilteredMapValues(AbstractMap abstractMap, Map map, Predicate predicate) {
            super(abstractMap);
            this.f = map;
            this.g = predicate;
        }

        @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            Iterator<Map.Entry<K, V>> it = this.f.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.g.apply(next) && Objects.equals(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            Iterator<Map.Entry<K, V>> it = this.f.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.g.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            Iterator<Map.Entry<K, V>> it = this.f.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.g.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
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
    public static abstract class IteratorBasedAbstractMap<K, V> extends AbstractMap<K, V> {
        public abstract Iterator a();

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.b(a());
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set entrySet() {
            return new EntrySet<Object, Object>() { // from class: com.google.common.collect.Maps.IteratorBasedAbstractMap.1
                @Override // com.google.common.collect.Maps.EntrySet
                public final Map a() {
                    return IteratorBasedAbstractMap.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public final Iterator iterator() {
                    return IteratorBasedAbstractMap.this.a();
                }
            };
        }
    }

    /* loaded from: classes3.dex */
    public static class KeySet<K, V> extends Sets.ImprovedAbstractSet<K> {

        /* renamed from: c, reason: collision with root package name */
        public final Map f12356c;

        public KeySet(Map map) {
            map.getClass();
            this.f12356c = map;
        }

        public Map a() {
            return this.f12356c;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new TransformedIterator(a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                a().remove(obj);
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return a().size();
        }
    }

    /* loaded from: classes3.dex */
    public static class MapDifferenceImpl<K, V> implements MapDifference<K, V> {
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof MapDifference)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            return Objects.hash(null, null, null, null);
        }

        public final String toString() {
            throw null;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class NavigableAsMapView<K, V> extends AbstractNavigableMap<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final NavigableSet f12357c;

        public NavigableAsMapView(NavigableSet navigableSet) {
            navigableSet.getClass();
            this.f12357c = navigableSet;
            throw null;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            return new AnonymousClass3(this.f12357c.iterator(), null);
        }

        @Override // com.google.common.collect.AbstractNavigableMap
        public final Iterator b() {
            descendingMap();
            throw null;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public final void clear() {
            this.f12357c.clear();
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return this.f12357c.comparator();
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final NavigableMap descendingMap() {
            new NavigableAsMapView(this.f12357c.descendingSet());
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            if (!Collections2.c(this.f12357c, obj)) {
                return null;
            }
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            new NavigableAsMapView(this.f12357c.headSet(obj, z));
            throw null;
        }

        @Override // com.google.common.collect.AbstractNavigableMap, java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return new AnonymousClass6(this.f12357c);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.f12357c.size();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            new NavigableAsMapView(this.f12357c.subSet(obj, z, obj2, z2));
            throw null;
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            new NavigableAsMapView(this.f12357c.tailSet(obj, z));
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SortedAsMapView<K, V> extends AsMapView<K, V> implements SortedMap<K, V> {
        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return ((SortedSet) this.h).comparator();
        }

        @Override // com.google.common.collect.Maps.AsMapView
        public final Set d() {
            return (SortedSet) this.h;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return ((SortedSet) this.h).first();
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.SortedMap, com.google.common.collect.Maps$AsMapView] */
        @Override // java.util.SortedMap
        public final SortedMap headMap(Object obj) {
            return new AsMapView(((SortedSet) this.h).headSet(obj), this.i);
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return new AnonymousClass5((SortedSet) this.h);
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return ((SortedSet) this.h).last();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.SortedMap, com.google.common.collect.Maps$AsMapView] */
        @Override // java.util.SortedMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return new AsMapView(((SortedSet) this.h).subSet(obj, obj2), this.i);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.SortedMap, com.google.common.collect.Maps$AsMapView] */
        @Override // java.util.SortedMap
        public final SortedMap tailMap(Object obj) {
            return new AsMapView(((SortedSet) this.h).tailSet(obj), this.i);
        }
    }

    /* loaded from: classes3.dex */
    public static class SortedKeySet<K, V> extends KeySet<K, V> implements SortedSet<K> {
        @Override // com.google.common.collect.Maps.KeySet
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedMap a() {
            return (SortedMap) this.f12356c;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return a().comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            return a().firstKey();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Maps$KeySet] */
        public SortedSet headSet(Object obj) {
            return new KeySet(a().headMap(obj));
        }

        @Override // java.util.SortedSet
        public final Object last() {
            return a().lastKey();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Maps$KeySet] */
        public SortedSet subSet(Object obj, Object obj2) {
            return new KeySet(a().subMap(obj, obj2));
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Maps$KeySet] */
        public SortedSet tailSet(Object obj) {
            return new KeySet(a().tailMap(obj));
        }
    }

    /* loaded from: classes3.dex */
    public static final class SortedMapDifferenceImpl<K, V> extends MapDifferenceImpl<K, V> implements SortedMapDifference<K, V> {
    }

    /* loaded from: classes3.dex */
    public static class TransformedEntriesMap<K, V1, V2> extends IteratorBasedAbstractMap<K, V2> {

        /* renamed from: c, reason: collision with root package name */
        public final Map f12358c;
        public final EntryTransformer f;

        public TransformedEntriesMap(Map map, EntryTransformer entryTransformer) {
            map.getClass();
            this.f12358c = map;
            entryTransformer.getClass();
            this.f = entryTransformer;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            Iterator it = this.f12358c.entrySet().iterator();
            EntryTransformer entryTransformer = this.f;
            entryTransformer.getClass();
            return new Iterators.AnonymousClass6(it, new f(0, entryTransformer));
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public final void clear() {
            this.f12358c.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return this.f12358c.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Map map = this.f12358c;
            Object obj2 = map.get(obj);
            if (obj2 == null && !map.containsKey(obj)) {
                return null;
            }
            return this.f.a(obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return this.f12358c.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Map map = this.f12358c;
            if (map.containsKey(obj)) {
                return this.f.a(obj, map.remove(obj));
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.f12358c.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Collection values() {
            return new Values(this);
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class TransformedEntriesNavigableMap<K, V1, V2> extends TransformedEntriesSortedMap<K, V1, V2> implements NavigableMap<K, V2> {
        @Override // com.google.common.collect.Maps.TransformedEntriesSortedMap
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final NavigableMap b() {
            return (NavigableMap) ((SortedMap) this.f12358c);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            return d(b().ceilingEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return b().ceilingKey(obj);
        }

        public final Map.Entry d(Map.Entry entry) {
            if (entry == null) {
                return null;
            }
            EntryTransformer entryTransformer = this.f;
            entryTransformer.getClass();
            return new AnonymousClass9(entry, entryTransformer);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return b().descendingKeySet();
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return new TransformedEntriesMap(b().descendingMap(), this.f);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            return d(b().firstEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            return d(b().floorEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return b().floorKey(obj);
        }

        @Override // com.google.common.collect.Maps.TransformedEntriesSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            return d(b().higherEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return b().higherKey(obj);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            return d(b().lastEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            return d(b().lowerEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return b().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return b().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return d(b().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return d(b().pollLastEntry());
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return new TransformedEntriesMap(b().subMap(obj, z, obj2, z2), this.f);
        }

        @Override // com.google.common.collect.Maps.TransformedEntriesSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return new TransformedEntriesMap(b().headMap(obj, z), this.f);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.NavigableMap] */
        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return new TransformedEntriesMap(b().tailMap(obj, z), this.f);
        }

        @Override // com.google.common.collect.Maps.TransformedEntriesSortedMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }
    }

    /* loaded from: classes3.dex */
    public static class TransformedEntriesSortedMap<K, V1, V2> extends TransformedEntriesMap<K, V1, V2> implements SortedMap<K, V2> {
        public SortedMap b() {
            return (SortedMap) this.f12358c;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return b().firstKey();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.SortedMap] */
        public SortedMap headMap(Object obj) {
            return new TransformedEntriesMap(b().headMap(obj), this.f);
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return b().lastKey();
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.SortedMap] */
        public SortedMap subMap(Object obj, Object obj2) {
            return new TransformedEntriesMap(b().subMap(obj, obj2), this.f);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.Maps$TransformedEntriesMap, java.util.SortedMap] */
        public SortedMap tailMap(Object obj) {
            return new TransformedEntriesMap(b().tailMap(obj), this.f);
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableBiMap<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public transient Set f12359c;

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingMap
        /* renamed from: h0 */
        public final Map e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set values() {
            Set set = this.f12359c;
            set.getClass();
            return set;
        }
    }

    /* loaded from: classes3.dex */
    public static class UnmodifiableEntries<K, V> extends ForwardingCollection<Map.Entry<K, V>> {
        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            return ObjectArrays.c(this, objArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            return n0();
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnmodifiableEntrySet<K, V> extends UnmodifiableEntries<K, V> implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.b(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.e(this);
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class UnmodifiableNavigableMap<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final NavigableMap f12360c;
        public transient UnmodifiableNavigableMap f;

        public UnmodifiableNavigableMap(NavigableMap navigableMap) {
            this.f12360c = navigableMap;
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            return Maps.a(this.f12360c.ceilingEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return this.f12360c.ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return Sets.h(this.f12360c.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            UnmodifiableNavigableMap unmodifiableNavigableMap = this.f;
            if (unmodifiableNavigableMap == null) {
                UnmodifiableNavigableMap unmodifiableNavigableMap2 = new UnmodifiableNavigableMap(this.f12360c.descendingMap(), this);
                this.f = unmodifiableNavigableMap2;
                return unmodifiableNavigableMap2;
            }
            return unmodifiableNavigableMap;
        }

        @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return DesugarCollections.unmodifiableSortedMap(this.f12360c);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            return Maps.a(this.f12360c.firstEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            return Maps.a(this.f12360c.floorEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return this.f12360c.floorKey(obj);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap
        /* renamed from: h0 */
        public final Map e0() {
            return DesugarCollections.unmodifiableSortedMap(this.f12360c);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            return Maps.a(this.f12360c.higherEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return this.f12360c.higherKey(obj);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public final Set keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            return Maps.a(this.f12360c.lastEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            return Maps.a(this.f12360c.lowerEntry(obj));
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return this.f12360c.lowerKey(obj);
        }

        @Override // com.google.common.collect.ForwardingSortedMap
        /* renamed from: n0 */
        public final SortedMap e0() {
            return DesugarCollections.unmodifiableSortedMap(this.f12360c);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return Sets.h(this.f12360c.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            NavigableMap<K, V> headMap = this.f12360c.headMap(obj, z);
            headMap.getClass();
            return headMap instanceof UnmodifiableNavigableMap ? headMap : new UnmodifiableNavigableMap(headMap);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            NavigableMap<K, V> subMap = this.f12360c.subMap(obj, z, obj2, z2);
            subMap.getClass();
            return subMap instanceof UnmodifiableNavigableMap ? subMap : new UnmodifiableNavigableMap(subMap);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            NavigableMap<K, V> tailMap = this.f12360c.tailMap(obj, z);
            tailMap.getClass();
            return tailMap instanceof UnmodifiableNavigableMap ? tailMap : new UnmodifiableNavigableMap(tailMap);
        }

        public UnmodifiableNavigableMap(NavigableMap navigableMap, UnmodifiableNavigableMap unmodifiableNavigableMap) {
            this.f12360c = navigableMap;
            this.f = unmodifiableNavigableMap;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ValueDifferenceImpl<V> implements MapDifference.ValueDifference<V> {
        public final boolean equals(Object obj) {
            if (obj instanceof MapDifference.ValueDifference) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(null, null);
        }

        public final String toString() {
            return "(null, null)";
        }
    }

    /* loaded from: classes3.dex */
    public static class Values<K, V> extends AbstractCollection<V> {

        /* renamed from: c, reason: collision with root package name */
        public final Map f12361c;

        public Values(Map map) {
            this.f12361c = map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.f12361c.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f12361c.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return this.f12361c.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new TransformedIterator(this.f12361c.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                Map map = this.f12361c;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (Objects.equals(obj, entry.getValue())) {
                        map.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            try {
                collection.getClass();
                return super.removeAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                Map map = this.f12361c;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return map.keySet().removeAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            try {
                collection.getClass();
                return super.retainAll(collection);
            } catch (UnsupportedOperationException unused) {
                HashSet hashSet = new HashSet();
                Map map = this.f12361c;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSet.add(entry.getKey());
                    }
                }
                return map.keySet().retainAll(hashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.f12361c.size();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewCachingAbstractMap<K, V> extends AbstractMap<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public transient Set f12362c;
        public transient Set f;
        public transient Collection g;

        public abstract Set a();

        public Set b() {
            return new KeySet(this);
        }

        public Collection c() {
            return new Values(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set entrySet() {
            Set set = this.f12362c;
            if (set == null) {
                Set a2 = a();
                this.f12362c = a2;
                return a2;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set keySet() {
            Set set = this.f;
            if (set == null) {
                Set b = b();
                this.f = b;
                return b;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection values() {
            Collection collection = this.g;
            if (collection == null) {
                Collection c2 = c();
                this.g = c2;
                return c2;
            }
            return collection;
        }
    }

    public static Map.Entry a(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return new AnonymousClass7(entry);
    }

    public static Map b(Set set, Function function) {
        return new AsMapView(set, function);
    }

    public static int c(int i) {
        if (i < 3) {
            CollectPreconditions.b(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) Math.ceil(i / 0.75d);
        }
        return Integer.MAX_VALUE;
    }

    public static NavigableMap d(NavigableMap navigableMap, Predicate predicate) {
        predicate.getClass();
        if (navigableMap instanceof FilteredEntryNavigableMap) {
            FilteredEntryNavigableMap filteredEntryNavigableMap = (FilteredEntryNavigableMap) navigableMap;
            return new FilteredEntryNavigableMap(filteredEntryNavigableMap.f12354c, Predicates.b(filteredEntryNavigableMap.f, predicate));
        }
        navigableMap.getClass();
        return new FilteredEntryNavigableMap(navigableMap, predicate);
    }

    public static Object e(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static Object f(Map map, Object obj) {
        map.getClass();
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static String g(Map map) {
        int size = map.size();
        CollectPreconditions.b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public static Map h(Map map, Function function) {
        function.getClass();
        return new TransformedEntriesMap(map, new f(4, function));
    }

    /* renamed from: com.google.common.collect.Maps$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 extends ForwardingNavigableSet<Object> {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NavigableSet f12344c;

        public AnonymousClass6(NavigableSet navigableSet) {
            this.f12344c = navigableSet;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet
        /* renamed from: B0 */
        public final SortedSet e0() {
            return this.f12344c;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet
        /* renamed from: C0 */
        public final NavigableSet e0() {
            return this.f12344c;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return new AnonymousClass6(super.descendingSet());
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return this.f12344c;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final Collection e0() {
            return this.f12344c;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return new AnonymousClass5(super.headSet(obj));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new AnonymousClass5(super.subSet(obj, obj2));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new AnonymousClass5(super.tailSet(obj));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return this.f12344c;
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return new AnonymousClass6(super.headSet(obj, z));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new AnonymousClass6(super.subSet(obj, z, obj2, z2));
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return new AnonymousClass6(super.tailSet(obj, z));
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class NavigableKeySet<K, V> extends SortedKeySet<K, V> implements NavigableSet<K> {
        @Override // com.google.common.collect.Maps.SortedKeySet, com.google.common.collect.Maps.KeySet
        public final Map a() {
            return (NavigableMap) this.f12356c;
        }

        @Override // com.google.common.collect.Maps.SortedKeySet
        /* renamed from: c */
        public final SortedMap a() {
            return (NavigableMap) this.f12356c;
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return ((NavigableMap) this.f12356c).ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return ((NavigableMap) this.f12356c).descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return ((NavigableMap) this.f12356c).floorKey(obj);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return ((NavigableMap) this.f12356c).headMap(obj, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return ((NavigableMap) this.f12356c).higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return ((NavigableMap) this.f12356c).lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            return Maps.e(((NavigableMap) this.f12356c).pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            return Maps.e(((NavigableMap) this.f12356c).pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return ((NavigableMap) this.f12356c).subMap(obj, z, obj2, z2).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return ((NavigableMap) this.f12356c).tailMap(obj, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.Maps.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.Maps.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }
}
