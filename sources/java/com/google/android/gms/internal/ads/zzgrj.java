package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgrj extends zzguh {
    public final /* synthetic */ zzgrt f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrj(zzgrt zzgrtVar, Map map) {
        super(map);
        Objects.requireNonNull(zzgrtVar);
        this.f = zzgrtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguh, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            zzgri zzgriVar = (zzgri) it;
            if (zzgriVar.hasNext()) {
                zzgriVar.next();
                zzgriVar.remove();
            } else {
                return;
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f8258c.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this != obj && !this.f8258c.keySet().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8258c.keySet().hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzguh, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzgri(this, this.f8258c.entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.ads.zzguh, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Collection collection = (Collection) this.f8258c.remove(obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f.i -= size;
            if (size > 0) {
                return true;
            }
            return false;
        }
        return false;
    }
}
