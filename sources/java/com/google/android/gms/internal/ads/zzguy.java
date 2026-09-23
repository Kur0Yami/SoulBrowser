package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzguy extends zzgtd {
    public static final zzgtd i = new zzguy(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzguy(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final Object[] c() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzgqa.i(i2, this.h);
        Object obj = this.g[i2];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgtd, com.google.android.gms.internal.ads.zzgsz
    public final int p(int i2, Object[] objArr) {
        Object[] objArr2 = this.g;
        int i3 = this.h;
        System.arraycopy(objArr2, 0, objArr, i2, i3);
        return i2 + i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
