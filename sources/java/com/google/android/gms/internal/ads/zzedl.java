package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzedl extends zzedq {
    public final Context g;
    public final VersionInfoParcel h;
    public final zzedk i;

    public zzedl(Context context, VersionInfoParcel versionInfoParcel, zzedk zzedkVar) {
        this.g = context;
        this.h = versionInfoParcel;
        this.i = zzedkVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.b) {
            if (!this.d) {
                this.d = true;
                try {
                    ((zzbyn) this.f.getService()).zzi(this.h.afmaVersion);
                    this.i.zza();
                } catch (RemoteException e) {
                    this.i.a(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedq, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.i.a(new RemoteException("Connection failed: ".concat(String.valueOf(connectionResult.getErrorMessage()))));
    }

    @Override // com.google.android.gms.internal.ads.zzedq, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Cannot connect to remote service, fallback to local instance.");
        this.i.a(new RemoteException(androidx.work.impl.workers.a.r(i, "Connection suspended with cause: ", new StringBuilder(String.valueOf(i).length() + 33))));
    }
}
