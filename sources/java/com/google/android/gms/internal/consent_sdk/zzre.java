package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.internal.ads.a;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class zzre extends zzpb implements RandomAccess, zzqr {
    public static final long[] h;
    public long[] f;
    public int g;

    static {
        long[] jArr = new long[0];
        h = jArr;
        new zzre(jArr, 0, false);
    }

    public zzre(long[] jArr, int i, boolean z) {
        super(z);
        this.f = jArr;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        a();
        if (i >= 0 && i <= (i2 = this.g)) {
            int i3 = i + 1;
            long[] jArr = this.f;
            int length = jArr.length;
            if (i2 < length) {
                System.arraycopy(jArr, i, jArr, i3, i2 - i);
            } else {
                long[] jArr2 = new long[a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, jArr2, 0, i);
                System.arraycopy(this.f, i, jArr2, i3, this.g - i);
                this.f = jArr2;
            }
            this.f[i] = longValue;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i, this.g, ", Size:"));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = zzqs.f10085a;
        collection.getClass();
        if (!(collection instanceof zzre)) {
            return super.addAll(collection);
        }
        zzre zzreVar = (zzre) collection;
        int i = zzreVar.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.f;
            if (i3 > jArr.length) {
                this.f = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(zzreVar.f, 0, this.f, this.g, zzreVar.g);
            this.g = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final long c(int i) {
        g(i);
        return this.f[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzre)) {
            return super.equals(obj);
        }
        zzre zzreVar = (zzre) obj;
        if (this.g != zzreVar.g) {
            return false;
        }
        long[] jArr = zzreVar.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzqr
    public final /* bridge */ /* synthetic */ zzqr f(int i) {
        long[] copyOf;
        if (i >= this.g) {
            if (i == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i);
            }
            return new zzre(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    public final void g(int i) {
        if (i >= 0 && i < this.g) {
        } else {
            throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i, this.g, ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        g(i);
        return Long.valueOf(this.f[i]);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            long j = this.f[i2];
            Charset charset = zzqs.f10085a;
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        g(i);
        long[] jArr = this.f;
        long j = jArr[i];
        if (i < this.g - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 >= i) {
            long[] jArr = this.f;
            System.arraycopy(jArr, i2, jArr, i, this.g - i2);
            this.g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        g(i);
        long[] jArr = this.f;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        int i = this.g;
        int length = this.f.length;
        if (i == length) {
            long[] jArr = new long[a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, jArr, 0, this.g);
            this.f = jArr;
        }
        long[] jArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        jArr2[i2] = longValue;
        return true;
    }
}
