package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgsk extends AbstractMap implements Serializable {
    public static final Object n = new Object();

    /* renamed from: c, reason: collision with root package name */
    public transient Object f8235c;
    public transient int[] f;
    public transient Object[] g;
    public transient Object[] h;
    public transient int i = Math.min(Math.max(3, 1), 1073741823);
    public transient int j;
    public transient Set k;
    public transient Set l;
    public transient Collection m;

    public zzgsk() {
    }

    public final int[] a() {
        int[] iArr = this.f;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] b() {
        Object[] objArr = this.g;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final Object[] c() {
        Object[] objArr = this.h;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (d()) {
            return;
        }
        this.i += 32;
        Map e = e();
        if (e != null) {
            this.i = Math.min(Math.max(size(), 3), 1073741823);
            e.clear();
            this.f8235c = null;
            this.j = 0;
            return;
        }
        Arrays.fill(b(), 0, this.j, (Object) null);
        Arrays.fill(c(), 0, this.j, (Object) null);
        Object obj = this.f8235c;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(a(), 0, this.j, 0);
        this.j = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map e = e();
        if (e != null) {
            return e.containsKey(obj);
        }
        if (i(obj) == -1) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map e = e();
        if (e == null) {
            for (int i = 0; i < this.j; i++) {
                if (Objects.equals(obj, c()[i])) {
                    return true;
                }
            }
            return false;
        }
        return e.containsValue(obj);
    }

    public final boolean d() {
        return this.f8235c == null;
    }

    public final Map e() {
        Object obj = this.f8235c;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.l;
        if (set == null) {
            zzgsf zzgsfVar = new zzgsf(this);
            this.l = zzgsfVar;
            return zzgsfVar;
        }
        return set;
    }

    public final void f(int i, int i2) {
        Object obj = this.f8235c;
        Objects.requireNonNull(obj);
        int[] a2 = a();
        Object[] b = b();
        Object[] c2 = c();
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            int i4 = i + 1;
            Object obj2 = b[i3];
            b[i] = obj2;
            c2[i] = c2[i3];
            b[i3] = null;
            c2[i3] = null;
            a2[i] = a2[i3];
            a2[i3] = 0;
            int b2 = zzgsw.b(obj2) & i2;
            int b3 = zzgsl.b(b2, obj);
            if (b3 == size) {
                zzgsl.c(b2, i4, obj);
                return;
            }
            while (true) {
                int i5 = b3 - 1;
                int i6 = a2[i5];
                int i7 = i6 & i2;
                if (i7 != size) {
                    b3 = i7;
                } else {
                    a2[i5] = (i6 & (~i2)) | (i2 & i4);
                    return;
                }
            }
        } else {
            b[i] = null;
            c2[i] = null;
            a2[i] = 0;
        }
    }

    public final int g() {
        return (1 << (this.i & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map e = e();
        if (e != null) {
            return e.get(obj);
        }
        int i = i(obj);
        if (i == -1) {
            return null;
        }
        return c()[i];
    }

    public final int h(int i, int i2, int i3, int i4) {
        int i5 = i2 - 1;
        Object a2 = zzgsl.a(i2);
        if (i4 != 0) {
            zzgsl.c(i3 & i5, i4 + 1, a2);
        }
        Object obj = this.f8235c;
        Objects.requireNonNull(obj);
        int[] a3 = a();
        for (int i6 = 0; i6 <= i; i6++) {
            int b = zzgsl.b(i6, obj);
            while (b != 0) {
                int i7 = b - 1;
                int i8 = a3[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int b2 = zzgsl.b(i10, a2);
                zzgsl.c(i10, b, a2);
                a3[i7] = ((~i5) & i9) | (b2 & i5);
                b = i8 & i;
            }
        }
        this.f8235c = a2;
        this.i = ((32 - Integer.numberOfLeadingZeros(i5)) & 31) | (this.i & (-32));
        return i5;
    }

    public final int i(Object obj) {
        if (d()) {
            return -1;
        }
        int b = zzgsw.b(obj);
        int g = g();
        Object obj2 = this.f8235c;
        Objects.requireNonNull(obj2);
        int b2 = zzgsl.b(b & g, obj2);
        if (b2 != 0) {
            int i = ~g;
            int i2 = b & i;
            do {
                int i3 = b2 - 1;
                int i4 = a()[i3];
                if ((i4 & i) == i2 && Objects.equals(obj, b()[i3])) {
                    return i3;
                }
                b2 = i4 & g;
            } while (b2 != 0);
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final Object j(Object obj) {
        if (!d()) {
            int g = g();
            Object obj2 = this.f8235c;
            Objects.requireNonNull(obj2);
            int d = zzgsl.d(obj, null, g, obj2, a(), b(), null);
            if (d != -1) {
                Object obj3 = c()[d];
                f(d, g);
                this.j--;
                this.i += 32;
                return obj3;
            }
        }
        return n;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.k;
        if (set == null) {
            zzgsh zzgshVar = new zzgsh(this);
            this.k = zzgshVar;
            return zzgshVar;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        int i2;
        int i3;
        int i4 = 32;
        if (d()) {
            zzgqa.g("Arrays already allocated", d());
            int i5 = this.i;
            int max = Math.max(i5 + 1, 2);
            int highestOneBit = Integer.highestOneBit(max);
            if (max > highestOneBit && (highestOneBit = highestOneBit + highestOneBit) <= 0) {
                highestOneBit = 1073741824;
            }
            int max2 = Math.max(4, highestOneBit);
            this.f8235c = zzgsl.a(max2);
            this.i = ((32 - Integer.numberOfLeadingZeros(max2 - 1)) & 31) | (this.i & (-32));
            this.f = new int[i5];
            this.g = new Object[i5];
            this.h = new Object[i5];
        }
        Map e = e();
        if (e != null) {
            return e.put(obj, obj2);
        }
        int[] a2 = a();
        Object[] b = b();
        Object[] c2 = c();
        int i6 = this.j;
        int i7 = i6 + 1;
        int b2 = zzgsw.b(obj);
        int g = g();
        int i8 = b2 & g;
        Object obj3 = this.f8235c;
        Objects.requireNonNull(obj3);
        int b3 = zzgsl.b(i8, obj3);
        if (b3 == 0) {
            if (i7 > g) {
                if (g < 32) {
                    i3 = 4;
                } else {
                    i3 = 2;
                }
                g = h(g, (g + 1) * i3, b2, i6);
            } else {
                Object obj4 = this.f8235c;
                Objects.requireNonNull(obj4);
                zzgsl.c(i8, i7, obj4);
            }
            i = 1;
        } else {
            int i9 = ~g;
            int i10 = b2 & i9;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                int i13 = b3 - 1;
                int i14 = a2[i13];
                i = 1;
                int i15 = i14 & i9;
                int i16 = i4;
                if (i15 == i10 && Objects.equals(obj, b[i13])) {
                    Object obj5 = c2[i13];
                    c2[i13] = obj2;
                    return obj5;
                }
                int i17 = i14 & g;
                int i18 = i12 + 1;
                if (i17 == 0) {
                    if (i18 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(g() + 1, 1.0f);
                        if (isEmpty()) {
                            i11 = -1;
                        }
                        while (i11 >= 0) {
                            linkedHashMap.put(b()[i11], c()[i11]);
                            int i19 = i11 + 1;
                            if (i19 >= this.j) {
                                i11 = -1;
                            } else {
                                i11 = i19;
                            }
                        }
                        this.f8235c = linkedHashMap;
                        this.f = null;
                        this.g = null;
                        this.h = null;
                        this.i += 32;
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i7 > g) {
                        if (g < i16) {
                            i2 = 4;
                        } else {
                            i2 = 2;
                        }
                        g = h(g, (g + 1) * i2, b2, i6);
                    } else {
                        a2[i13] = (i7 & g) | i15;
                    }
                } else {
                    i12 = i18;
                    b3 = i17;
                    i4 = i16;
                }
            }
        }
        int length = a().length;
        if (i7 > length) {
            int i20 = i;
            int min = Math.min(1073741823, (Math.max(i20, length >>> 1) + length) | i20);
            if (min != length) {
                this.f = Arrays.copyOf(a(), min);
                this.g = Arrays.copyOf(b(), min);
                this.h = Arrays.copyOf(c(), min);
            }
        }
        a()[i6] = (~g) & b2;
        b()[i6] = obj;
        c()[i6] = obj2;
        this.j = i7;
        this.i += 32;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map e = e();
        if (e != null) {
            return e.remove(obj);
        }
        Object j = j(obj);
        if (j == n) {
            return null;
        }
        return j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map e = e();
        if (e != null) {
            return e.size();
        }
        return this.j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.m;
        if (collection == null) {
            zzgsj zzgsjVar = new zzgsj(this);
            this.m = zzgsjVar;
            return zzgsjVar;
        }
        return collection;
    }

    public zzgsk(int i) {
    }
}
