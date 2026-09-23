package j$.util;

import j$.util.Map;
import java.io.Serializable;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

/* loaded from: classes2.dex */
public class t implements java.util.Map, Serializable, Map {
    private static final long serialVersionUID = -1034234728574286014L;

    /* renamed from: a, reason: collision with root package name */
    public final java.util.Map f21517a;
    public transient java.util.Set b;

    /* renamed from: c, reason: collision with root package name */
    public transient s f21518c;
    public transient java.util.Collection d;

    public t(java.util.Map map) {
        map.getClass();
        this.f21517a = map;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f21517a.size();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f21517a.isEmpty();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f21517a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f21517a.containsValue(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.f21517a.get(obj);
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final java.util.Set keySet() {
        if (this.b == null) {
            this.b = DesugarCollections.unmodifiableSet(this.f21517a.keySet());
        }
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.s, j$.util.m] */
    @Override // java.util.Map
    public final java.util.Set entrySet() {
        if (this.f21518c == null) {
            this.f21518c = new m(this.f21517a.entrySet());
        }
        return this.f21518c;
    }

    @Override // java.util.Map
    public final java.util.Collection values() {
        if (this.d == null) {
            this.d = DesugarCollections.unmodifiableCollection(this.f21517a.values());
        }
        return this.d;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || this.f21517a.equals(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.f21517a.hashCode();
    }

    public final String toString() {
        return this.f21517a.toString();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        return Map.EL.getOrDefault(this.f21517a, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        Map.EL.forEach(this.f21517a, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }
}
