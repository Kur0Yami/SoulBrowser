package com.google.android.gms.internal.cast;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzq extends zzxa implements RandomAccess {
    public static final Object[] h;
    public static final zzzq i;
    public Object[] f;
    public int g;

    static {
        Object[] objArr = new Object[0];
        h = objArr;
        i = new zzzq(objArr, 0, false);
    }

    public zzzq(Object[] objArr, int i2, boolean z) {
        super(z);
        this.f = objArr;
        this.g = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        a();
        if (i2 >= 0 && i2 <= (i3 = this.g)) {
            int i4 = i2 + 1;
            Object[] objArr = this.f;
            int length = objArr.length;
            if (i3 < length) {
                System.arraycopy(objArr, i2, objArr, i4, i3 - i2);
            } else {
                Object[] objArr2 = new Object[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, objArr2, 0, i2);
                System.arraycopy(this.f, i2, objArr2, i4, this.g - i2);
                this.f = objArr2;
            }
            this.f[i2] = obj;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(zzxd.a(this.g, i2, (byte) 13, "Index:", ", Size:"));
    }

    public final void c(int i2) {
        if (i2 >= 0 && i2 < this.g) {
        } else {
            throw new IndexOutOfBoundsException(zzxd.a(this.g, i2, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i2) {
        c(i2);
        return this.f[i2];
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final Object remove(int i2) {
        a();
        c(i2);
        Object[] objArr = this.f;
        Object obj = objArr[i2];
        if (i2 < this.g - 1) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, (r2 - i2) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final Object set(int i2, Object obj) {
        a();
        c(i2);
        Object[] objArr = this.f;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.cast.zzyl
    public final /* bridge */ /* synthetic */ zzyl zzf(int i2) {
        Object[] copyOf;
        if (i2 >= this.g) {
            if (i2 == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i2);
            }
            return new zzzq(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        a();
        int i2 = this.g;
        int length = this.f.length;
        if (i2 == length) {
            this.f = Arrays.copyOf(this.f, com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10));
        }
        Object[] objArr = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        objArr[i3] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
