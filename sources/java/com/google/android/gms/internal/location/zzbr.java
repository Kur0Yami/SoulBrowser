package com.google.android.gms.internal.location;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbr extends zzbs {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzbs i;

    public zzbr(zzbs zzbsVar, int i, int i2) {
        this.i = zzbsVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final Object[] c() {
        return this.i.c();
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzbm.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final int i() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.location.zzbp
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.location.zzbs, java.util.List
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public final zzbs subList(int i, int i2) {
        zzbm.b(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
