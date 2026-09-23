package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeds extends zzedq {
    public final Context g;
    public final Executor h;

    public zzeds(Context context, Executor executor) {
        this.g = context;
        this.h = executor;
        this.f = new zzbyc(context, com.google.android.gms.ads.internal.zzt.zzs().zza(), this, this);
    }

    public final ListenableFuture c(zzbza zzbzaVar) {
        synchronized (this.b) {
            try {
                if (this.f6404c) {
                    return this.f6403a;
                }
                this.f6404c = true;
                this.e = zzbzaVar;
                this.f.checkAvailabilityAndConnect();
                zzcdt zzcdtVar = this.f6403a;
                zzcdtVar.f5072c.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzedr
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzeds.this.a();
                    }
                }, zzcdo.g);
                zzedq.b(this.g, zzcdtVar, this.h);
                return zzcdtVar;
            } catch (Throwable th) {
                throw th;
            }
        }
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
                        zzbynVar.M3(zzbzaVar, zzedoVar);
                    } catch (RemoteException | IllegalArgumentException unused) {
                        this.f6403a.b(new zzebr(1));
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("RemoteSignalsClientTask.onConnected", th);
                        this.f6403a.b(new zzebr(1));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
