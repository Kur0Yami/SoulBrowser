package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzgvc extends zzgtd {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i;

    public zzgvc(Object[] objArr, int i, int i2) {
        this.g = objArr;
        this.h = i;
        this.i = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzgqa.i(i, this.i);
        Object obj = this.g[i + i + this.h];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
