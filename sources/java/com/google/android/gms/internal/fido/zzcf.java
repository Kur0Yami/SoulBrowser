package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class zzcf extends zzby implements Set, j$.util.Set {
    public static final /* synthetic */ int g = 0;
    public transient zzcc f;

    public static zzcf m(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int q = q(i);
                Object[] objArr2 = new Object[q];
                int i2 = q - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    if (obj != null) {
                        int hashCode = obj.hashCode();
                        int rotateLeft = (int) (Integer.rotateLeft((int) (hashCode * (-862048943)), 15) * 461845907);
                        while (true) {
                            int i6 = rotateLeft & i2;
                            Object obj2 = objArr2[i6];
                            if (obj2 == null) {
                                objArr[i4] = obj;
                                objArr2[i6] = obj;
                                i3 += hashCode;
                                i4++;
                                break;
                            }
                            if (!obj2.equals(obj)) {
                                rotateLeft++;
                            }
                        }
                    } else {
                        throw new NullPointerException(a.e(i5, "at index "));
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new zzcz(obj3);
                }
                if (q(i4) < q / 2) {
                    return m(i4, objArr);
                }
                if (i4 <= 0) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzcu(objArr, objArr2, i3, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzcz(obj4);
        }
        return zzcu.n;
    }

    public static int q(int i) {
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

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzcf) || !p() || !((zzcf) obj).p() || hashCode() == obj.hashCode()) {
                if (obj != this) {
                    if (obj instanceof Set) {
                        Set set = (Set) obj;
                        try {
                            if (size() == set.size()) {
                                if (containsAll(set)) {
                                    return true;
                                }
                                return false;
                            }
                            return false;
                        } catch (ClassCastException | NullPointerException unused) {
                            return false;
                        }
                    }
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzcy.a(this);
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public boolean p() {
        return this instanceof zzcu;
    }

    public zzcc r() {
        zzcc zzccVar = this.f;
        if (zzccVar == null) {
            zzcc s = s();
            this.f = s;
            return s;
        }
        return zzccVar;
    }

    public zzcc s() {
        Object[] array = toArray(zzby.f10283c);
        zzdd zzddVar = zzcc.f;
        return zzcc.q(array.length, array);
    }
}
