package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.ads.a;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class zzek extends zzdr implements RandomAccess, zzez, zzge {
    public double[] f;
    public int g;

    static {
        new zzek(new double[0], 0, false);
    }

    public zzek(double[] dArr, int i, boolean z) {
        super(z);
        this.f = dArr;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i >= 0 && i <= (i2 = this.g)) {
            double[] dArr = this.f;
            if (i2 < dArr.length) {
                System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
            } else {
                double[] dArr2 = new double[a.d(i2, 3, 2, 1)];
                System.arraycopy(dArr, 0, dArr2, 0, i);
                System.arraycopy(this.f, i, dArr2, i + 1, this.g - i);
                this.f = dArr2;
            }
            this.f[i] = doubleValue;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i, this.g, ", Size:"));
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = zzfa.f9540a;
        collection.getClass();
        if (!(collection instanceof zzek)) {
            return super.addAll(collection);
        }
        zzek zzekVar = (zzek) collection;
        int i = zzekVar.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.f;
            if (i3 > dArr.length) {
                this.f = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzekVar.f, 0, this.f, this.g, zzekVar.g);
            this.g = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final void c(double d) {
        a();
        int i = this.g;
        double[] dArr = this.f;
        if (i == dArr.length) {
            double[] dArr2 = new double[a.d(i, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.f = dArr2;
        }
        double[] dArr3 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzek)) {
            return super.equals(obj);
        }
        zzek zzekVar = (zzek) obj;
        if (this.g != zzekVar.g) {
            return false;
        }
        double[] dArr = zzekVar.f;
        for (int i = 0; i < this.g; i++) {
            if (Double.doubleToLongBits(this.f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzez
    public final /* bridge */ /* synthetic */ zzez f(int i) {
        if (i >= this.g) {
            return new zzek(Arrays.copyOf(this.f, i), this.g, true);
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
        return Double.valueOf(this.f[i]);
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f[i2]);
            Charset charset = zzfa.f9540a;
            i = (i * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        g(i);
        double[] dArr = this.f;
        double d = dArr[i];
        if (i < this.g - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 >= i) {
            double[] dArr = this.f;
            System.arraycopy(dArr, i2, dArr, i, this.g - i2);
            this.g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        g(i);
        double[] dArr = this.f;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.auth.zzdr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        c(((Double) obj).doubleValue());
        return true;
    }
}
