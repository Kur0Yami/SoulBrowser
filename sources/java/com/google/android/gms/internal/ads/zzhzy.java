package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhzy extends zzhyx implements RandomAccess, zziau, zzicl {
    public static final double[] h;
    public double[] f;
    public int g;

    static {
        double[] dArr = new double[0];
        h = dArr;
        new zzhzy(dArr, 0, false);
    }

    public zzhzy(double[] dArr, int i, boolean z) {
        super(z);
        this.f = dArr;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i >= 0 && i <= (i2 = this.g)) {
            int i3 = i + 1;
            double[] dArr = this.f;
            int length = dArr.length;
            if (i2 < length) {
                System.arraycopy(dArr, i, dArr, i3, i2 - i);
            } else {
                double[] dArr2 = new double[a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, dArr2, 0, i);
                System.arraycopy(this.f, i, dArr2, i3, this.g - i);
                this.f = dArr2;
            }
            this.f[i] = doubleValue;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i));
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = zzibe.f8915a;
        collection.getClass();
        if (!(collection instanceof zzhzy)) {
            return super.addAll(collection);
        }
        zzhzy zzhzyVar = (zzhzy) collection;
        int i = zzhzyVar.g;
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
            System.arraycopy(zzhzyVar.f, 0, this.f, this.g, zzhzyVar.g);
            this.g = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final void c(double d) {
        a();
        int i = this.g;
        int length = this.f.length;
        if (i == length) {
            double[] dArr = new double[a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, dArr, 0, this.g);
            this.f = dArr;
        }
        double[] dArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        dArr2[i2] = d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzibd
    public final zzibd e(int i) {
        double[] copyOf;
        if (i >= this.g) {
            if (i == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i);
            }
            return new zzhzy(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhzy)) {
            return super.equals(obj);
        }
        zzhzy zzhzyVar = (zzhzy) obj;
        if (this.g != zzhzyVar.g) {
            return false;
        }
        double[] dArr = zzhzyVar.f;
        for (int i = 0; i < this.g; i++) {
            if (Double.doubleToLongBits(this.f[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    public final void g(int i) {
        if (i >= 0 && i < this.g) {
        } else {
            throw new IndexOutOfBoundsException(i(i));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        g(i);
        return Double.valueOf(this.f[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f[i2]);
            Charset charset = zzibe.f8915a;
            i = (i * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i;
    }

    public final String i(int i) {
        int i2 = this.g;
        return com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 13 + String.valueOf(i2).length()), "Index:", i, ", Size:", i2);
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

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
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

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
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

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        c(((Double) obj).doubleValue());
        return true;
    }
}
