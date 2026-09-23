package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzfg implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfh f3033c;

    public zzfg(zzfh zzfhVar) {
        this.f3033c = zzfhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbk zzbkVar = this.f3033c.f3034c.f3035c;
        if (zzbkVar != null) {
            try {
                zzbkVar.zzc(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
