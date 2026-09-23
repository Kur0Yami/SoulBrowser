package com.google.android.gms.internal.cast;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzig extends zzhv {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i;

    public zzig(Object[] objArr, int i, int i2) {
        this.g = objArr;
        this.h = i;
        this.i = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzhd.b(i, this.i);
        Object obj = this.g[i + i + this.h];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
