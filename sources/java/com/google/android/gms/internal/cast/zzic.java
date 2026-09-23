package com.google.android.gms.internal.cast;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzic extends zzhv {
    public static final zzhv i = new zzic(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzic(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final Object[] c() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzhd.b(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.cast.zzhv, com.google.android.gms.internal.cast.zzhr
    public final int k(Object[] objArr) {
        Object[] objArr2 = this.g;
        int i2 = this.h;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
