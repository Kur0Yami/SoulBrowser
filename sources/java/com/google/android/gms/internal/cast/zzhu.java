package com.google.android.gms.internal.cast;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhu extends zzhv {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzhv i;

    public zzhu(zzhv zzhvVar, int i, int i2) {
        this.i = zzhvVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final Object[] c() {
        return this.i.c();
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzhd.b(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.cast.zzhr
    public final int i() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.cast.zzhv, java.util.List
    /* renamed from: m */
    public final zzhv subList(int i, int i2) {
        zzhd.d(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
