package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.LocationAvailability;

/* loaded from: classes3.dex */
public final class zzaz extends zzi {
    public final zzav g;

    public zzaz(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, ClientSettings clientSettings) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, clientSettings);
        this.g = new zzav(context, this.f);
    }

    public final LocationAvailability d() {
        zzav zzavVar = this.g;
        zzh zzhVar = (zzh) zzavVar.f10350a;
        zzhVar.f10361a.checkConnected();
        return zzhVar.a().z0(zzavVar.b.getPackageName());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        synchronized (this.g) {
            if (isConnected()) {
                try {
                    this.g.c();
                    this.g.getClass();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    public final void e(zzah zzahVar) {
        zzh zzhVar = (zzh) this.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().f0(new zzbc(2, null, null, null, null, zzahVar));
    }

    public final void f() {
        zzh zzhVar = (zzh) this.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().zzp();
    }

    public final void g() {
        zzh zzhVar = (zzh) this.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().zzq();
    }

    public final void h(zzah zzahVar) {
        zzh zzhVar = (zzh) this.g.f10350a;
        zzhVar.f10361a.checkConnected();
        zzhVar.a().p3(zzahVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.location.zzb, com.google.android.gms.internal.location.zzao, com.google.android.gms.internal.location.zzay] */
    public final void i(BaseImplementation.ResultHolder resultHolder) {
        checkConnected();
        Preconditions.checkArgument(false, "locationSettingsRequest can't be null nor empty.");
        Preconditions.checkArgument(true, "listener can't be null.");
        ?? zzbVar = new zzb("com.google.android.gms.location.internal.ISettingsCallbacks");
        Preconditions.checkArgument(true, "listener can't be null.");
        zzbVar.f10354c = resultHolder;
        ((zzam) getService()).G3(zzbVar);
    }

    public final void j() {
        checkConnected();
        Preconditions.checkNotNull(null);
        Preconditions.checkArgument(true, "detectionIntervalMillis must be >= 0");
        ((zzam) getService()).zzh();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.location.zzaw, com.google.android.gms.internal.location.zzaj, com.google.android.gms.internal.location.zzak] */
    public final void k(BaseImplementation.ResultHolder resultHolder) {
        checkConnected();
        Preconditions.checkNotNull(null, "geofencingRequest can't be null.");
        Preconditions.checkNotNull(null, "PendingIntent must be specified.");
        Preconditions.checkNotNull(resultHolder, "ResultHolder not provided.");
        ?? zzajVar = new zzaj();
        zzajVar.f10352c = resultHolder;
        ((zzam) getService()).m0(zzajVar);
    }

    public final void l(BaseImplementation.ResultHolder resultHolder) {
        checkConnected();
        Preconditions.checkNotNull(null, "PendingIntent must be specified.");
        Preconditions.checkNotNull(resultHolder, "ResultHolder not provided.");
        ((zzam) getService()).h0(new zzax(resultHolder), getContext().getPackageName());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }
}
