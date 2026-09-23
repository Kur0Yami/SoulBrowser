package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
class zzgrc extends zzgrt implements zzgty {
    @Override // com.google.android.gms.internal.ads.zzgrt
    public final Collection c(Collection collection) {
        return DesugarCollections.unmodifiableList((List) collection);
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public final Collection d(Collection collection, Object obj) {
        List list = (List) collection;
        if (list instanceof RandomAccess) {
            return new zzgrs(this, obj, list, null);
        }
        return new zzgrs(this, obj, list, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public /* bridge */ /* synthetic */ Collection e() {
        throw null;
    }
}
