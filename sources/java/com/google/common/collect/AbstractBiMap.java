package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class AbstractBiMap<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {

    /* renamed from: com.google.common.collect.AbstractBiMap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Iterator<Map.Entry<Object, Object>> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Map.Entry<Object, Object> next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
    }

    /* loaded from: classes3.dex */
    public final class BiMapEntry extends ForwardingMapEntry<K, V> {
        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
        public final Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingMapEntry
        /* renamed from: h0 */
        public final Map.Entry e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends ForwardingSet<Map.Entry<K, V>> {
        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return Collections2.a(this, collection);
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Collection e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            return Sets.f(this, collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            iterator();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray(Object[] objArr) {
            return ObjectArrays.c(this, objArr);
        }

        @Override // com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            return n0();
        }
    }

    /* loaded from: classes3.dex */
    public static final class Inverse<K, V> extends AbstractBiMap<K, V> {
        @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.AbstractBiMap
        public final void n0(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractBiMap
        public final void s0(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
        public final Collection values() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySet extends ForwardingSet<K> {
        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            e0();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Collection e0() {
            e0();
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            return Sets.f(this, collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            Iterator it = iterator();
            collection.getClass();
            boolean z = false;
            while (true) {
                TransformedIterator transformedIterator = (TransformedIterator) it;
                if (transformedIterator.hasNext()) {
                    if (!collection.contains(transformedIterator.next())) {
                        transformedIterator.remove();
                        z = true;
                    }
                } else {
                    return z;
                }
            }
        }

        @Override // com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ValueSet extends ForwardingSet<V> {
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Collection e0() {
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

        @Override // com.google.common.collect.ForwardingObject
        public final String toString() {
            return s0();
        }

        @Override // com.google.common.collect.ForwardingSet
        /* renamed from: y0 */
        public final Set e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public final Object[] toArray() {
            return n0();
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public void clear() {
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public boolean containsValue(Object obj) {
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public /* bridge */ /* synthetic */ Object e0() {
        return null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set entrySet() {
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap
    /* renamed from: h0 */
    public final Map e0() {
        return null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set keySet() {
        return null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        n0(obj);
        s0(obj2);
        if (containsKey(obj) && Objects.equals(obj2, get(obj))) {
            return obj2;
        }
        containsValue(obj2);
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public void putAll(Map map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Object remove(Object obj) {
        if (!containsKey(obj)) {
            return null;
        }
        throw null;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set values() {
        throw null;
    }

    public void n0(Object obj) {
    }

    public void s0(Object obj) {
    }
}
