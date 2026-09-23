package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgtb extends zzgra {
    public final zzgtd g;

    public zzgtb(int i, zzgtd zzgtdVar) {
        super(zzgtdVar.size(), i);
        this.g = zzgtdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgra
    public final Object a(int i) {
        return this.g.get(i);
    }
}
