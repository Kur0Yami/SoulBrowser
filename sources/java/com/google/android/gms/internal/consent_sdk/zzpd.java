package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.internal.ads.a;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes.dex */
final class zzpd extends zzpb implements RandomAccess, zzqr {
    public static final boolean[] h;
    public boolean[] f;
    public int g;

    static {
        boolean[] zArr = new boolean[0];
        h = zArr;
        new zzpd(zArr, 0, false);
    }

    public zzpd(boolean[] zArr, int i, boolean z) {
        super(z);
        this.f = zArr;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i >= 0 && i <= (i2 = this.g)) {
            int i3 = i + 1;
            boolean[] zArr = this.f;
            int length = zArr.length;
            if (i2 < length) {
                System.arraycopy(zArr, i, zArr, i3, i2 - i);
            } else {
                boolean[] zArr2 = new boolean[a.e(length, 3, 2, 1, 10)];
                System.arraycopy(this.f, 0, zArr2, 0, i);
                System.arraycopy(this.f, i, zArr2, i3, this.g - i);
                this.f = zArr2;
            }
            this.f[i] = booleanValue;
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
        if (!(collection instanceof zzpd)) {
            return super.addAll(collection);
        }
        zzpd zzpdVar = (zzpd) collection;
        int i = zzpdVar.g;
        if (i == 0) {
            return false;
        }
        int i2 = this.g;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.f;
            if (i3 > zArr.length) {
                this.f = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(zzpdVar.f, 0, this.f, this.g, zzpdVar.g);
            this.g = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final void c(int i) {
        if (i >= 0 && i < this.g) {
        } else {
            throw new IndexOutOfBoundsException(androidx.work.impl.workers.a.s("Index:", i, this.g, ", Size:"));
        }
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
        if (!(obj instanceof zzpd)) {
            return super.equals(obj);
        }
        zzpd zzpdVar = (zzpd) obj;
        if (this.g != zzpdVar.g) {
            return false;
        }
        boolean[] zArr = zzpdVar.f;
        for (int i = 0; i < this.g; i++) {
            if (this.f[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzqr
    public final /* bridge */ /* synthetic */ zzqr f(int i) {
        boolean[] copyOf;
        if (i >= this.g) {
            if (i == 0) {
                copyOf = h;
            } else {
                copyOf = Arrays.copyOf(this.f, i);
            }
            return new zzpd(copyOf, this.g, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        c(i);
        return Boolean.valueOf(this.f[i]);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i;
        int i2 = 1;
        for (int i3 = 0; i3 < this.g; i3++) {
            int i4 = i2 * 31;
            boolean z = this.f[i3];
            Charset charset = zzqs.f10085a;
            if (z) {
                i = 1231;
            } else {
                i = 1237;
            }
            i2 = i4 + i;
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f[i2] == booleanValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        a();
        c(i);
        boolean[] zArr = this.f;
        boolean z = zArr[i];
        if (i < this.g - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.g--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        a();
        if (i2 >= i) {
            boolean[] zArr = this.f;
            System.arraycopy(zArr, i2, zArr, i, this.g - i2);
            this.g -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        c(i);
        boolean[] zArr = this.f;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpb, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        int i = this.g;
        int length = this.f.length;
        if (i == length) {
            boolean[] zArr = new boolean[a.e(length, 3, 2, 1, 10)];
            System.arraycopy(this.f, 0, zArr, 0, this.g);
            this.f = zArr;
        }
        boolean[] zArr2 = this.f;
        int i2 = this.g;
        this.g = i2 + 1;
        zArr2[i2] = booleanValue;
        return true;
    }
}
