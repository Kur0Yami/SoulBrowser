package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzfqa extends zzfqy {
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzgzf, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzfqy
    public final ListenableFuture g(Context context) {
        zzbsz zzbszVar = (zzbsz) this.d.f7411c.get();
        if (zzbszVar == null) {
            return zzgym.b(new zzfpq());
        }
        com.google.android.gms.ads.internal.client.zzbx zzc = this.f7581a.zzc(new ObjectWrapper(context), new com.google.android.gms.ads.internal.client.zzr(), this.e.zza, zzbszVar, this.f7582c);
        if (zzc == null) {
            return zzgym.b(new zzfpq());
        }
        ?? obj = new Object();
        try {
            x(this.e.zzc);
            zzc.zzQ(this.e.zzc, new zzfpz(this, obj, zzc));
            return obj;
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to load interstitial ad.", e);
            return zzgym.b(new zzfpq());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzea h(Object obj) {
        try {
            return ((com.google.android.gms.ads.internal.client.zzbx) obj).zzt();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get response info for  the interstitial ad.", e);
            return null;
        }
    }
}
