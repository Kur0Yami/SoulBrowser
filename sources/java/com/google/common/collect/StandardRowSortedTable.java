package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Maps;
import com.google.common.collect.StandardTable;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V> implements RowSortedTable<R, C, V> {

    /* loaded from: classes3.dex */
    public final class RowSortedMap extends StandardTable<R, C, V>.RowMap implements SortedMap<R, Map<C, V>> {
        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap
        public final Set b() {
            return new Maps.KeySet(this);
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            throw null;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            throw null;
        }

        @Override // java.util.SortedMap
        public final SortedMap headMap(Object obj) {
            obj.getClass();
            throw null;
        }

        @Override // com.google.common.collect.Maps.ViewCachingAbstractMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            throw null;
        }

        @Override // java.util.SortedMap
        public final SortedMap subMap(Object obj, Object obj2) {
            obj.getClass();
            obj2.getClass();
            throw null;
        }

        @Override // java.util.SortedMap
        public final SortedMap tailMap(Object obj) {
            obj.getClass();
            throw null;
        }
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public final Map B() {
        return (SortedMap) super.B();
    }

    @Override // com.google.common.collect.StandardTable
    public final Map m() {
        return new StandardTable.RowMap();
    }
}
