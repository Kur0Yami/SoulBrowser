package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzfrd extends zzfqy {
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzgzf, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzfqy
    public final ListenableFuture g(Context context) {
        zzbsz zzbszVar = (zzbsz) this.d.f7411c.get();
        if (zzbszVar == null) {
            return zzgym.b(new zzfpq());
        }
        zzcaf zzl = this.f7581a.zzl(new ObjectWrapper(context), this.e.zza, zzbszVar, this.f7582c);
        if (zzl == null) {
            return zzgym.b(new zzfpq());
        }
        ?? obj = new Object();
        try {
            x(this.e.zzc);
            zzl.zzc(this.e.zzc, new zzfrc(this, obj, zzl));
            return obj;
        } catch (RemoteException unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to load rewarded ad.");
            return zzgym.b(new zzfpq());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqy
    public final /* bridge */ /* synthetic */ com.google.android.gms.ads.internal.client.zzea h(Object obj) {
        try {
            return ((zzcaf) obj).zzm();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get response info for the rewarded ad.", e);
            return null;
        }
    }
}
