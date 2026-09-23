package com.google.android.gms.internal.consent_sdk;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdy extends zzdv {
    public static final zzdv i = new zzdy(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzdy(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdv, com.google.android.gms.internal.consent_sdk.zzds
    public final void a(Object[] objArr) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int c() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzdj.a(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final Object[] k() {
        return this.g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
