package com.google.android.gms.internal.fido;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcb extends zzcc {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzcc i;

    public zzcb(zzcc zzccVar, int i, int i2) {
        this.i = zzccVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbm.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] k() {
        return this.i.k();
    }

    @Override // com.google.android.gms.internal.fido.zzcc, java.util.List
    /* renamed from: p */
    public final zzcc subList(int i, int i2) {
        zzbm.b(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
