package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdu extends zzdv {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzdv i;

    public zzdu(zzdv zzdvVar, int i, int i2) {
        this.i = zzdvVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzdj.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final Object[] k() {
        return this.i.k();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdv, java.util.List
    /* renamed from: m */
    public final zzdv subList(int i, int i2) {
        zzdj.c(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
