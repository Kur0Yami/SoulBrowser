package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqp implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zzea f7572c;
    public final /* synthetic */ zzfqy f;

    public zzfqp(zzfqy zzfqyVar, com.google.android.gms.ads.internal.client.zzea zzeaVar) {
        this.f7572c = zzeaVar;
        this.f = zzfqyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfqy zzfqyVar = this.f;
        com.google.android.gms.ads.internal.client.zzea zzeaVar = this.f7572c;
        synchronized (zzfqyVar) {
            com.google.android.gms.ads.internal.client.zzce zzceVar = zzfqyVar.h;
            if (zzceVar != null) {
                try {
                    zzceVar.zze(zzfqyVar.e);
                } catch (RemoteException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to call onAdsAvailable");
                }
            }
            com.google.android.gms.ads.internal.client.zzch zzchVar = zzfqyVar.i;
            if (zzchVar != null) {
                try {
                    zzchVar.zze(zzfqyVar.l, zzeaVar);
                } catch (RemoteException unused2) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to call onAdPreloaded");
                }
            }
        }
    }
}
