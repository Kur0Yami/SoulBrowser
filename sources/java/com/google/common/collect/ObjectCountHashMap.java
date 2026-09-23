package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multisets;
import j$.util.Objects;
import java.util.Arrays;
import org.jspecify.annotations.NullMarked;

@GwtCompatible
@NullMarked
/* loaded from: classes3.dex */
class ObjectCountHashMap<K> {

    /* renamed from: a, reason: collision with root package name */
    public transient Object[] f12380a;
    public transient int[] b;

    /* renamed from: c, reason: collision with root package name */
    public transient int f12381c;
    public transient int d;
    public transient int[] e;
    public transient long[] f;
    public transient float g;
    public transient int h;

    /* loaded from: classes3.dex */
    public final class MapEntry extends Multisets.AbstractEntry<K> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12382c;
        public int f;

        public MapEntry(int i) {
            this.f12382c = ObjectCountHashMap.this.f12380a[i];
            this.f = i;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final Object a() {
            return this.f12382c;
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            int i = this.f;
            Object obj = this.f12382c;
            ObjectCountHashMap objectCountHashMap = ObjectCountHashMap.this;
            if (i == -1 || i >= objectCountHashMap.f12381c || !Objects.equals(obj, objectCountHashMap.f12380a[i])) {
                this.f = objectCountHashMap.g(obj);
            }
            int i2 = this.f;
            if (i2 == -1) {
                return 0;
            }
            return objectCountHashMap.b[i2];
        }
    }

    public void a() {
        this.d++;
        Arrays.fill(this.f12380a, 0, this.f12381c, (Object) null);
        Arrays.fill(this.b, 0, this.f12381c, 0);
        Arrays.fill(this.e, -1);
        Arrays.fill(this.f, -1L);
        this.f12381c = 0;
    }

