package com.google.android.gms.internal.fido;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzct extends zzcc {
    public static final zzcc i = new zzct(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzct(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzcc, com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.g;
        int i2 = this.h;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int c() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzbm.a(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] k() {
        return this.g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
