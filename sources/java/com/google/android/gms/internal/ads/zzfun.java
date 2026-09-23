package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.LinkedBlockingQueue;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzfun implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzfvh f7668a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7669c;
    public final zzbbq d;
    public final LinkedBlockingQueue e;
    public final HandlerThread f;
    public final zzfuf g;
    public final long h;

    public zzfun(Context context, zzbbq zzbbqVar, String str, String str2, zzfuf zzfufVar) {
        this.b = str;
        this.d = zzbbqVar;
        this.f7669c = str2;
        this.g = zzfufVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f = handlerThread;
        handlerThread.start();
        this.h = System.currentTimeMillis();
        zzfvh zzfvhVar = new zzfvh(context, handlerThread.getLooper(), this, this, 19621000);
        this.f7668a = zzfvhVar;
        this.e = new LinkedBlockingQueue();
        zzfvhVar.checkAvailabilityAndConnect();
    }

    public final void a() {
        zzfvh zzfvhVar = this.f7668a;
        if (zzfvhVar != null) {
            if (zzfvhVar.isConnected() || zzfvhVar.isConnecting()) {
                zzfvhVar.disconnect();
            }
        }
    }

    public final void b(int i, long j, Exception exc) {
        zzfuf zzfufVar = this.g;
        if (zzfufVar != null) {
            zzfufVar.c(i, System.currentTimeMillis() - j, exc);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfvm zzfvmVar;
        long j = this.h;
        HandlerThread handlerThread = this.f;
        try {
            zzfvmVar = (zzfvm) this.f7668a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            zzfvmVar = null;
        }
        if (zzfvmVar != null) {
            try {
                zzfvr zzfvrVar = new zzfvr(this.b, 1, 1, this.f7669c, this.d.f4536c);
                Parcel I1 = zzfvmVar.I1();
                zzbcd.c(I1, zzfvrVar);
                Parcel f2 = zzfvmVar.f2(3, I1);
                zzfvt zzfvtVar = (zzfvt) zzbcd.b(f2, zzfvt.CREATOR);
                f2.recycle();
                b(5011, j, null);
                this.e.put(zzfvtVar);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            b(4012, this.h, null);
            this.e.put(new zzfvt());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            b(4011, this.h, null);
            this.e.put(new zzfvt());
        } catch (InterruptedException unused) {
        }
    }
}
