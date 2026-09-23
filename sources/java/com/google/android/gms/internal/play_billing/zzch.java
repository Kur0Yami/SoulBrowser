package com.google.android.gms.internal.play_billing;

import j$.util.Objects;

/* loaded from: classes3.dex */
final class zzch extends zzbw {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i;

    public zzch(Object[] objArr, int i, int i2) {
        this.g = objArr;
        this.h = i;
        this.i = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbj.a(i, this.i);
        Object obj = this.g[i + i + this.h];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
