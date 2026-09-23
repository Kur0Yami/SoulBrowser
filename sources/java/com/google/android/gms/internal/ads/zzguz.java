package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes.dex */
final class zzguz extends zzgtd {
    public final /* synthetic */ zzgva g;

    public zzguz(zzgva zzgvaVar) {
        this.g = zzgvaVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        zzgva zzgvaVar = this.g;
        zzgqa.i(i, zzgvaVar.j);
        Object[] objArr = zzgvaVar.i;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.j;
    }
}
