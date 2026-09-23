package com.google.android.gms.internal.play_billing;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class zzca extends zzbt implements Set, j$.util.Set {
    public transient zzbw f;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
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
    public final int hashCode() {
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

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public zzbw i() {
        zzbw zzbwVar = this.f;
        if (zzbwVar == null) {
            zzbw q = q();
            this.f = q;
            return q;
        }
        return zzbwVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public zzbw q() {
        Object[] array = toArray();
        zzcl zzclVar = zzbw.f;
        return zzbw.r(array.length, array);
    }
}
