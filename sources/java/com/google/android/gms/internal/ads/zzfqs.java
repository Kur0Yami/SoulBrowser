package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqs implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfqy f7575c;

    public zzfqs(zzfqy zzfqyVar) {
        this.f7575c = zzfqyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfqy zzfqyVar = this.f7575c;
        synchronized (zzfqyVar) {
            com.google.android.gms.ads.internal.client.zzce zzceVar = zzfqyVar.h;
            if (zzceVar != null) {
                try {
                    zzceVar.zzf(zzfqyVar.e);
                } catch (RemoteException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to call onAdsExhausted");
                }
            }
            com.google.android.gms.ads.internal.client.zzch zzchVar = zzfqyVar.i;
            if (zzchVar != null) {
                try {
                    zzchVar.zzf(zzfqyVar.l);
                } catch (RemoteException unused2) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to call onAdsExhausted");
                }
            }
        }
    }
}
