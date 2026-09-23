package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Set;

@GwtIncompatible
/* loaded from: classes3.dex */
class CompactHashSet<E> extends AbstractSet<E> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public transient Object f12264c;
    public transient int[] f;
    public transient Object[] g;
    public transient int h;
    public transient int i;

    public CompactHashSet() {
        p();
    }

    public int a(int i, int i2) {
        return i - 1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int min;
        if (s()) {
            c();
        }
        Set i = i();
        if (i != null) {
            return i.add(obj);
        }
        int[] u = u();
        Object[] t = t();
        int i2 = this.i;
        int i3 = i2 + 1;
        int c2 = Hashing.c(obj);
        int i4 = (1 << (this.h & 31)) - 1;
        int i5 = c2 & i4;
        Object obj2 = this.f12264c;
        Objects.requireNonNull(obj2);
        int e = CompactHashing.e(i5, obj2);
        if (e == 0) {
            if (i3 > i4) {
                i4 = w(i4, CompactHashing.c(i4), c2, i2);
            } else {
                Object obj3 = this.f12264c;
                Objects.requireNonNull(obj3);
                CompactHashing.f(i5, i3, obj3);
            }
        } else {
            int i6 = ~i4;
            int i7 = c2 & i6;
            int i8 = 0;
            while (true) {
                int i9 = e - 1;
                int i10 = u[i9];
                if ((i10 & i6) == i7 && Objects.equals(obj, t[i9])) {
                    return false;
                }
                int i11 = i10 & i4;
                i8++;
                if (i11 == 0) {
                    if (i8 >= 9) {
                        return g().add(obj);
                    }
                    if (i3 > i4) {
                        i4 = w(i4, CompactHashing.c(i4), c2, i2);
                    } else {
                        u[i9] = CompactHashing.b(i10, i3, i4);
                    }
                } else {
                    e = i11;
                }
            }
        }
        int length = u().length;
        if (i3 > length && (min = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            v(min);
        }
        q(obj, i2, c2, i4);
        this.i = i3;
        this.h += 32;
        return true;
    }

    public int c() {
        Preconditions.m(s(), "Arrays already allocated");
        int i = this.h;
        int max = Math.max(4, Hashing.a(1.0d, i + 1));
        this.f12264c = CompactHashing.a(max);
        this.h = CompactHashing.b(this.h, 32 - Integer.numberOfLeadingZeros(max - 1), 31);
        this.f = new int[i];
        this.g = new Object[i];
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (s()) {
            return;
        }
        this.h += 32;
        Set i = i();
        if (i != null) {
            this.h = Ints.a(size(), 3);
            i.clear();
            this.f12264c = null;
            this.i = 0;
            return;
        }
        Arrays.fill(t(), 0, this.i, (Object) null);
        Object obj = this.f12264c;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(u(), 0, this.i, 0);
        this.i = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!s()) {
            Set i = i();
            if (i != null) {
                return i.contains(obj);
            }
            int c2 = Hashing.c(obj);
            int i2 = (1 << (this.h & 31)) - 1;
            Object obj2 = this.f12264c;
            Objects.requireNonNull(obj2);
            int e = CompactHashing.e(c2 & i2, obj2);
            if (e != 0) {
                int i3 = ~i2;
                int i4 = c2 & i3;
                do {
                    int i5 = e - 1;
                    int i6 = u()[i5];
                    if ((i6 & i3) == i4 && Objects.equals(obj, t()[i5])) {
                        return true;
                    }
                    e = i6 & i2;
                } while (e != 0);
                return false;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LinkedHashSet g() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(1 << (this.h & 31), 1.0f);
        int k = k();
        while (k >= 0) {
            linkedHashSet.add(t()[k]);
            k = m(k);
        }
        this.f12264c = linkedHashSet;
        this.f = null;
        this.g = null;
        this.h += 32;
        return linkedHashSet;
    }

    public final Set i() {
        Object obj = this.f12264c;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Set i = i();
        if (i != null) {
            return i.iterator();
        }
        return new Iterator<Object>() { // from class: com.google.common.collect.CompactHashSet.1

            /* renamed from: c, reason: collision with root package name */
            public int f12265c;
            public int f;
            public int g = -1;

            {
                this.f12265c = CompactHashSet.this.h;
                this.f = CompactHashSet.this.k();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f >= 0) {
                    return true;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                CompactHashSet compactHashSet = CompactHashSet.this;
                if (compactHashSet.h == this.f12265c) {
                    if (hasNext()) {
                        int i2 = this.f;
                        this.g = i2;
                        Object obj = compactHashSet.t()[i2];
                        this.f = compactHashSet.m(this.f);
                        return obj;
                    }
                    throw new NoSuchElementException();
                }
                throw new ConcurrentModificationException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                boolean z;
                CompactHashSet compactHashSet = CompactHashSet.this;
                if (compactHashSet.h == this.f12265c) {
                    if (this.g >= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    CollectPreconditions.d(z);
                    this.f12265c += 32;
                    compactHashSet.remove(compactHashSet.t()[this.g]);
                    this.f = compactHashSet.a(this.f, this.g);
                    this.g = -1;
                    return;
                }
                throw new ConcurrentModificationException();
            }
        };
    }

    public int k() {
        if (isEmpty()) {
            return -1;
        }
        return 0;
    }

    public int m(int i) {
        int i2 = i + 1;
        if (i2 < this.i) {
            return i2;
        }
        return -1;
    }

    public void p() {
        this.h = Ints.a(0, 1);
    }

    public void q(Object obj, int i, int i2, int i3) {
        u()[i] = CompactHashing.b(i2, 0, i3);
        t()[i] = obj;
    }

    public void r(int i, int i2) {
        Object obj = this.f12264c;
        Objects.requireNonNull(obj);
        int[] u = u();
        Object[] t = t();
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object obj2 = t[i3];
            t[i] = obj2;
            t[i3] = null;
            u[i] = u[i3];
            u[i3] = 0;
            int c2 = Hashing.c(obj2) & i2;
            int e = CompactHashing.e(c2, obj);
            if (e == size) {
                CompactHashing.f(c2, i + 1, obj);
                return;
            }
            while (true) {
                int i4 = e - 1;
                int i5 = u[i4];
                int i6 = i5 & i2;
                if (i6 == size) {
                    u[i4] = CompactHashing.b(i5, i + 1, i2);
                    return;
                }
                e = i6;
            }
        } else {
            t[i] = null;
            u[i] = 0;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!s()) {
            Set i = i();
            if (i != null) {
                return i.remove(obj);
            }
            int i2 = (1 << (this.h & 31)) - 1;
            Object obj2 = this.f12264c;
            Objects.requireNonNull(obj2);
            int d = CompactHashing.d(obj, null, i2, obj2, u(), t(), null);
            if (d == -1) {
                return false;
            }
            r(d, i2);
            this.i--;
            this.h += 32;
            return true;
        }
        return false;
    }

    public final boolean s() {
        if (this.f12264c == null) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Set i = i();
        if (i != null) {
            return i.size();
        }
        return this.i;
    }

    public final Object[] t() {
        Object[] objArr = this.g;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (s()) {
            return new Object[0];
        }
        Set i = i();
        return i != null ? i.toArray() : Arrays.copyOf(t(), this.i);
    }

    public final int[] u() {
        int[] iArr = this.f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public void v(int i) {
        this.f = Arrays.copyOf(u(), i);
        this.g = Arrays.copyOf(t(), i);
    }

    public final int w(int i, int i2, int i3, int i4) {
        Object a2 = CompactHashing.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            CompactHashing.f(i3 & i5, i4 + 1, a2);
        }
        Object obj = this.f12264c;
        Objects.requireNonNull(obj);
        int[] u = u();
        for (int i6 = 0; i6 <= i; i6++) {
            int e = CompactHashing.e(i6, obj);
            while (e != 0) {
                int i7 = e - 1;
                int i8 = u[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int e2 = CompactHashing.e(i10, a2);
                CompactHashing.f(i10, e, a2);
                u[i7] = CompactHashing.b(i9, e2, i5);
                e = i8 & i;
            }
        }
        this.f12264c = a2;
        this.h = CompactHashing.b(this.h, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray(Object[] objArr) {
        if (s()) {
            if (objArr.length > 0) {
                objArr[0] = null;
            }
            return objArr;
        }
        Set i = i();
        if (i != null) {
            return i.toArray(objArr);
        }
        Object[] t = t();
        int i2 = this.i;
        Preconditions.j(0, i2, t.length);
        if (objArr.length < i2) {
            if (objArr.length != 0) {
                objArr = Arrays.copyOf(objArr, 0);
            }
            objArr = Arrays.copyOf(objArr, i2);
        } else if (objArr.length > i2) {
            objArr[i2] = null;
        }
        System.arraycopy(t, 0, objArr, 0, i2);
        return objArr;
    }
}
