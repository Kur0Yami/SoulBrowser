package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements BiMap<K, V>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public transient Object[] f12281c;
    public transient Object[] f;
    public transient int g;
    public transient int h;
    public transient int[] i;
    public transient int[] j;
    public transient int[] k;
    public transient int[] l;
    public transient int m;
    public transient int n;
    public transient int[] o;
    public transient int[] p;

    /* loaded from: classes3.dex */
    public final class EntryForKey extends AbstractMapEntry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12282c;
        public int f;

        public EntryForKey(int i) {
            this.f12282c = HashBiMap.this.f12281c[i];
            this.f = i;
        }

        public final void a() {
            int i = this.f;
            Object obj = this.f12282c;
            HashBiMap hashBiMap = HashBiMap.this;
            if (i != -1 && i <= hashBiMap.g && Objects.equals(hashBiMap.f12281c[i], obj)) {
                return;
            }
            this.f = hashBiMap.e(Hashing.c(obj), obj);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12282c;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            a();
            int i = this.f;
            if (i == -1) {
                return null;
            }
            return HashBiMap.this.f[i];
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            a();
            int i = this.f;
            HashBiMap hashBiMap = HashBiMap.this;
            if (i == -1) {
                hashBiMap.put(this.f12282c, obj);
                return null;
            }
            Object obj2 = hashBiMap.f[i];
            if (Objects.equals(obj2, obj)) {
                return obj;
            }
            hashBiMap.l(this.f, obj);
            return obj2;
        }
    }

    /* loaded from: classes3.dex */
    public static final class EntryForValue<K, V> extends AbstractMapEntry<V, K> {

        /* renamed from: c, reason: collision with root package name */
        public final HashBiMap f12283c;
        public final Object f;
        public int g;

        public EntryForValue(HashBiMap hashBiMap, int i) {
            this.f12283c = hashBiMap;
            this.f = hashBiMap.f[i];
            this.g = i;
        }

        public final void a() {
            int i = this.g;
            Object obj = this.f;
            HashBiMap hashBiMap = this.f12283c;
            if (i != -1 && i <= hashBiMap.g && Objects.equals(obj, hashBiMap.f[i])) {
                return;
            }
            hashBiMap.getClass();
            this.g = hashBiMap.f(Hashing.c(obj), obj);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            a();
            int i = this.g;
            if (i == -1) {
                return null;
            }
            return this.f12283c.f12281c[i];
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            boolean z;
            int i;
            a();
            int i2 = this.g;
            HashBiMap hashBiMap = this.f12283c;
            if (i2 == -1) {
                hashBiMap.getClass();
                Object obj2 = this.f;
                int c2 = Hashing.c(obj2);
                int f = hashBiMap.f(c2, obj2);
                if (f != -1) {
                    if (!Objects.equals(hashBiMap.f12281c[f], obj)) {
                        hashBiMap.k(f, obj);
                        return null;
                    }
                    return null;
                }
                int i3 = hashBiMap.n;
                int c3 = Hashing.c(obj);
                if (hashBiMap.e(c3, obj) == -1) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.c("Key already present: %s", obj, z);
                hashBiMap.d(hashBiMap.g + 1);
                Object[] objArr = hashBiMap.f12281c;
                int i4 = hashBiMap.g;
                objArr[i4] = obj;
                hashBiMap.f[i4] = obj2;
                hashBiMap.g(i4, c3);
                hashBiMap.h(hashBiMap.g, c2);
                if (i3 == -2) {
                    i = hashBiMap.m;
                } else {
                    i = hashBiMap.p[i3];
                }
                hashBiMap.m(i3, hashBiMap.g);
                hashBiMap.m(hashBiMap.g, i);
                hashBiMap.g++;
                hashBiMap.h++;
                return null;
            }
            Object obj3 = hashBiMap.f12281c[i2];
            if (Objects.equals(obj3, obj)) {
                return obj;
            }
            hashBiMap.k(this.g, obj);
            return obj3;
        }
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends View<K, V, Map.Entry<K, V>> {
        @Override // com.google.common.collect.HashBiMap.View
        public final Object a(int i) {
            return new EntryForKey(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            entry.getValue();
            Hashing.c(key);
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            entry.getValue();
            Hashing.c(key);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Inverse<K, V> extends AbstractMap<V, K> implements BiMap<V, K>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public transient Set f12284c;

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsValue(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set entrySet() {
            Set set = this.f12284c;
            if (set == null) {
                View view = new View(null);
                this.f12284c = view;
                return view;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Collection values() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        public final Set values() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class InverseEntrySet<K, V> extends View<K, V, Map.Entry<V, K>> {
        @Override // com.google.common.collect.HashBiMap.View
        public final Object a(int i) {
            return new EntryForValue(this.f12285c, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                HashBiMap hashBiMap = this.f12285c;
                hashBiMap.getClass();
                int f = hashBiMap.f(Hashing.c(key), key);
                if (f != -1 && Objects.equals(hashBiMap.f12281c[f], value)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                int c2 = Hashing.c(key);
                HashBiMap hashBiMap = this.f12285c;
                int f = hashBiMap.f(c2, key);
                if (f != -1 && Objects.equals(hashBiMap.f12281c[f], value)) {
                    hashBiMap.i(f, Hashing.c(hashBiMap.f12281c[f]), c2);
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySet extends View<K, V, K> {
        @Override // com.google.common.collect.HashBiMap.View
        public final Object a(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Hashing.c(obj);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class ValueSet extends View<K, V, V> {
        @Override // com.google.common.collect.HashBiMap.View
        public final Object a(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Hashing.c(obj);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class View<K, V, T> extends AbstractSet<T> {

        /* renamed from: c, reason: collision with root package name */
        public final HashBiMap f12285c;

        public View(HashBiMap hashBiMap) {
            this.f12285c = hashBiMap;
        }

        public abstract Object a(int i);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            this.f12285c.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new Iterator<Object>() { // from class: com.google.common.collect.HashBiMap.View.1

                /* renamed from: c, reason: collision with root package name */
                public int f12286c;
                public int f;
                public int g;
                public int h;

                {
                    HashBiMap hashBiMap = View.this.f12285c;
                    this.f12286c = hashBiMap.m;
                    this.f = -1;
                    this.g = hashBiMap.h;
                    this.h = hashBiMap.g;
                }

                @Override // java.util.Iterator
                public final boolean hasNext() {
                    if (View.this.f12285c.h == this.g) {
                        if (this.f12286c != -2 && this.h > 0) {
                            return true;
                        }
                        return false;
                    }
                    throw new ConcurrentModificationException();
                }

                @Override // java.util.Iterator
                public final Object next() {
                    if (hasNext()) {
                        int i = this.f12286c;
                        View view = View.this;
                        Object a2 = view.a(i);
                        int i2 = this.f12286c;
                        this.f = i2;
                        this.f12286c = view.f12285c.p[i2];
                        this.h--;
                        return a2;
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.Iterator
                public final void remove() {
                    boolean z;
                    View view = View.this;
                    HashBiMap hashBiMap = view.f12285c;
                    if (view.f12285c.h == this.g) {
                        if (this.f != -1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        CollectPreconditions.d(z);
                        int i = this.f;
                        hashBiMap.j(i, Hashing.c(hashBiMap.f12281c[i]));
                        if (this.f12286c == hashBiMap.g) {
                            this.f12286c = this.f;
                        }
                        this.f = -1;
                        this.g = hashBiMap.h;
                        return;
                    }
                    throw new ConcurrentModificationException();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f12285c.g;
        }
    }

    public final int a(int i) {
        return i & (this.i.length - 1);
    }

    public final void b(int i, int i2) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int a2 = a(i2);
        int[] iArr = this.i;
        int i3 = iArr[a2];
        if (i3 == i) {
            int[] iArr2 = this.k;
            iArr[a2] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.k[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 != -1) {
                if (i3 == i) {
                    int[] iArr3 = this.k;
                    iArr3[i5] = iArr3[i];
                    iArr3[i] = -1;
                    return;
                }
                i4 = this.k[i3];
            } else {
                throw new AssertionError("Expected to find entry with key " + this.f12281c[i]);
            }
        }
    }

    public final void c(int i, int i2) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int a2 = a(i2);
        int[] iArr = this.j;
        int i3 = iArr[a2];
        if (i3 == i) {
            int[] iArr2 = this.l;
            iArr[a2] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i4 = this.l[i3];
        while (true) {
            int i5 = i3;
            i3 = i4;
            if (i3 != -1) {
                if (i3 == i) {
                    int[] iArr3 = this.l;
                    iArr3[i5] = iArr3[i];
                    iArr3[i] = -1;
                    return;
                }
                i4 = this.l[i3];
            } else {
                throw new AssertionError("Expected to find entry with value " + this.f[i]);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.f12281c, 0, this.g, (Object) null);
        Arrays.fill(this.f, 0, this.g, (Object) null);
        Arrays.fill(this.i, -1);
        Arrays.fill(this.j, -1);
        Arrays.fill(this.k, 0, this.g, -1);
        Arrays.fill(this.l, 0, this.g, -1);
        Arrays.fill(this.o, 0, this.g, -1);
        Arrays.fill(this.p, 0, this.g, -1);
        this.g = 0;
        this.m = -2;
        this.n = -2;
        this.h++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        if (e(Hashing.c(obj), obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        if (f(Hashing.c(obj), obj) != -1) {
            return true;
        }
        return false;
    }

    public final void d(int i) {
        int[] iArr = this.k;
        if (iArr.length < i) {
            int b = ImmutableCollection.Builder.b(iArr.length, i);
            this.f12281c = Arrays.copyOf(this.f12281c, b);
            this.f = Arrays.copyOf(this.f, b);
            int[] iArr2 = this.k;
            int length = iArr2.length;
            int[] copyOf = Arrays.copyOf(iArr2, b);
            Arrays.fill(copyOf, length, b, -1);
            this.k = copyOf;
            int[] iArr3 = this.l;
            int length2 = iArr3.length;
            int[] copyOf2 = Arrays.copyOf(iArr3, b);
            Arrays.fill(copyOf2, length2, b, -1);
            this.l = copyOf2;
            int[] iArr4 = this.o;
            int length3 = iArr4.length;
            int[] copyOf3 = Arrays.copyOf(iArr4, b);
            Arrays.fill(copyOf3, length3, b, -1);
            this.o = copyOf3;
            int[] iArr5 = this.p;
            int length4 = iArr5.length;
            int[] copyOf4 = Arrays.copyOf(iArr5, b);
            Arrays.fill(copyOf4, length4, b, -1);
            this.p = copyOf4;
        }
        if (this.i.length < i) {
            int a2 = Hashing.a(1.0d, i);
            int[] iArr6 = new int[a2];
            Arrays.fill(iArr6, -1);
            this.i = iArr6;
            int[] iArr7 = new int[a2];
            Arrays.fill(iArr7, -1);
            this.j = iArr7;
            for (int i2 = 0; i2 < this.g; i2++) {
                int a3 = a(Hashing.c(this.f12281c[i2]));
                int[] iArr8 = this.k;
                int[] iArr9 = this.i;
                iArr8[i2] = iArr9[a3];
                iArr9[a3] = i2;
                int a4 = a(Hashing.c(this.f[i2]));
                int[] iArr10 = this.l;
                int[] iArr11 = this.j;
                iArr10[i2] = iArr11[a4];
                iArr11[a4] = i2;
            }
        }
    }

    public final int e(int i, Object obj) {
        int[] iArr = this.i;
        int[] iArr2 = this.k;
        Object[] objArr = this.f12281c;
        for (int i2 = iArr[a(i)]; i2 != -1; i2 = iArr2[i2]) {
            if (Objects.equals(objArr[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return null;
    }

    public final int f(int i, Object obj) {
        int[] iArr = this.j;
        int[] iArr2 = this.l;
        Object[] objArr = this.f;
        for (int i2 = iArr[a(i)]; i2 != -1; i2 = iArr2[i2]) {
            if (Objects.equals(objArr[i2], obj)) {
                return i2;
            }
        }
        return -1;
    }

    public final void g(int i, int i2) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int a2 = a(i2);
        int[] iArr = this.k;
        int[] iArr2 = this.i;
        iArr[i] = iArr2[a2];
        iArr2[a2] = i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        int e = e(Hashing.c(obj), obj);
        if (e == -1) {
            return null;
        }
        return this.f[e];
    }

    public final void h(int i, int i2) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int a2 = a(i2);
        int[] iArr = this.l;
        int[] iArr2 = this.j;
        iArr[i] = iArr2[a2];
        iArr2[a2] = i;
    }

    public final void i(int i, int i2, int i3) {
        boolean z;
        int i4;
        int i5;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        b(i, i2);
        c(i, i3);
        m(this.o[i], this.p[i]);
        int i6 = this.g - 1;
        if (i6 != i) {
            int i7 = this.o[i6];
            int i8 = this.p[i6];
            m(i7, i);
            m(i, i8);
            Object[] objArr = this.f12281c;
            Object obj = objArr[i6];
            Object[] objArr2 = this.f;
            Object obj2 = objArr2[i6];
            objArr[i] = obj;
            objArr2[i] = obj2;
            int a2 = a(Hashing.c(obj));
            int[] iArr = this.i;
            int i9 = iArr[a2];
            if (i9 == i6) {
                iArr[a2] = i;
            } else {
                int i10 = this.k[i9];
                while (true) {
                    i4 = i9;
                    i9 = i10;
                    if (i9 == i6) {
                        break;
                    } else {
                        i10 = this.k[i9];
                    }
                }
                this.k[i4] = i;
            }
            int[] iArr2 = this.k;
            iArr2[i] = iArr2[i6];
            iArr2[i6] = -1;
            int a3 = a(Hashing.c(obj2));
            int[] iArr3 = this.j;
            int i11 = iArr3[a3];
            if (i11 == i6) {
                iArr3[a3] = i;
            } else {
                int i12 = this.l[i11];
                while (true) {
                    i5 = i11;
                    i11 = i12;
                    if (i11 == i6) {
                        break;
                    } else {
                        i12 = this.l[i11];
                    }
                }
                this.l[i5] = i;
            }
            int[] iArr4 = this.l;
            iArr4[i] = iArr4[i6];
            iArr4[i6] = -1;
        }
        Object[] objArr3 = this.f12281c;
        int i13 = this.g;
        objArr3[i13 - 1] = null;
        this.f[i13 - 1] = null;
        this.g = i13 - 1;
        this.h++;
    }

    public final void j(int i, int i2) {
        i(i, i2, Hashing.c(this.f[i]));
    }

    public final void k(int i, Object obj) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int e = e(Hashing.c(obj), obj);
        int i2 = this.n;
        if (e == -1) {
            if (i2 == i) {
                i2 = this.o[i];
            } else if (i2 == this.g) {
                i2 = e;
            }
            if (-2 == i) {
                e = this.p[i];
            } else if (-2 != this.g) {
                e = -2;
            }
            m(this.o[i], this.p[i]);
            b(i, Hashing.c(this.f12281c[i]));
            this.f12281c[i] = obj;
            g(i, Hashing.c(obj));
            m(i2, i);
            m(i, e);
            return;
        }
        throw new IllegalArgumentException("Key already present in map: " + obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return null;
    }

    public final void l(int i, Object obj) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d(z);
        int c2 = Hashing.c(obj);
        if (f(c2, obj) == -1) {
            c(i, Hashing.c(this.f[i]));
            this.f[i] = obj;
            h(i, c2);
        } else {
            throw new IllegalArgumentException("Value already present in map: " + obj);
        }
    }

    public final void m(int i, int i2) {
        if (i == -2) {
            this.m = i2;
        } else {
            this.p[i] = i2;
        }
        if (i2 == -2) {
            this.n = i;
        } else {
            this.o[i2] = i;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        boolean z;
        int c2 = Hashing.c(obj);
        int e = e(c2, obj);
        if (e != -1) {
            Object obj3 = this.f[e];
            if (Objects.equals(obj3, obj2)) {
                return obj2;
            }
            l(e, obj2);
            return obj3;
        }
        int c3 = Hashing.c(obj2);
        if (f(c3, obj2) == -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.c("Value already present: %s", obj2, z);
        d(this.g + 1);
        Object[] objArr = this.f12281c;
        int i = this.g;
        objArr[i] = obj;
        this.f[i] = obj2;
        g(i, c2);
        h(this.g, c3);
        m(this.n, this.g);
        m(this.g, -2);
        this.g++;
        this.h++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        int c2 = Hashing.c(obj);
        int e = e(c2, obj);
        if (e == -1) {
            return null;
        }
        Object obj2 = this.f[e];
        j(e, c2);
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    public final Set values() {
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        return null;
    }
}
