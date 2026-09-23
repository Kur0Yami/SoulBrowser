package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* loaded from: classes.dex */
final class zzgvg extends zzgux implements Serializable {
    public zzgvg() {
        zzgux zzguxVar = zzzu.k;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzgux zzguxVar = zzzu.k;
        return zzza.f9406c.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgvg) {
            Object obj2 = zzzu.k;
            return obj2.equals(obj2);
        }
        return false;
    }

    public final int hashCode() {
        zzgux zzguxVar = zzzu.k;
        return -zzza.f9406c.hashCode();
    }

    public final String toString() {
        zzgux zzguxVar = zzzu.k;
        return zzza.f9406c.toString().concat(".reverse()");
    }
}
