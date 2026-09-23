package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgtc extends zzgtd {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzgtd i;

    public zzgtc(zzgtd zzgtdVar, int i, int i2) {
        this.i = zzgtdVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final Object[] c() {
        return this.i.c();
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzgqa.i(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int i() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgtd, java.util.List
    /* renamed from: q */
    public final zzgtd subList(int i, int i2) {
        zzgqa.k(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
