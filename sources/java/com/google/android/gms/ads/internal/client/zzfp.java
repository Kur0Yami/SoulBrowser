package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzcam;

/* loaded from: classes.dex */
final /* synthetic */ class zzfp implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcam f3040c;

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        zzcam zzcamVar = this.f3040c;
        if (zzcamVar != null) {
            try {
                zzcamVar.zzf(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }
}
