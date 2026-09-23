package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class zzxy extends zzxa implements RandomAccess, zzyi {
    public static final float[] h;
    public static final zzxy i;
    public float[] f;
    public int g;

    static {
        float[] fArr = new float[0];
        h = fArr;
        i = new zzxy(fArr, 0, false);
    }

    public zzxy(float[] fArr, int i2, boolean z) {
        super(z);
        this.f = fArr;
        this.g = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.g)) {
            int i4 = i2 + 1;
            float[] fArr = this.f;
            int length = fArr.length;
            if (i3 < length) {
                System.arraycopy(fArr, i2, fArr, i4, i3 - i2);
            } else {
                float[] fArr2 = new float[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, fArr2, 0, i2);
                System.arraycopy(this.f, i2, fArr2, i4, this.g - i2);
                this.f = fArr2;
            }
            this.f[i2] = floatValue;
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
        if (!(collection instanceof zzxy)) {
            return super.addAll(collection);
        }
        zzxy zzxyVar = (zzxy) collection;
        int i2 = zzxyVar.g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            float[] fArr = this.f;
            if (i4 > fArr.length) {
                this.f = Arrays.copyOf(fArr, i4);
            }
            System.arraycopy(zzxyVar.f, 0, this.f, this.g, zzxyVar.g);
            this.g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    public final void d(int i2) {
        if (i2 >= 0 && i2 < this.g) {
        } else {
            throw new IndexOutOfBoundsException(zzxd.a(this.g, i2, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzxy)) {
            return super.equals(obj);
        }
        zzxy zzxyVar = (zzxy) obj;
        if (this.g != zzxyVar.g) {
            return false;
        }
        float[] fArr = zzxyVar.f;
        for (int i2 = 0; i2 < this.g; i2++) {
            if (Float.floatToIntBits(this.f[i2]) != Float.floatToIntBits(fArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        d(i2);
        return Float.valueOf(this.f[i2]);
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.g; i3++) {
            i2 = (i2 * 31) + Float.floatToIntBits(this.f[i3]);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i2 = this.g;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f[i3] == floatValue) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        a();
        d(i2);
        float[] fArr = this.f;
        float f = fArr[i2];
        if (i2 < this.g - 1) {
            System.arraycopy(fArr, i2 + 1, fArr, i2, (r2 - i2) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            float[] fArr = this.f;
            System.arraycopy(fArr, i3, fArr, i2, this.g - i3);
            this.g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        d(i2);
        float[] fArr = this.f;
        float f = fArr[i2];
        fArr[i2] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.cast.zzyl
    public final zzyl zzf(int i2) {
        float[] copyOf;
        if (i2 >= this.g) {
            if (i2 == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i2);
            }
            return new zzxy(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        int i2 = this.g;
        int length = this.f.length;
        if (i2 == length) {
            float[] fArr = new float[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, fArr, 0, this.g);
            this.f = fArr;
        }
        float[] fArr2 = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        fArr2[i3] = floatValue;
        return true;
    }
}
