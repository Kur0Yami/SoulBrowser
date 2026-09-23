package com.google.android.gms.internal.mlkit_vision_text_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbj extends zzbk {
    public final transient int g;
    public final transient int h;
    public final /* synthetic */ zzbk i;

    public zzbj(zzbk zzbkVar, int i, int i2) {
        this.i = zzbkVar;
        this.g = i;
        this.h = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbf
    public final int c() {
        return this.i.g() + this.g + this.h;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbf
    public final int g() {
        return this.i.g() + this.g;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzx.a(i, this.h);
        return this.i.get(i + this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbf
    public final Object[] k() {
        return this.i.k();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbk, java.util.List
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final zzbk subList(int i, int i2) {
        zzx.b(i, i2, this.h);
        int i3 = this.g;
        return this.i.subList(i + i3, i2 + i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.h;
    }
}
