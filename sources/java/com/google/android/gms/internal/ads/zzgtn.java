package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes.dex */
public abstract class zzgtn<E> extends zzgsz<E> implements Set<E>, j$.util.Set {
    public static final /* synthetic */ int g = 0;
    public transient zzgtd f;

    public static zzgtn q() {
        return new zzgvo("*");
    }

    public static zzgtn r(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        int length = objArr.length;
        int i = length + 6;
        Object[] objArr2 = new Object[i];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, length);
        return x(i, objArr2);
    }

    public static int s(int i) {
        boolean z;
        int max = Math.max(i, 2);
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.7d < max);
            return highestOneBit;
        }
        if (max < 1073741824) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.b("collection too large", z);
        return 1073741824;
    }

    public static zzgtn t(Set set) {
        if ((set instanceof zzgtn) && !(set instanceof SortedSet)) {
            zzgtn zzgtnVar = (zzgtn) set;
            if (!zzgtnVar.m()) {
                return zzgtnVar;
            }
        }
        Object[] array = set.toArray();
        return x(array.length, array);
    }

    public static zzgtn u(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                return x(length, (Object[]) objArr.clone());
            }
            return new zzgvo(objArr[0]);
        }
        return zzgve.n;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgtm, com.google.android.gms.internal.ads.zzgsx] */
    public static zzgtm w(int i) {
        zzgrz.b(i, "expectedSize");
        ?? zzgsxVar = new zzgsx(i);
        zzgsxVar.d = new Object[s(i)];
        return zzgsxVar;
    }

    public static zzgtn x(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int s = s(i);
                Object[] objArr2 = new Object[s];
                int i2 = s - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    zzguw.b(i5, obj);
                    int hashCode = obj.hashCode();
                    int a2 = zzgsw.a(hashCode);
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
                    return new zzgvo(obj3);
                }
                if (s(i4) < s / 2) {
                    return x(i4, objArr);
                }
                int length = objArr.length;
                if (i4 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzgve(objArr, objArr2, i3, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzgvo(obj4);
        }
        return zzgve.n;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzgtn) && (this instanceof zzgve) && (((zzgtn) obj) instanceof zzgve) && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzgvn.d(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzgvn.c(this);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public zzgtd k() {
        zzgtd zzgtdVar = this.f;
        if (zzgtdVar == null) {
            zzgtd v = v();
            this.f = v;
            return v;
        }
        return zzgtdVar;
    }

    public zzgtd v() {
        Object[] array = toArray();
        zzgvs zzgvsVar = zzgtd.f;
        return zzgtd.x(array.length, array);
    }
}
