package com.google.android.gms.internal.mlkit_code_scanner;

/* loaded from: classes3.dex */
final class zzx extends zzp {
    public final transient Object[] g;
    public final transient int h;
    public final transient int i = 1;

    public zzx(Object[] objArr, int i) {
        this.g = objArr;
        this.h = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzf.a(i, this.i);
        Object obj = this.g[i + i + this.h];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.i;
    }
}
