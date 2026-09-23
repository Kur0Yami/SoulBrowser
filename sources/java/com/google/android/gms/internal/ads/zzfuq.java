package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfuq implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzfvh f7671a;
    public final zzfvb b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7672c = new Object();
    public boolean d = false;
    public boolean e = false;

    public zzfuq(Context context, Looper looper, zzfvb zzfvbVar) {
        this.b = zzfvbVar;
        this.f7671a = new zzfvh(context, looper, this, this, 12800000);
    }

    public final void a() {
        synchronized (this.f7672c) {
            try {
                zzfvh zzfvhVar = this.f7671a;
                if (!zzfvhVar.isConnected()) {
                    if (zzfvhVar.isConnecting()) {
                    }
                    Binder.flushPendingCommands();
                }
                zzfvhVar.disconnect();
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.f7672c) {
            try {
                if (this.e) {
                    return;
                }
                this.e = true;
                try {
                    zzfvm zzfvmVar = (zzfvm) this.f7671a.getService();
                    zzfvf zzfvfVar = new zzfvf(this.b.h(), 1);
                    Parcel I1 = zzfvmVar.I1();
                    zzbcd.c(I1, zzfvfVar);
                    zzfvmVar.r2(2, I1);
                } catch (Exception unused) {
                } catch (Throwable th) {
                    a();
                    throw th;
                }
                a();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
