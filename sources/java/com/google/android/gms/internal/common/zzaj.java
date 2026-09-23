package com.google.android.gms.internal.common;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaj extends zzah {
    public static final zzah i = new zzaj(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzaj(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final Object[] c() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzr.a(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final int i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzah, com.google.android.gms.internal.common.zzac
    public final void p(Object[] objArr) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
