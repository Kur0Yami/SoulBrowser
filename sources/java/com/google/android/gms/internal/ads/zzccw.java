package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzccw extends com.google.android.gms.ads.internal.util.zzb {
    public final /* synthetic */ zzcda b;

    public zzccw(zzcda zzcdaVar) {
        Objects.requireNonNull(zzcdaVar);
        this.b = zzcdaVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        zzcda zzcdaVar = this.b;
        zzbgn zzbgnVar = new zzbgn(zzcdaVar.e, zzcdaVar.f.afmaVersion);
        synchronized (zzcdaVar.f5053a) {
            try {
                com.google.android.gms.ads.internal.zzt.zzm();
                zzbgq.a(zzcdaVar.h, zzbgnVar);
            } catch (IllegalArgumentException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot config CSI reporter.", e);
            }
        }
    }
}
