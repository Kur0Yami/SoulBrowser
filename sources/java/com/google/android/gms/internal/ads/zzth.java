package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzth implements zztk {
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zztm, java.lang.Exception] */
    @Override // com.google.android.gms.internal.ads.zztk
    public final zztl a(zzv zzvVar) {
        if (zzvVar.q == null) {
            return null;
        }
        return new zztl(new zztc(new Exception()));
    }

    @Override // com.google.android.gms.internal.ads.zztk
    public final int b(zzv zzvVar) {
        return zzvVar.q != null ? 1 : 0;
    }
}
