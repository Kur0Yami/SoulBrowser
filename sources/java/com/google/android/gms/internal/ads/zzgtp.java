package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgtp extends zzgtn {
    public final transient zzgtq h;

    public zzgtp(zzgtq zzgtqVar) {
        this.h = zzgtqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    /* renamed from: a */
    public final zzgvr iterator() {
        return new zzgth(this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) this.h.zzu().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzgth(this.h);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h.i;
    }
}
