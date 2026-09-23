package com.google.android.gms.internal.play_billing;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbv extends zzbw {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzbw i;

    public zzbv(zzbw zzbwVar, int i, int i2) {
        this.i = zzbwVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbj.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbt
    public final Object[] p() {
        return this.i.p();
    }

    @Override // com.google.android.gms.internal.play_billing.zzbw, java.util.List
    /* renamed from: q */
    public final zzbw subList(int i, int i2) {
        zzbj.c(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
