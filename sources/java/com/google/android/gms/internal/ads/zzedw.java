package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzedw extends zzedq {
    public String g;
    public int h;

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbyr zzedoVar;
        zzbyr zzedoVar2;
        synchronized (this.b) {
            try {
                if (!this.d) {
                    this.d = true;
                    try {
                        try {
                            int i = this.h;
                            if (i == 2) {
                                zzbyn zzbynVar = (zzbyn) this.f.getService();
                                zzbza zzbzaVar = this.e;
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pe)).booleanValue()) {
                                    zzedoVar2 = new zzedp(this.f6403a, this.e);
                                } else {
                                    zzedoVar2 = new zzedo(this);
                                }
                                zzbynVar.L2(zzbzaVar, zzedoVar2);
                            } else if (i == 3) {
                                zzbyn zzbynVar2 = (zzbyn) this.f.getService();
                                String str = this.g;
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pe)).booleanValue()) {
                                    zzedoVar = new zzedp(this.f6403a, this.e);
                                } else {
                                    zzedoVar = new zzedo(this);
                                }
                                zzbynVar2.a5(str, zzedoVar);
                            } else {
                                this.f6403a.b(new zzebr(1));
                            }
                        } catch (Throwable th) {
                            com.google.android.gms.ads.internal.zzt.zzh().f("RemoteUrlAndCacheKeyClientTask.onConnected", th);
                            this.f6403a.b(new zzebr(1));
                        }
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6403a.b(new zzebr(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedq, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Cannot connect to remote service, fallback to local instance.");
        this.f6403a.b(new zzebr(1));
    }
}
