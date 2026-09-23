package com.google.android.gms.internal.mlkit_vision_text_common;

import j$.util.Objects;

/* loaded from: classes3.dex */
final class zzci extends zzbk {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i = 1;

    public zzci(Object[] objArr, int i) {
        this.g = objArr;
        this.h = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzx.a(i, this.i);
        Object obj = this.g[i + i + this.h];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
