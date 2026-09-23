package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzae extends zzaf {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzaf i;

    public zzae(zzaf zzafVar, int i, int i2) {
        this.i = zzafVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzt.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzab
    public final Object[] k() {
        return this.i.k();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaf, java.util.List
    /* renamed from: m */
    public final zzaf subList(int i, int i2) {
        zzt.c(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
