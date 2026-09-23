package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class zzedq implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzcdt f6403a = new zzcdt();
    public final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6404c = false;
    public boolean d = false;
    public zzbza e;
    public zzbyc f;

    public static void b(Context context, zzcdt zzcdtVar, Executor executor) {
        if (!((Boolean) zzbic.j.c()).booleanValue() && !((Boolean) zzbic.h.c()).booleanValue()) {
            return;
        }
        zzcdtVar.k(new zzgyk(zzcdtVar, new zzedn(context)), executor);
    }

    public final void a() {
        synchronized (this.b) {
            try {
                this.d = true;
                if (!this.f.isConnected()) {
                    if (this.f.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                this.f.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onConnectionFailed(ConnectionResult connectionResult) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Disconnected from remote ad request service.");
        this.f6403a.b(new zzebr(1));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public void onConnectionSuspended(int i) {
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Cannot connect to remote service, fallback to local instance.");
    }
}
