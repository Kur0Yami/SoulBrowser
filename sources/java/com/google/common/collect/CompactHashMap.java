package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtIncompatible
/* loaded from: classes3.dex */
public class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Object n = new Object();

    /* renamed from: c, reason: collision with root package name */
    public transient Object f12258c;
    public transient int[] f;
    public transient Object[] g;
    public transient Object[] h;
    public transient int i;
    public transient int j;
    public transient Set k;
    public transient Set l;
    public transient Collection m;

    /* loaded from: classes3.dex */
    public final class EntrySetView extends AbstractSet<Map.Entry<K, V>> {
        public EntrySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.entrySet().contains(obj);
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int j = compactHashMap.j(entry.getKey());
                if (j != -1 && Objects.equals(compactHashMap.q()[j], entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            final CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.entrySet().iterator();
            }
            return new CompactHashMap<Object, Object>.Itr<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.CompactHashMap.2
                @Override // com.google.common.collect.CompactHashMap.Itr
                public final Object a(int i) {
                    return new MapEntry(i);
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.entrySet().remove(obj);
            }
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (!compactHashMap.m()) {
                    int i = compactHashMap.i();
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    Object obj2 = compactHashMap.f12258c;
                    Objects.requireNonNull(obj2);
                    int d = CompactHashing.d(key, value, i, obj2, compactHashMap.o(), compactHashMap.p(), compactHashMap.q());
                    if (d != -1) {
                        compactHashMap.l(d, i);
                        compactHashMap.j--;
                        compactHashMap.i += 32;
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public abstract class Itr<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public int f12260c;
        public int f;
        public int g = -1;

        public Itr() {
            this.f12260c = CompactHashMap.this.i;
            this.f = CompactHashMap.this.g();
        }

        public abstract Object a(int i);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (compactHashMap.i == this.f12260c) {
                if (hasNext()) {
                    int i = this.f;
                    this.g = i;
                    Object a2 = a(i);
                    this.f = compactHashMap.h(this.f);
                    return a2;
                }
                throw new NoSuchElementException();
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            boolean z;
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (compactHashMap.i == this.f12260c) {
                if (this.g >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                CollectPreconditions.d(z);
                this.f12260c += 32;
                compactHashMap.remove(compactHashMap.p()[this.g]);
                this.f = compactHashMap.a(this.f, this.g);
                this.g = -1;
                return;
            }
            throw new ConcurrentModificationException();
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySetView extends AbstractSet<K> {
        public KeySetView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            final CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.keySet().iterator();
            }
            return new CompactHashMap<Object, Object>.Itr<Object>() { // from class: com.google.common.collect.CompactHashMap.1
                @Override // com.google.common.collect.CompactHashMap.Itr
                public final Object a(int i) {
                    Object obj = CompactHashMap.n;
                    return CompactHashMap.this.p()[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.keySet().remove(obj);
            }
            if (compactHashMap.n(obj) != CompactHashMap.n) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public final class MapEntry extends AbstractMapEntry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12262c;
        public int f;

        public MapEntry(int i) {
            Object obj = CompactHashMap.n;
            this.f12262c = CompactHashMap.this.p()[i];
            this.f = i;
        }

        public final void a() {
            int i = this.f;
            Object obj = this.f12262c;
            CompactHashMap compactHashMap = CompactHashMap.this;
            if (i != -1 && i < compactHashMap.size()) {
                if (Objects.equals(obj, compactHashMap.p()[this.f])) {
                    return;
                }
            }
            Object obj2 = CompactHashMap.n;
            this.f = compactHashMap.j(obj);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12262c;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.get(this.f12262c);
            }
            a();
            int i = this.f;
            if (i == -1) {
                return null;
            }
            return compactHashMap.q()[i];
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            Object obj2 = this.f12262c;
            if (f != 0) {
                return f.put(obj2, obj);
            }
            a();
            int i = this.f;
            if (i == -1) {
                compactHashMap.put(obj2, obj);
                return null;
            }
            Object obj3 = compactHashMap.q()[i];
            compactHashMap.q()[this.f] = obj;
            return obj3;
        }
    }

    /* loaded from: classes3.dex */
    public final class ValuesView extends AbstractCollection<V> {
        public ValuesView() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            final CompactHashMap compactHashMap = CompactHashMap.this;
            Map f = compactHashMap.f();
            if (f != null) {
                return f.values().iterator();
            }
            return new CompactHashMap<Object, Object>.Itr<Object>() { // from class: com.google.common.collect.CompactHashMap.3
                @Override // com.google.common.collect.CompactHashMap.Itr
                public final Object a(int i) {
                    Object obj = CompactHashMap.n;
                    return CompactHashMap.this.q()[i];
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return CompactHashMap.this.size();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, com.google.common.collect.CompactHashMap] */
    public static CompactHashMap d() {
        ?? abstractMap = new AbstractMap();
        abstractMap.i = Ints.a(3, 1);
        return abstractMap;
    }

    public int a(int i, int i2) {
        return i - 1;
    }

    public int b() {
        Preconditions.m(m(), "Arrays already allocated");
        int i = this.i;
        int max = Math.max(4, Hashing.a(1.0d, i + 1));
        this.f12258c = CompactHashing.a(max);
        this.i = CompactHashing.b(this.i, 32 - Integer.numberOfLeadingZeros(max - 1), 31);
        this.f = new int[i];
        this.g = new Object[i];
        this.h = new Object[i];
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Map c() {
        LinkedHashMap e = e(i() + 1);
        int g = g();
        while (g >= 0) {
            e.put(p()[g], q()[g]);
            g = h(g);
        }
        this.f12258c = e;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i += 32;
        return e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (m()) {
            return;
        }
        this.i += 32;
        Map f = f();
        if (f != null) {
            this.i = Ints.a(size(), 3);
            f.clear();
            this.f12258c = null;
            this.j = 0;
            return;
        }
        Arrays.fill(p(), 0, this.j, (Object) null);
        Arrays.fill(q(), 0, this.j, (Object) null);
        Object obj = this.f12258c;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(o(), 0, this.j, 0);
        this.j = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map f = f();
        if (f != null) {
            return f.containsKey(obj);
        }
        if (j(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map f = f();
        if (f != null) {
            return f.containsValue(obj);
        }
        for (int i = 0; i < this.j; i++) {
            if (Objects.equals(obj, q()[i])) {
                return true;
            }
        }
        return false;
    }

    public LinkedHashMap e(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.l;
        if (set == null) {
            EntrySetView entrySetView = new EntrySetView();
            this.l = entrySetView;
            return entrySetView;
        }
        return set;
    }

    public final Map f() {
        Object obj = this.f12258c;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public int g() {
        if (isEmpty()) {
            return -1;
        }
        return 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map f = f();
        if (f != null) {
            return f.get(obj);
        }
        int j = j(obj);
        if (j == -1) {
            return null;
        }
        return q()[j];
    }

    public int h(int i) {
        int i2 = i + 1;
        if (i2 < this.j) {
            return i2;
        }
        return -1;
    }

    public final int i() {
        return (1 << (this.i & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final int j(Object obj) {
        if (m()) {
            return -1;
        }
        int c2 = Hashing.c(obj);
        int i = i();
        Object obj2 = this.f12258c;
        Objects.requireNonNull(obj2);
        int e = CompactHashing.e(c2 & i, obj2);
        if (e == 0) {
            return -1;
        }
        int i2 = ~i;
        int i3 = c2 & i2;
        do {
            int i4 = e - 1;
            int i5 = o()[i4];
            if ((i5 & i2) == i3 && Objects.equals(obj, p()[i4])) {
                return i4;
            }
            e = i5 & i;
        } while (e != 0);
        return -1;
    }

    public void k(int i, Object obj, Object obj2, int i2, int i3) {
        o()[i] = CompactHashing.b(i2, 0, i3);
        p()[i] = obj;
        q()[i] = obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.k;
        if (set == null) {
            KeySetView keySetView = new KeySetView();
            this.k = keySetView;
            return keySetView;
        }
        return set;
    }

    public void l(int i, int i2) {
        Object obj = this.f12258c;
        Objects.requireNonNull(obj);
        int[] o = o();
        Object[] p = p();
        Object[] q = q();
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object obj2 = p[i3];
            p[i] = obj2;
            q[i] = q[i3];
            p[i3] = null;
            q[i3] = null;
            o[i] = o[i3];
            o[i3] = 0;
            int c2 = Hashing.c(obj2) & i2;
            int e = CompactHashing.e(c2, obj);
            if (e == size) {
                CompactHashing.f(c2, i + 1, obj);
                return;
            }
            while (true) {
                int i4 = e - 1;
                int i5 = o[i4];
                int i6 = i5 & i2;
                if (i6 == size) {
                    o[i4] = CompactHashing.b(i5, i + 1, i2);
                    return;
                }
                e = i6;
            }
        } else {
            p[i] = null;
            q[i] = null;
            o[i] = 0;
        }
    }

    public final boolean m() {
        if (this.f12258c == null) {
            return true;
        }
        return false;
    }

    public final Object n(Object obj) {
        if (!m()) {
            int i = i();
            Object obj2 = this.f12258c;
            Objects.requireNonNull(obj2);
            int d = CompactHashing.d(obj, null, i, obj2, o(), p(), null);
            if (d != -1) {
                Object obj3 = q()[d];
                l(d, i);
                this.j--;
                this.i += 32;
                return obj3;
            }
        }
        return n;
    }

    public final int[] o() {
        int[] iArr = this.f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] p() {
        Object[] objArr = this.g;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a2  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object put(java.lang.Object r18, java.lang.Object r19) {
        /*
            r17 = this;
            r0 = r17
            r2 = r18
            r3 = r19
            boolean r1 = r0.m()
            if (r1 == 0) goto Lf
            r0.b()
        Lf:
            java.util.Map r1 = r0.f()
            if (r1 == 0) goto L1a
            java.lang.Object r1 = r1.put(r2, r3)
            return r1
        L1a:
            int[] r1 = r0.o()
            java.lang.Object[] r4 = r0.p()
            java.lang.Object[] r5 = r0.q()
            r6 = r1
            int r1 = r0.j
            int r7 = r1 + 1
            r8 = r4
            int r4 = com.google.common.collect.Hashing.c(r2)
            int r9 = r0.i()
            r10 = r4 & r9
            java.lang.Object r11 = r0.f12258c
            j$.util.Objects.requireNonNull(r11)
            int r11 = com.google.common.collect.CompactHashing.e(r10, r11)
            r12 = 1
            if (r11 != 0) goto L5b
            if (r7 <= r9) goto L50
            int r5 = com.google.common.collect.CompactHashing.c(r9)
            int r9 = r0.s(r9, r5, r4, r1)
            r5 = r9
            r16 = r12
            goto L9b
        L50:
            java.lang.Object r5 = r0.f12258c
            j$.util.Objects.requireNonNull(r5)
            com.google.common.collect.CompactHashing.f(r10, r7, r5)
            r16 = r12
            goto L92
        L5b:
            int r10 = ~r9
            r13 = r4 & r10
            r14 = 0
        L5f:
            int r11 = r11 - r12
            r15 = r6[r11]
            r16 = r12
            r12 = r15 & r10
            if (r12 != r13) goto L75
            r12 = r8[r11]
            boolean r12 = j$.util.Objects.equals(r2, r12)
            if (r12 == 0) goto L75
            r1 = r5[r11]
            r5[r11] = r3
            return r1
        L75:
            r12 = r15 & r9
            int r14 = r14 + 1
            if (r12 != 0) goto Lc5
            r5 = 9
            if (r14 < r5) goto L88
            java.util.Map r1 = r0.c()
            java.lang.Object r1 = r1.put(r2, r3)
            return r1
        L88:
            if (r7 <= r9) goto L94
            int r5 = com.google.common.collect.CompactHashing.c(r9)
            int r9 = r0.s(r9, r5, r4, r1)
        L92:
            r5 = r9
            goto L9b
        L94:
            int r5 = com.google.common.collect.CompactHashing.b(r15, r7, r9)
            r6[r11] = r5
            goto L92
        L9b:
            int[] r6 = r0.o()
            int r6 = r6.length
            if (r7 <= r6) goto Lb8
            int r8 = r6 >>> 1
            r11 = r16
            int r8 = java.lang.Math.max(r11, r8)
            int r8 = r8 + r6
            r8 = r8 | r11
            r9 = 1073741823(0x3fffffff, float:1.9999999)
            int r8 = java.lang.Math.min(r9, r8)
            if (r8 == r6) goto Lb8
            r0.r(r8)
        Lb8:
            r0.k(r1, r2, r3, r4, r5)
            r0.j = r7
            int r1 = r0.i
            int r1 = r1 + 32
            r0.i = r1
            r1 = 0
            return r1
        Lc5:
            r2 = r18
            r3 = r19
            r11 = r12
            r12 = r16
            goto L5f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.CompactHashMap.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public final Object[] q() {
        Object[] objArr = this.h;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public void r(int i) {
        this.f = Arrays.copyOf(o(), i);
        this.g = Arrays.copyOf(p(), i);
        this.h = Arrays.copyOf(q(), i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map f = f();
        if (f != null) {
            return f.remove(obj);
        }
        Object n2 = n(obj);
        if (n2 == n) {
            return null;
        }
        return n2;
    }

    public final int s(int i, int i2, int i3, int i4) {
        Object a2 = CompactHashing.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            CompactHashing.f(i3 & i5, i4 + 1, a2);
        }
        Object obj = this.f12258c;
        Objects.requireNonNull(obj);
        int[] o = o();
        for (int i6 = 0; i6 <= i; i6++) {
            int e = CompactHashing.e(i6, obj);
            while (e != 0) {
                int i7 = e - 1;
                int i8 = o[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int e2 = CompactHashing.e(i10, a2);
                CompactHashing.f(i10, e, a2);
                o[i7] = CompactHashing.b(i9, e2, i5);
                e = i8 & i;
            }
        }
        this.f12258c = a2;
        this.i = CompactHashing.b(this.i, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map f = f();
        if (f != null) {
            return f.size();
        }
        return this.j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.m;
        if (collection == null) {
            ValuesView valuesView = new ValuesView();
            this.m = valuesView;
            return valuesView;
        }
        return collection;
    }
}
