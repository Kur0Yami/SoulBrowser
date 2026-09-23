package com.google.android.gms.internal.mlkit_code_scanner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzn extends zzh {
    public final zzp g;

    public zzn(zzp zzpVar, int i) {
        super(zzpVar.size(), i);
        this.g = zzpVar;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzh
    public final Object a(int i) {
        return this.g.get(i);
    }
}
