package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzye extends zzxa implements RandomAccess, zzyj {
    public static final int[] h;
    public static final zzye i;
    public int[] f;
    public int g;

    static {
        int[] iArr = new int[0];
        h = iArr;
        i = new zzye(iArr, 0, false);
    }

    public zzye(int[] iArr, int i2, boolean z) {
        super(z);
        this.f = iArr;
        this.g = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzyj
    public final void S(int i2) {
        a();
        int i3 = this.g;
        int length = this.f.length;
        if (i3 == length) {
            int[] iArr = new int[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, iArr, 0, this.g);
            this.f = iArr;
        }
        int[] iArr2 = this.f;
        int i4 = this.g;
        this.g = i4 + 1;
        iArr2[i4] = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final void add(int i2, Object obj) {
        int i3;
        int intValue = ((Integer) obj).intValue();
        a();
        if (i2 >= 0 && i2 <= (i3 = this.g)) {
            int i4 = i2 + 1;
            int[] iArr = this.f;
            int length = iArr.length;
            if (i3 < length) {
                System.arraycopy(iArr, i2, iArr, i4, i3 - i2);
            } else {
                int[] iArr2 = new int[com.google.android.gms.internal.ads.a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, iArr2, 0, i2);
                System.arraycopy(this.f, i2, iArr2, i4, this.g - i2);
                this.f = iArr2;
            }
            this.f[i2] = intValue;
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
        if (!(collection instanceof zzye)) {
            return super.addAll(collection);
        }
        zzye zzyeVar = (zzye) collection;
        int i2 = zzyeVar.g;
        if (i2 == 0) {
            return false;
        }
        int i3 = this.g;
        if (Integer.MAX_VALUE - i3 >= i2) {
            int i4 = i3 + i2;
            int[] iArr = this.f;
            if (i4 > iArr.length) {
                this.f = Arrays.copyOf(iArr, i4);
            }
            System.arraycopy(zzyeVar.f, 0, this.f, this.g, zzyeVar.g);
            this.g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // com.google.android.gms.internal.cast.zzyl
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final zzyj zzf(int i2) {
        int[] copyOf;
        if (i2 >= this.g) {
            if (i2 == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i2);
            }
            return new zzye(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    public final int c(int i2) {
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
        if (!(obj instanceof zzye)) {
            return super.equals(obj);
        }
        zzye zzyeVar = (zzye) obj;
        if (this.g != zzyeVar.g) {
            return false;
        }
        int[] iArr = zzyeVar.f;
        for (int i2 = 0; i2 < this.g; i2++) {
            if (this.f[i2] != iArr[i2]) {
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
        return Integer.valueOf(this.f[i2]);
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.g; i3++) {
            i2 = (i2 * 31) + this.f[i3];
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i2 = this.g;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f[i3] == intValue) {
                return i3;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        a();
        g(i2);
        int[] iArr = this.f;
        int i3 = iArr[i2];
        if (i2 < this.g - 1) {
            System.arraycopy(iArr, i2 + 1, iArr, i2, (r2 - i2) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i2, int i3) {
        a();
        if (i3 >= i2) {
            int[] iArr = this.f;
            System.arraycopy(iArr, i3, iArr, i2, this.g - i3);
            this.g -= i3 - i2;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        g(i2);
        int[] iArr = this.f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.cast.zzxa, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        S(((Integer) obj).intValue());
        return true;
    }
}
