package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzie extends zzhz {
    public final transient zzhy h;
    public final transient Object[] i;
    public final transient int j;

    public zzie(zzhy zzhyVar, Object[] objArr, int i) {
        this.h = zzhyVar;
        this.i = objArr;
        this.j = i;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    /* renamed from: a */
    public final zzil iterator() {
        return m().listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.h.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzhz, com.google.android.gms.internal.cast.zzhr, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return m().listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int k(Object[] objArr) {
        return m().k(objArr);
    }

    @Override // com.google.android.gms.internal.cast.zzhz
    public final zzhv q() {
        return new zzid(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.j;
    }
}
