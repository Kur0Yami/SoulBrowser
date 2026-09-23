package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.collect.ImmutableCollection;
import com.google.errorprone.annotations.DoNotMock;
import j$.util.Map;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;

@DoNotMock
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable, j$.util.Map {

    /* renamed from: c, reason: collision with root package name */
    public transient ImmutableSet f12290c;
    public transient ImmutableSet f;
    public transient ImmutableCollection g;

    @DoNotMock
    /* loaded from: classes3.dex */
    public static class Builder<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public Object[] f12292a;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public DuplicateKey f12293c;

        /* loaded from: classes3.dex */
        public static final class DuplicateKey {

            /* renamed from: a, reason: collision with root package name */
            public final Object f12294a;
            public final Object b;

            /* renamed from: c, reason: collision with root package name */
            public final Object f12295c;

            public DuplicateKey(Object obj, Object obj2, Object obj3) {
                this.f12294a = obj;
                this.b = obj2;
                this.f12295c = obj3;
            }

            public final IllegalArgumentException a() {
                StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
                Object obj = this.f12294a;
                sb.append(obj);
                sb.append("=");
                sb.append(this.b);
                sb.append(" and ");
                sb.append(obj);
                sb.append("=");
                sb.append(this.f12295c);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public Builder(int i) {
            this.f12292a = new Object[i * 2];
        }

        public ImmutableMap a() {
            return c();
        }

        public final ImmutableMap b(boolean z) {
            DuplicateKey duplicateKey;
            DuplicateKey duplicateKey2;
            if (z && (duplicateKey2 = this.f12293c) != null) {
                throw duplicateKey2.a();
            }
            RegularImmutableMap o = RegularImmutableMap.o(this.b, this.f12292a, this);
            if (z && (duplicateKey = this.f12293c) != null) {
                throw duplicateKey.a();
            }
            return o;
        }

        public ImmutableMap c() {
            return b(true);
        }

        public Builder d(Object obj, Object obj2) {
            int i = (this.b + 1) * 2;
            Object[] objArr = this.f12292a;
            if (i > objArr.length) {
                this.f12292a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, i));
            }
            CollectPreconditions.a(obj, obj2);
            Object[] objArr2 = this.f12292a;
            int i2 = this.b;
            int i3 = i2 * 2;
            objArr2[i3] = obj;
            objArr2[i3 + 1] = obj2;
            this.b = i2 + 1;
            return this;
        }

        public Builder e(Iterable iterable) {
            if (iterable instanceof Collection) {
                int size = (((Collection) iterable).size() + this.b) * 2;
                Object[] objArr = this.f12292a;
                if (size > objArr.length) {
                    this.f12292a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, size));
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                d(entry.getKey(), entry.getValue());
            }
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class IteratorBasedImmutableMap<K, V> extends ImmutableMap<K, V> {
        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableSet c() {
            return new ImmutableMapEntrySet<Object, Object>() { // from class: com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap.1EntrySetImpl
                @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
                public final Iterator iterator() {
                    return IteratorBasedImmutableMap.this.o();
                }

                @Override // com.google.common.collect.ImmutableCollection
                /* renamed from: p */
                public final UnmodifiableIterator iterator() {
                    return IteratorBasedImmutableMap.this.o();
                }

                @Override // com.google.common.collect.ImmutableMapEntrySet
                public final ImmutableMap y() {
                    return IteratorBasedImmutableMap.this;
                }
            };
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet d() {
            return new ImmutableMapKeySet(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableCollection e() {
            return new ImmutableMapValues(this);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final /* bridge */ /* synthetic */ Set entrySet() {
            return entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final /* bridge */ /* synthetic */ Set keySet() {
            return keySet();
        }

        public abstract UnmodifiableIterator o();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final /* bridge */ /* synthetic */ Collection values() {
            return values();
        }
    }

    /* loaded from: classes3.dex */
    public final class MapViewOfValuesAsSingletonSets extends IteratorBasedImmutableMap<K, ImmutableSet<V>> {

        /* renamed from: com.google.common.collect.ImmutableMap$MapViewOfValuesAsSingletonSets$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends UnmodifiableIterator<Map.Entry<Object, ImmutableSet<Object>>> {

            /* renamed from: com.google.common.collect.ImmutableMap$MapViewOfValuesAsSingletonSets$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class C00181 extends AbstractMapEntry<Object, ImmutableSet<Object>> {
                @Override // java.util.Map.Entry
                public final Object getKey() {
                    throw null;
                }

                @Override // java.util.Map.Entry
                public final Object getValue() {
                    throw null;
                }
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                throw null;
            }

            @Override // java.util.Iterator
            public final Object next() {
                throw null;
            }
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final boolean containsKey(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        public final ImmutableSet d() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap
        public final boolean g() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final Object get(Object obj) {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap
        public final boolean h() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public final int hashCode() {
            throw null;
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
        public final UnmodifiableIterator o() {
            throw null;
        }

        @Override // java.util.Map
        public final int size() {
            throw null;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static class SerializedForm<K, V> implements Serializable {
    }

    public static Builder a() {
        return new Builder(4);
    }

    public static ImmutableMap b(Map map) {
        int i;
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap immutableMap = (ImmutableMap) map;
            if (!immutableMap.h()) {
                return immutableMap;
            }
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (entrySet != null) {
            i = entrySet.size();
        } else {
            i = 4;
        }
        Builder builder = new Builder(i);
        builder.e(entrySet);
        return builder.b(true);
    }

    public static ImmutableMap k() {
        return RegularImmutableMap.k;
    }

    public static ImmutableMap l(String str, Serializable serializable) {
        CollectPreconditions.a(str, serializable);
        return RegularImmutableMap.o(1, new Object[]{str, serializable}, null);
    }

    public static ImmutableMap m(String str, ArrayList arrayList, String str2, Serializable serializable, String str3, String str4) {
        CollectPreconditions.a(str, arrayList);
        CollectPreconditions.a(str2, serializable);
        CollectPreconditions.a(str3, str4);
        return RegularImmutableMap.o(3, new Object[]{str, arrayList, str2, serializable, str3, str4}, null);
    }

    public abstract ImmutableSet c();

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract ImmutableSet d();

    public abstract ImmutableCollection e();

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public ImmutableSet entrySet() {
        ImmutableSet immutableSet = this.f12290c;
        if (immutableSet == null) {
            ImmutableSet c2 = c();
            this.f12290c = c2;
            return c2;
        }
        return immutableSet;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    public boolean g() {
        return false;
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 != null) {
            return obj3;
        }
        return obj2;
    }

    public abstract boolean h();

    @Override // java.util.Map
    public int hashCode() {
        return Sets.e(entrySet());
    }

    public UnmodifiableIterator i() {
        final UnmodifiableIterator it = entrySet().iterator();
        return new UnmodifiableIterator<Object>() { // from class: com.google.common.collect.ImmutableMap.1
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return UnmodifiableIterator.this.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                return ((Map.Entry) UnmodifiableIterator.this.next()).getKey();
            }
        };
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public ImmutableSet keySet() {
        ImmutableSet immutableSet = this.f;
        if (immutableSet == null) {
            ImmutableSet d = d();
            this.f = d;
            return d;
        }
        return immutableSet;
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection values() {
        ImmutableCollection immutableCollection = this.g;
        if (immutableCollection == null) {
            ImmutableCollection e = e();
            this.g = e;
            return e;
        }
        return immutableCollection;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        return Maps.g(this);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }
}
