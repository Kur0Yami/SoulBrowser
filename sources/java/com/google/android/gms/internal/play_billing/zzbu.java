package com.google.android.gms.internal.play_billing;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbu extends zzbq {
    public final zzbw g;

    public zzbu(zzbw zzbwVar, int i) {
        super(zzbwVar.size(), i);
        this.g = zzbwVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbq
    public final Object a(int i) {
        return this.g.get(i);
    }
}
