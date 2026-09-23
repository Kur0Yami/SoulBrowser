package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Maps;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingNavigableMap<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V> {

    /* loaded from: classes3.dex */
    public class StandardDescendingMap extends Maps.DescendingMap<K, V> {

        /* renamed from: com.google.common.collect.ForwardingNavigableMap$StandardDescendingMap$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Iterator<Map.Entry<Object, Object>> {
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public final Map.Entry<Object, Object> next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
        }

        @Override // com.google.common.collect.Maps.DescendingMap
        public final Iterator n0() {
            throw null;
        }

        @Override // com.google.common.collect.Maps.DescendingMap
        public final NavigableMap s0() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public class StandardNavigableKeySet extends Maps.NavigableKeySet<K, V> {
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return e0().ceilingEntry(obj);
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return e0().ceilingKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        return e0().descendingKeySet();
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        return e0().descendingMap();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        return e0().firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return e0().floorEntry(obj);
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return e0().floorKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap headMap(Object obj, boolean z) {
        return e0().headMap(obj, z);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return e0().higherEntry(obj);
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return e0().higherKey(obj);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        return e0().lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return e0().lowerEntry(obj);
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return e0().lowerKey(obj);
    }

    @Override // java.util.NavigableMap
    public final NavigableSet navigableKeySet() {
        return e0().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        return e0().pollFirstEntry();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        return e0().pollLastEntry();
    }

    @Override // com.google.common.collect.ForwardingSortedMap
    /* renamed from: s0, reason: merged with bridge method [inline-methods] */
    public abstract NavigableMap e0();

    @Override // java.util.NavigableMap
    public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return e0().subMap(obj, z, obj2, z2);
    }

    @Override // java.util.NavigableMap
    public final NavigableMap tailMap(Object obj, boolean z) {
        return e0().tailMap(obj, z);
    }
}
