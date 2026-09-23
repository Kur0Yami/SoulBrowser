package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
final class zzaf extends zzby {
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzby, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            zzae zzaeVar = (zzae) it;
            if (zzaeVar.hasNext()) {
                zzaeVar.next();
                zzaeVar.remove();
            } else {
                return;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f11140c.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this != obj && !this.f11140c.keySet().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f11140c.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzae(this, this.f11140c.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzby, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Collection collection = (Collection) this.f11140c.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
