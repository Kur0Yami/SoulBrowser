package com.google.android.gms.internal.fido;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbz extends zzbu {
    public final zzcc g;

    public zzbz(zzcc zzccVar, int i) {
        super(zzccVar.size(), i);
        this.g = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzbu
    public final Object a(int i) {
        return this.g.get(i);
    }
}
