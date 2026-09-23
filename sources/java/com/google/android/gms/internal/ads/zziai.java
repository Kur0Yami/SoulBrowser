package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zziai extends zzhyx implements RandomAccess, zziay, zzicl {
    public static final float[] h;
    public float[] f;
    public int g;

    static {
        float[] fArr = new float[0];
        h = fArr;
        new zziai(fArr, 0, false);
    }

    public zziai(float[] fArr, int i, boolean z) {
        super(z);
        this.f = fArr;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i >= 0 && i <= (i2 = this.g)) {
            int i3 = i + 1;
            float[] fArr = this.f;
            int length = fArr.length;
            if (i2 < length) {
                System.arraycopy(fArr, i, fArr, i3, i2 - i);
            } else {
                float[] fArr2 = new float[a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, fArr2, 0, i);
                System.arraycopy(this.f, i, fArr2, i3, this.g - i);
                this.f = fArr2;
            }
            this.f[i] = floatValue;
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
        if (!(collection instanceof zziai)) {
            return super.addAll(collection);
        }
        zziai zziaiVar = (zziai) collection;
        int i = zziaiVar.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.f;
            if (i3 > fArr.length) {
                this.f = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(zziaiVar.f, 0, this.f, this.g, zziaiVar.g);
            this.g = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final void c(float f) {
        a();
        int i = this.g;
        int length = this.f.length;
        if (i == length) {
            float[] fArr = new float[a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, fArr, 0, this.g);
            this.f = fArr;
        }
        float[] fArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        fArr2[i2] = f;
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
        float[] copyOf;
        if (i >= this.g) {
            if (i == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i);
            }
            return new zziai(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziai)) {
            return super.equals(obj);
        }
        zziai zziaiVar = (zziai) obj;
        if (this.g != zziaiVar.g) {
            return false;
        }
        float[] fArr = zziaiVar.f;
        for (int i = 0; i < this.g; i++) {
            if (Float.floatToIntBits(this.f[i]) != Float.floatToIntBits(fArr[i])) {
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
        return Float.valueOf(this.f[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.g; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.f[i2]);
        }
        return i;
    }

    public final String i(int i) {
        int i2 = this.g;
        return com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 13 + String.valueOf(i2).length()), "Index:", i, ", Size:", i2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == floatValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        g(i);
        float[] fArr = this.f;
        float f = fArr[i];
        if (i < this.g - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 >= i) {
            float[] fArr = this.f;
            System.arraycopy(fArr, i2, fArr, i, this.g - i2);
            this.g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        g(i);
        float[] fArr = this.f;
        float f = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzhyx, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        c(((Float) obj).floatValue());
        return true;
    }
}
