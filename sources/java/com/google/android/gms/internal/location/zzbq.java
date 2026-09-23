package com.google.android.gms.internal.location;

/* loaded from: classes3.dex */
final class zzbq<E> extends zzbo<E> {
    public final zzbs g;

    public zzbq(zzbs zzbsVar, int i) {
        super(zzbsVar.size(), i);
        this.g = zzbsVar;
    }

    @Override // com.google.android.gms.internal.location.zzbo
    public final Object a(int i) {
        return this.g.get(i);
    }
}
