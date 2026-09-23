package com.google.android.gms.internal.p000authapi;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zbbj extends zbbi {
    public static final zbbi i = new zbbj(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zbbj(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbf
    public final Object[] c() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbf
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zbbc.a(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbf
    public final int i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbf
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbbi, com.google.android.gms.internal.p000authapi.zbbf
    public final void p(Object[] objArr) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
