package com.google.android.gms.internal.mlkit_vision_text_common;

import j$.util.Objects;
import java.util.AbstractMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcf extends zzbk {
    public final /* synthetic */ zzcg g;

    public zzcf(zzcg zzcgVar) {
        this.g = zzcgVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzcg zzcgVar = this.g;
        zzx.a(i, zzcgVar.i);
        Object[] objArr = zzcgVar.h;
        int i2 = i + i;
        Object obj = objArr[i2];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.i;
    }
}
