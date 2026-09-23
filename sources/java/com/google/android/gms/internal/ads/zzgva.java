package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgva extends zzgtn {
    public final transient zzgtg h;
    public final transient Object[] i;
    public final transient int j;

    public zzgva(zzgtg zzgtgVar, Object[] objArr, int i) {
        this.h = zzgtgVar;
        this.i = objArr;
        this.j = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    /* renamed from: a */
    public final zzgvr iterator() {
        return k().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection
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

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return k().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int p(int i, Object[] objArr) {
        return k().p(i, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn
    public final zzgtd v() {
        return new zzguz(this);
    }
}
