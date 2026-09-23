package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzfj implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfk f3036c;

    public zzfj(zzfk zzfkVar) {
        this.f3036c = zzfkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbk zzbkVar = this.f3036c.f3037c;
        if (zzbkVar != null) {
            try {
                zzbkVar.zzc(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
