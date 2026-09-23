package com.google.android.gms.internal.location;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbt<E> extends zzbs<E> {
    public static final zzbs i = new zzbt(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzbt(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final Object[] c() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzbm.a(i2, this.h);
        return this.g[i2];
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final int i() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.location.zzbs, com.google.android.gms.internal.location.zzbp
    public final void p(Object[] objArr) {
        System.arraycopy(this.g, 0, objArr, 0, this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
