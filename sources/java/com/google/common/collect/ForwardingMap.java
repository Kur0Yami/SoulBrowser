package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {

    /* loaded from: classes3.dex */
    public abstract class StandardEntrySet extends Maps.EntrySet<K, V> {
        @Override // com.google.common.collect.Maps.EntrySet
        public final Map a() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public class StandardKeySet extends Maps.KeySet<K, V> {
    }

    /* loaded from: classes3.dex */
    public class StandardValues extends Maps.Values<K, V> {
    }

    public void clear() {
        e0().clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return e0().containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return e0().containsValue(obj);
    }

    public Set entrySet() {
        return e0().entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this && !e0().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return e0().get(obj);
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Map e0();

    @Override // java.util.Map
    public final int hashCode() {
        return e0().hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return e0().isEmpty();
    }

    public Set keySet() {
        return e0().keySet();
    }

    public Object put(Object obj, Object obj2) {
        return e0().put(obj, obj2);
    }

    public void putAll(Map map) {
        e0().putAll(map);
    }

    public Object remove(Object obj) {
        return e0().remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return e0().size();
    }

    public Collection values() {
        return e0().values();
    }
}
