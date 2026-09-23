package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Predicates;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
class StandardTable<R, C, V> extends AbstractTable<R, C, V> implements Serializable {
    public transient Set g;
    public transient Map h;

    /* loaded from: classes3.dex */
    public final class CellIterator implements Iterator<Table.Cell<R, C, V>> {

        /* renamed from: c, reason: collision with root package name */
        public Map.Entry f12396c;
        public Iterator f;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.f.hasNext()) {
                Objects.requireNonNull(this.f12396c);
                Map.Entry entry = (Map.Entry) this.f.next();
                return new Tables.ImmutableCell(this.f12396c.getKey(), entry.getKey(), entry.getValue());
            }
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.f.remove();
            Map.Entry entry = this.f12396c;
            Objects.requireNonNull(entry);
            if (!((Map) entry.getValue()).isEmpty()) {
            } else {
                throw null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class Column extends Maps.ViewCachingAbstractMap<R, V> {
        public final Object h;

        /* loaded from: classes3.dex */
        public final class EntrySet extends Sets.ImprovedAbstractSet<Map.Entry<R, V>> {
            public EntrySet() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final void clear() {
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Column column = Column.this;
                    StandardTable standardTable = StandardTable.this;
                    Object key = entry.getKey();
                    Object obj2 = column.h;
                    Object value = entry.getValue();
                    if (value != null && value.equals(standardTable.n(key, obj2))) {
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean isEmpty() {
                Column column = Column.this;
                return !StandardTable.this.j(column.h);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                new EntrySetIterator();
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Column column = Column.this;
                    StandardTable standardTable = StandardTable.this;
                    Object key = entry.getKey();
                    Object obj2 = column.h;
                    Object value = entry.getValue();
                    if (value != null && value.equals(standardTable.n(key, obj2))) {
                        standardTable.p(key, obj2);
                        return true;
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean retainAll(Collection collection) {
                Predicates.e(collection);
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class EntrySetIterator extends AbstractIterator<Map.Entry<R, V>> {

            /* renamed from: com.google.common.collect.StandardTable$Column$EntrySetIterator$1EntryImpl, reason: invalid class name */
            /* loaded from: classes3.dex */
            final class C1EntryImpl extends AbstractMapEntry<Object, Object> {

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Map.Entry f12398c;
                public final /* synthetic */ EntrySetIterator f;

                public C1EntryImpl(EntrySetIterator entrySetIterator, Map.Entry entry) {
                    this.f12398c = entry;
                    this.f = entrySetIterator;
                }

                @Override // java.util.Map.Entry
                public final Object getKey() {
                    return this.f12398c.getKey();
                }

                @Override // java.util.Map.Entry
                public final Object getValue() {
                    return ((Map) this.f12398c.getValue()).get(Column.this.h);
                }

                @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
                public final Object setValue(Object obj) {
                    Map map = (Map) this.f12398c.getValue();
                    Object obj2 = Column.this.h;
                    obj.getClass();
                    return map.put(obj2, obj);
                }
            }

            public EntrySetIterator() {
                throw null;
            }

            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class KeySet extends Maps.KeySet<R, V> {
            public KeySet() {
                super(Column.this);
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                Column column = Column.this;
                return StandardTable.this.i(obj, column.h);
            }

            @Override // com.google.common.collect.Maps.KeySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Column column = Column.this;
                if (StandardTable.this.p(obj, column.h) != null) {
                    return true;
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean retainAll(Collection collection) {
                Predicates.c(Predicates.g(Predicates.e(collection)), Maps.EntryFunction.f12351c);
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class Values extends Maps.Values<R, V> {
            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean remove(Object obj) {
                if (obj == null) {
                    return false;
                }
                Predicates.c(Predicates.d(obj), Maps.EntryFunction.f);
                throw null;
            }

            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean removeAll(Collection collection) {
                Predicates.c(Predicates.e(collection), Maps.EntryFunction.f);
                throw null;
            }

            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean retainAll(Collection collection) {
                Predicates.c(Predicates.g(Predicates.e(collection)), Maps.EntryFunction.f);
                throw null;
            }
        }

        public Column(Object obj) {
            obj.getClass();
            this.h = obj;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new EntrySet();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            return new KeySet();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Collection c() {
            return new Maps.Values(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return StandardTable.this.i(obj, this.h);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            return StandardTable.this.n(obj, this.h);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            return StandardTable.this.o(obj, this.h, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            return StandardTable.this.p(obj, this.h);
        }
    }

    /* loaded from: classes3.dex */
    public final class ColumnKeyIterator extends AbstractIterator<C> {
        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ColumnKeySet extends StandardTable<R, C, V>.TableSet<C> {
        public ColumnKeySet() {
            super(StandardTable.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return StandardTable.this.j(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return StandardTable.this.l();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj == null) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            throw null;
        }

        @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return Iterators.j(StandardTable.this.l());
        }
    }

    /* loaded from: classes3.dex */
    public final class ColumnMap extends Maps.ViewCachingAbstractMap<C, Map<R, V>> {

        /* loaded from: classes3.dex */
        public final class ColumnMapEntrySet extends StandardTable<R, C, V>.TableSet<Map.Entry<C, Map<R, V>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ColumnMapEntrySet() {
                super(null);
                ColumnMap.this.getClass();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                ((Map.Entry) obj).getKey();
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    ((Map.Entry) obj).getKey();
                    new LinkedHashMap();
                    throw null;
                }
                return false;
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean removeAll(Collection collection) {
                collection.getClass();
                return Sets.g(this, collection.iterator());
            }

            @Override // com.google.common.collect.Sets.ImprovedAbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean retainAll(Collection collection) {
                collection.getClass();
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public final class ColumnMapValues extends Maps.Values<C, Map<R, V>> {
            public ColumnMapValues() {
                super(ColumnMap.this);
            }

            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean remove(Object obj) {
                for (Map.Entry entry : ColumnMap.this.entrySet()) {
                    if (((Map) entry.getValue()).equals(obj)) {
                        entry.getKey();
                        new LinkedHashMap();
                        throw null;
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean removeAll(Collection collection) {
                collection.getClass();
                throw null;
            }

            @Override // com.google.common.collect.Maps.Values, java.util.AbstractCollection, java.util.Collection
            public final boolean retainAll(Collection collection) {
                collection.getClass();
                throw null;
            }
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new ColumnMapEntrySet();
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Collection c() {
            return new ColumnMapValues();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public class Row extends Maps.IteratorBasedAbstractMap<C, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12401c;
        public Map f;

        public Row(Object obj) {
            obj.getClass();
            this.f12401c = obj;
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap
        public final Iterator a() {
            d();
            Map map = this.f;
            if (map == null) {
                return Iterators.EmptyModifiableIterator.f12310c;
            }
            final Iterator it = map.entrySet().iterator();
            return new Iterator<Map.Entry<Object, Object>>(this) { // from class: com.google.common.collect.StandardTable.Row.1
                public final /* synthetic */ Row f;

                {
                    this.f = this;
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    return it.hasNext();
                }

                @Override // java.util.Iterator
                public final Map.Entry<Object, Object> next() {
                    final Map.Entry entry = (Map.Entry) it.next();
                    return new ForwardingMapEntry<Object, Object>() { // from class: com.google.common.collect.StandardTable.Row.2
                        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
                        public final Object e0() {
                            return entry;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public final boolean equals(Object obj) {
                            if (obj instanceof Map.Entry) {
                                Map.Entry entry2 = (Map.Entry) obj;
                                if (Objects.equals(getKey(), entry2.getKey()) && Objects.equals(getValue(), entry2.getValue())) {
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry
                        /* renamed from: h0 */
                        public final Map.Entry e0() {
                            return entry;
                        }

                        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
                        public final Object setValue(Object obj) {
                            obj.getClass();
                            return super.setValue(obj);
                        }
                    };
                }

                @Override // java.util.Iterator
                public final void remove() {
                    it.remove();
                    this.f.c();
                }
            };
        }

        public Map b() {
            throw null;
        }

        public void c() {
            d();
            Map map = this.f;
            if (map != null && map.isEmpty()) {
                throw null;
            }
        }

        @Override // com.google.common.collect.Maps.IteratorBasedAbstractMap, java.util.AbstractMap, java.util.Map
        public final void clear() {
            d();
            Map map = this.f;
            if (map != null) {
                map.clear();
            }
            c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map map;
            boolean z;
            d();
            if (obj != null && (map = this.f) != null) {
                try {
                    z = map.containsKey(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    z = false;
                }
                if (z) {
                    return true;
                }
            }
            return false;
        }

        public final void d() {
            Map map = this.f;
            if (map != null) {
                if (!map.isEmpty()) {
                } else {
                    throw null;
                }
            } else {
                this.f = b();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Map map;
            d();
            if (obj != null && (map = this.f) != null) {
                return Maps.f(map, obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Object put(Object obj, Object obj2) {
            obj.getClass();
            obj2.getClass();
            Map map = this.f;
            if (map != null && !map.isEmpty()) {
                return this.f.put(obj, obj2);
            }
            return StandardTable.this.o(this.f12401c, obj, obj2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            d();
            Map map = this.f;
            Object obj2 = null;
            if (map == null) {
                return null;
            }
            try {
                obj2 = map.remove(obj);
            } catch (ClassCastException | NullPointerException unused) {
            }
            c();
            return obj2;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            d();
            Map map = this.f;
            if (map == null) {
                return 0;
            }
            return map.size();
        }
    }

    /* loaded from: classes3.dex */
    public class RowMap extends Maps.ViewCachingAbstractMap<R, Map<C, V>> {

        /* loaded from: classes3.dex */
        public final class EntrySet extends StandardTable<R, C, V>.TableSet<Map.Entry<R, Map<C, V>>> {
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map)) {
                        throw null;
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (entry.getKey() != null && (entry.getValue() instanceof Map)) {
                        throw null;
                    }
                    return false;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                throw null;
            }
        }

        public RowMap() {
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set a() {
            return new TableSet(StandardTable.this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            return StandardTable.this.k(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            StandardTable standardTable = StandardTable.this;
            if (standardTable.k(obj)) {
                Objects.requireNonNull(obj);
                return standardTable.q(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            if (obj == null) {
                return null;
            }
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public abstract class TableSet<T> extends Sets.ImprovedAbstractSet<T> {
        public TableSet(StandardTable standardTable) {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            throw null;
        }
    }

    @Override // com.google.common.collect.Table
    public Map B() {
        Map map = this.h;
        if (map == null) {
            Map m = m();
            this.h = m;
            return m;
        }
        return map;
    }

    @Override // com.google.common.collect.AbstractTable
    public final Iterator a() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractTable
    public void b() {
        throw null;
    }

    @Override // com.google.common.collect.AbstractTable
    public boolean c(Object obj) {
        if (obj != null && super.c(obj)) {
            return true;
        }
        return false;
    }

    public Map g(Object obj) {
        return new Column(obj);
    }

    public Set h() {
        Set set = this.g;
        if (set == null) {
            ColumnKeySet columnKeySet = new ColumnKeySet();
            this.g = columnKeySet;
            return columnKeySet;
        }
        return set;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean i(java.lang.Object r3, java.lang.Object r4) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L20
            if (r4 == 0) goto L20
            java.util.Map r1 = r2.B()
            java.lang.Object r3 = com.google.common.collect.Maps.f(r1, r3)
            java.util.Map r3 = (java.util.Map) r3
            r1 = 1
            if (r3 == 0) goto L1c
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L17
            goto L18
        L17:
            r3 = r0
        L18:
            if (r3 == 0) goto L1c
            r3 = r1
            goto L1d
        L1c:
            r3 = r0
        L1d:
            if (r3 == 0) goto L20
            r0 = r1
        L20:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.StandardTable.i(java.lang.Object, java.lang.Object):boolean");
    }

    public boolean j(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    public boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    public Iterator l() {
        throw null;
    }

    public Map m() {
        return new RowMap();
    }

    public Object n(Object obj, Object obj2) {
        Map map;
        if (obj != null && obj2 != null && (map = (Map) Maps.f(B(), obj)) != null) {
            try {
                return map.get(obj2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return null;
    }

    public Object o(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj2.getClass();
        obj3.getClass();
        throw null;
    }

    public Object p(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return null;
        }
        Maps.f(null, obj);
        throw null;
    }

    public Map q(Object obj) {
        return new Row(obj);
    }

    @Override // com.google.common.collect.Table
    public int size() {
        throw null;
    }
}
