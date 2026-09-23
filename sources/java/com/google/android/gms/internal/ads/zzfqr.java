package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfqr implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.ads.internal.client.zze f7574c;
    public final /* synthetic */ zzfqy f;

    public zzfqr(zzfqy zzfqyVar, com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f7574c = zzeVar;
        this.f = zzfqyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfqy zzfqyVar = this.f;
        com.google.android.gms.ads.internal.client.zze zzeVar = this.f7574c;
        synchronized (zzfqyVar) {
            com.google.android.gms.ads.internal.client.zzch zzchVar = zzfqyVar.i;
            if (zzchVar != null) {
                try {
                    zzchVar.zzg(zzfqyVar.l, zzeVar);
                } catch (RemoteException unused) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to call onAdFailedToPreload");
                }
            }
        }
    }
}
