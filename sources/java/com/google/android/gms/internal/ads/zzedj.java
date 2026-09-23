package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzedj extends zzedq {
    public final Context g;
    public final Executor h;

    public zzedj(Context context, Executor executor) {
        this.g = context;
        this.h = executor;
        this.f = new zzbyc(context, com.google.android.gms.ads.internal.zzt.zzs().zza(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbyr zzedoVar;
        synchronized (this.b) {
            try {
                if (!this.d) {
                    this.d = true;
                    try {
                        zzbyn zzbynVar = (zzbyn) this.f.getService();
                        zzbza zzbzaVar = this.e;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pe)).booleanValue()) {
                            zzedoVar = new zzedp(this.f6403a, this.e);
                        } else {
                            zzedoVar = new zzedo(this);
                        }
                        zzbynVar.J1(zzbzaVar, zzedoVar);
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6403a.b(new zzebr(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("RemoteAdRequestClientTask.onConnected", th);
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
