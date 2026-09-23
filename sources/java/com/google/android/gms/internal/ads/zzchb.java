package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzchb extends zzcgx {
    @Override // com.google.android.gms.internal.ads.zzcgx
    public final boolean g(String str) {
        String zzf = com.google.android.gms.ads.internal.util.client.zzf.zzf(str);
        zzcfk zzcfkVar = (zzcfk) this.g.get();
        if (zzcfkVar != null && zzf != null) {
            zzcfkVar.N(zzf, this);
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("VideoStreamNoopCache is doing nothing.");
        p(str, zzf, "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgx
    public final void o() {
    }
}