    public final void b(int i) {
        if (i > this.f.length) {
            o(i);
        }
        if (i >= this.h) {
            p(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    public int c() {
        if (this.f12381c == 0) {
            return -1;
        }
        return 0;
    }

    public final int d(Object obj) {
        int g = g(obj);
        if (g == -1) {
            return 0;
        }
        return this.b[g];
    }

    public final Object e(int i) {
        Preconditions.g(i, this.f12381c);
        return this.f12380a[i];
    }

    public final int f(int i) {
        Preconditions.g(i, this.f12381c);
        return this.b[i];
    }

    public final int g(Object obj) {
        int c2 = Hashing.c(obj);
        int i = this.e[(r1.length - 1) & c2];
        while (i != -1) {
            long j = this.f[i];
            if (((int) (j >>> 32)) == c2 && Objects.equals(obj, this.f12380a[i])) {
                return i;
            }
            i = (int) j;
        }
        return -1;
    }

    public void h(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z, "Initial capacity must be non-negative");
        int a2 = Hashing.a(1.0f, i);
        int[] iArr = new int[a2];
        Arrays.fill(iArr, -1);
        this.e = iArr;
        this.g = 1.0f;
        this.f12380a = new Object[i];
        this.b = new int[i];
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        this.f = jArr;
        this.h = Math.max(1, (int) (a2 * 1.0f));
    }

    public void i(Object obj, int i, int i2, int i3) {
        this.f[i] = (i3 << 32) | 4294967295L;
        this.f12380a[i] = obj;
        this.b[i] = i2;
    }

    public void j(int i) {
        int i2 = this.f12381c - 1;
        if (i < i2) {
            Object[] objArr = this.f12380a;
            objArr[i] = objArr[i2];
            int[] iArr = this.b;
            iArr[i] = iArr[i2];
            objArr[i2] = null;
            iArr[i2] = 0;
            long[] jArr = this.f;
            long j = jArr[i2];
            jArr[i] = j;
            jArr[i2] = -1;
            int[] iArr2 = this.e;
            int length = ((int) (j >>> 32)) & (iArr2.length - 1);
            int i3 = iArr2[length];
            if (i3 == i2) {
                iArr2[length] = i;
                return;
            }
            while (true) {
                long[] jArr2 = this.f;
                long j2 = jArr2[i3];
                int i4 = (int) j2;
                if (i4 == i2) {
                    jArr2[i3] = (j2 & (-4294967296L)) | (4294967295L & i);
                    return;
                }
                i3 = i4;
            }
        } else {
            this.f12380a[i] = null;
            this.b[i] = 0;
            this.f[i] = -1;
        }
    }

    public int k(int i) {
        int i2 = i + 1;
        if (i2 < this.f12381c) {
            return i2;
        }
        return -1;
    }

    public int l(int i, int i2) {
        return i - 1;
    }

    public final int m(int i, Object obj) {
        CollectPreconditions.c(i, "count");
        long[] jArr = this.f;
        Object[] objArr = this.f12380a;
        int[] iArr = this.b;
        int c2 = Hashing.c(obj);
        int[] iArr2 = this.e;
        int length = (iArr2.length - 1) & c2;
        int i2 = this.f12381c;
        int i3 = iArr2[length];
        if (i3 == -1) {
            iArr2[length] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (((int) (j >>> 32)) == c2 && Objects.equals(obj, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return i4;
                }
                int i5 = (int) j;
                if (i5 == -1) {
                    jArr[i3] = ((-4294967296L) & j) | (4294967295L & i2);
                    break;
                }
                i3 = i5;
            }
        }
        int i6 = Integer.MAX_VALUE;
        if (i2 != Integer.MAX_VALUE) {
            int i7 = i2 + 1;
            int length2 = this.f.length;
            if (i7 > length2) {
                int max = Math.max(1, length2 >>> 1) + length2;
                if (max >= 0) {
                    i6 = max;
                }
                if (i6 != length2) {
                    o(i6);
                }
            }
            i(obj, i2, i, c2);
            this.f12381c = i7;
            if (i2 >= this.h) {
                p(this.e.length * 2);
            }
            this.d++;
            return 0;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    public final int n(int i) {
        Object obj = this.f12380a[i];
        int i2 = (int) (this.f[i] >>> 32);
        int length = (r1.length - 1) & i2;
        int i3 = this.e[length];
        if (i3 != -1) {
            int i4 = -1;
            while (true) {
                if (((int) (this.f[i3] >>> 32)) == i2 && Objects.equals(obj, this.f12380a[i3])) {
                    int i5 = this.b[i3];
                    if (i4 == -1) {
                        this.e[length] = (int) this.f[i3];
                    } else {
                        long[] jArr = this.f;
                        jArr[i4] = (jArr[i4] & (-4294967296L)) | (4294967295L & ((int) jArr[i3]));
                    }
                    j(i3);
                    this.f12381c--;
                    this.d++;
                    return i5;
                }
                int i6 = (int) this.f[i3];
                if (i6 == -1) {
                    break;
                }
                i4 = i3;
                i3 = i6;
            }
        }
        return 0;
    }

    public void o(int i) {
        this.f12380a = Arrays.copyOf(this.f12380a, i);
        this.b = Arrays.copyOf(this.b, i);
        long[] jArr = this.f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(copyOf, length, i, -1L);
        }
        this.f = copyOf;
    }

    public final void p(int i) {
        if (this.e.length >= 1073741824) {
            this.h = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.g)) + 1;
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        long[] jArr = this.f;
        int i3 = i - 1;
        for (int i4 = 0; i4 < this.f12381c; i4++) {
            int i5 = (int) (jArr[i4] >>> 32);
            int i6 = i5 & i3;
            int i7 = iArr[i6];
            iArr[i6] = i4;
            jArr[i4] = (i5 << 32) | (i7 & 4294967295L);
        }
        this.h = i2;
        this.e = iArr;
    }
}
