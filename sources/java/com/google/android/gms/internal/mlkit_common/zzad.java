package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzad extends zzv {
    public final zzaf g;

    public zzad(zzaf zzafVar, int i) {
        super(zzafVar.size(), i);
        this.g = zzafVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzv
    public final Object a(int i) {
        return this.g.get(i);
    }
}
