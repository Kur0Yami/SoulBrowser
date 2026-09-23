package com.google.android.gms.internal.mlkit_code_scanner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzo extends zzp {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzp i;

    public zzo(zzp zzpVar, int i, int i2) {
        this.i = zzpVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzf.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzl
    public final Object[] k() {
        return this.i.k();
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzp, java.util.List
    /* renamed from: m */
    public final zzp subList(int i, int i2) {
        zzf.b(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
