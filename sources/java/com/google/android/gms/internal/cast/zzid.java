package com.google.android.gms.internal.cast;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes.dex */
final class zzid extends zzhv {
    public final /* synthetic */ zzie g;

    public zzid(zzie zzieVar) {
        this.g = zzieVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        zzie zzieVar = this.g;
        zzhd.b(i, zzieVar.j);
        Object[] objArr = zzieVar.i;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.j;
    }
}
