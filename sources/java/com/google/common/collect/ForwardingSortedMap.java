package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.SortedMap;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingSortedMap<K, V> extends ForwardingMap<K, V> implements SortedMap<K, V> {

    /* loaded from: classes3.dex */
    public class StandardKeySet extends Maps.SortedKeySet<K, V> {
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return e0().comparator();
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return e0().firstKey();
    }

    @Override // java.util.SortedMap
    public SortedMap headMap(Object obj) {
        return e0().headMap(obj);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return e0().lastKey();
    }

    @Override // com.google.common.collect.ForwardingMap
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract SortedMap e0();

    @Override // java.util.SortedMap
    public SortedMap subMap(Object obj, Object obj2) {
        return e0().subMap(obj, obj2);
    }

    @Override // java.util.SortedMap
    public SortedMap tailMap(Object obj) {
        return e0().tailMap(obj);
    }
}
