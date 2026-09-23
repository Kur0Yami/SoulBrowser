package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class zzyx extends zzxa implements RandomAccess, zzyk {
    public static final long[] h;
    public static final zzyx i;
    public long[] f;
    public int g;

    static {
        long[] jArr = new long[0];
        h = jArr;
        i = new zzyx(jArr, 0, false);
    }

    public zzyx(long[] jArr, int i2, boolean z) {
        super(z);
        this.f = jArr;
        this.g = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        long longValue = ((Long) obj).longValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.g)) {
            int i4 = i2 + 1;
            long[] jArr = this.f;
            int length = jArr.length;
            if (i3 < length) {
                System.arraycopy(jArr, i2, jArr, i4, i3 - i2);
            } else {
                long[] jArr2 = new long[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, jArr2, 0, i2);
                System.arraycopy(this.f, i2, jArr2, i4, this.g - i2);
                this.f = jArr2;
            }
            this.f[i2] = longValue;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzxd.a(this.g, i2, (byte) 13, "Index:", ", Size:"));
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = zzym.f9882a;
        collection.getClass();
        if (!(collection instanceof zzyx)) {
            return super.addAll(collection);
        }
        zzyx zzyxVar = (zzyx) collection;
        int i2 = zzyxVar.g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            long[] jArr = this.f;
            if (i4 > jArr.length) {
                this.f = Arrays.copyOf(jArr, i4);
            }
            System.arraycopy(zzyxVar.f, 0, this.f, this.g, zzyxVar.g);
            this.g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final long c(int i2) {
        g(i2);
        return this.f[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzyx)) {
            return super.equals(obj);
        }
        zzyx zzyxVar = (zzyx) obj;
        if (this.g != zzyxVar.g) {
            return false;
        }
        long[] jArr = zzyxVar.f;
        for (int i2 = 0; i2 < this.g; i2++) {
            if (this.f[i2] != jArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public final void g(int i2) {
        if (i2 >= 0 && i2 < this.g) {
        } else {
            throw new IndexOutOfBoundsException(zzxd.a(this.g, i2, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        g(i2);
        return Long.valueOf(this.f[i2]);
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.g; i3++) {
            long j = this.f[i3];
            Charset charset = zzym.f9882a;
            i2 = (i2 * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i2 = this.g;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f[i3] == longValue) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        a();
        g(i2);
        long[] jArr = this.f;
        long j = jArr[i2];
        if (i2 < this.g - 1) {
            System.arraycopy(jArr, i2 + 1, jArr, i2, (r3 - i2) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            long[] jArr = this.f;
            System.arraycopy(jArr, i3, jArr, i2, this.g - i3);
            this.g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        g(i2);
        long[] jArr = this.f;
        long j = jArr[i2];
        jArr[i2] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.cast.zzyl
    public final zzyl zzf(int i2) {
        long[] copyOf;
        if (i2 >= this.g) {
            if (i2 == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i2);
            }
            return new zzyx(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        int i2 = this.g;
        int length = this.f.length;
        if (i2 == length) {
            long[] jArr = new long[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, jArr, 0, this.g);
            this.f = jArr;
        }
        long[] jArr2 = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        jArr2[i3] = longValue;
        return true;
    }
}
