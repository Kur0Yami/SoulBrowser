package com.google.android.gms.internal.play_billing;

import j$.util.Objects;
import java.util.AbstractMap;

/* loaded from: classes3.dex */
final class zzce extends zzbw {
    public final /* synthetic */ zzcf g;

    public zzce(zzcf zzcfVar) {
        this.g = zzcfVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzcf zzcfVar = this.g;
        zzbj.a(i, zzcfVar.i);
        Object[] objArr = zzcfVar.h;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.i;
    }
}
