package com.google.android.gms.internal.mlkit_vision_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzu extends zzp {
    public static final zzp i = new zzu(new Object[0], 0);
    public final transient Object[] g;
    public final transient int h;

    public zzu(Object[] objArr, int i2) {
        this.g = objArr;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzp, com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.g;
        int i2 = this.h;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int c() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i2) {
        zzf.a(i2, this.h);
        Object obj = this.g[i2];
        obj.getClass();
        return obj;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzl
    public final Object[] k() {
        return this.g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
