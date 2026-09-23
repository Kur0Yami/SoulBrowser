package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.ads.a;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfw extends zzeh implements RandomAccess, zzfz {
    public static final int[] h;
    public static final zzfw i;
    public int[] f;
    public int g;

    static {
        int[] iArr = new int[0];
        h = iArr;
        i = new zzfw(iArr, 0, false);
    }

    public zzfw(int[] iArr, int i2, boolean z) {
        super(z);
        this.f = iArr;
        this.g = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.List
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
                int[] iArr2 = new int[a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, iArr2, 0, i2);
                System.arraycopy(this.f, i2, iArr2, i4, this.g - i2);
                this.f = iArr2;
            }
            this.f[i2] = intValue;
            this.g++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i2, this.g, ", Size:"));
    }

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = zzgb.f11506a;
        collection.getClass();
        if (!(collection instanceof zzfw)) {
            return super.addAll(collection);
        }
        zzfw zzfwVar = (zzfw) collection;
        int i2 = zzfwVar.g;
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
            System.arraycopy(zzfwVar.f, 0, this.f, this.g, zzfwVar.g);
            this.g = i4;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final int c(int i2) {
        i(i2);
        return this.f[i2];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfw)) {
            return super.equals(obj);
        }
        zzfw zzfwVar = (zzfw) obj;
        if (this.g != zzfwVar.g) {
            return false;
        }
        int[] iArr = zzfwVar.f;
        for (int i2 = 0; i2 < this.g; i2++) {
            if (this.f[i2] != iArr[i2]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzga
    public final /* bridge */ /* synthetic */ zzga f(int i2) {
        int[] copyOf;
        if (i2 >= this.g) {
            if (i2 == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i2);
            }
            return new zzfw(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    public final void g(int i2) {
        a();
        int i3 = this.g;
        int length = this.f.length;
        if (i3 == length) {
            int[] iArr = new int[a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, iArr, 0, this.g);
            this.f = iArr;
        }
        int[] iArr2 = this.f;
        int i4 = this.g;
        this.g = i4 + 1;
        iArr2[i4] = i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i2) {
        i(i2);
        return Integer.valueOf(this.f[i2]);
    }

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i2 = 1;
        for (int i3 = 0; i3 < this.g; i3++) {
            i2 = (i2 * 31) + this.f[i3];
        }
        return i2;
    }

    public final void i(int i2) {
        if (i2 >= 0 && i2 < this.g) {
        } else {
            throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i2, this.g, ", Size:"));
        }
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

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i2) {
        a();
        i(i2);
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

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i2, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        i(i2);
        int[] iArr = this.f;
        int i3 = iArr[i2];
        iArr[i2] = intValue;
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.play_billing.zzeh, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Integer) obj).intValue());
        return true;
    }
}
