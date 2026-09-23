package com.google.android.gms.internal.cast;

import java.util.Iterator;

/* loaded from: classes.dex */
final class zzif extends zzhz {
    public final transient zzhy h;
    public final transient zzhv i;

    public zzif(zzhy zzhyVar, zzhv zzhvVar) {
        this.h = zzhyVar;
        this.i = zzhvVar;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    /* renamed from: a */
    public final zzil iterator() {
        return this.i.listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (this.h.get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzhz, com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.i.listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int k(Object[] objArr) {
        return this.i.k(objArr);
    }

    @Override // com.google.android.gms.internal.cast.zzhz
    public final zzhv m() {
        throw null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.size();
    }
}
