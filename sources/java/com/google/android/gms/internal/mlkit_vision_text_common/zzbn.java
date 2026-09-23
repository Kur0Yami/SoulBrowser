package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class zzbn extends zzbf implements Set, j$.util.Set {
    public transient zzbk f;

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

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public final zzbk m() {
        zzbk zzbkVar = this.f;
        if (zzbkVar == null) {
            zzcf zzcfVar = new zzcf((zzcg) this);
            this.f = zzcfVar;
            return zzcfVar;
        }
        return zzbkVar;
    }
}
