package com.google.android.gms.internal.cast;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzhz extends zzhr implements Set, j$.util.Set {
    public static final /* synthetic */ int g = 0;
    public transient zzhv f;

    public static int p(int i) {
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            return 1073741824;
        }
        throw new IllegalArgumentException("collection too large");
    }

    public static zzhz r(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int p = p(i);
                Object[] objArr2 = new Object[p];
                int i2 = p - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    zzib.a(i5, obj);
                    int hashCode = obj.hashCode();
                    int a2 = zzho.a(hashCode);
                    while (true) {
                        int i6 = a2 & i2;
                        Object obj2 = objArr2[i6];
                        if (obj2 == null) {
                            objArr[i4] = obj;
                            objArr2[i6] = obj;
                            i3 += hashCode;
                            i4++;
                            break;
                        }
                        if (!obj2.equals(obj)) {
                            a2++;
                        }
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzik(obj3);
                }
                if (p(i4) < p / 2) {
                    return r(i4, objArr);
                }
                int length = objArr.length;
                if (i4 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzii(objArr, objArr2, i3, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzik(obj4);
        }
        return zzii.n;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzhz) && (this instanceof zzii) && (((zzhz) obj) instanceof zzii) && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                    return false;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int i;
        int i2 = 0;
        for (Object obj : this) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public zzhv m() {
        zzhv zzhvVar = this.f;
        if (zzhvVar == null) {
            zzhv q = q();
            this.f = q;
            return q;
        }
        return zzhvVar;
    }

    public zzhv q() {
        Object[] array = toArray(zzhr.f9721c);
        zzim zzimVar = zzhv.f;
        return zzhv.p(array.length, array);
    }
}
