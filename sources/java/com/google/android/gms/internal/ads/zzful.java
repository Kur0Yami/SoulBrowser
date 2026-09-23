package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzful implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzfvh f7666a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7667c;
    public final LinkedBlockingQueue d;
    public final HandlerThread e;

    public zzful(Context context, String str, String str2) {
        this.b = str;
        this.f7667c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.e = handlerThread;
        handlerThread.start();
        zzfvh zzfvhVar = new zzfvh(context, handlerThread.getLooper(), this, this, 9200000);
        this.f7666a = zzfvhVar;
        this.d = new LinkedBlockingQueue();
        zzfvhVar.checkAvailabilityAndConnect();
    }

    public static zzawp b() {
        zzavs F0 = zzawp.F0();
        F0.p(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID);
        return (zzawp) F0.m();
    }

    public final void a() {
        zzfvh zzfvhVar = this.f7666a;
        if (zzfvhVar != null) {
            if (zzfvhVar.isConnected() || zzfvhVar.isConnecting()) {
                zzfvhVar.disconnect();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzfvm zzfvmVar;
        LinkedBlockingQueue linkedBlockingQueue = this.d;
        HandlerThread handlerThread = this.e;
        try {
            zzfvmVar = (zzfvm) this.f7666a.getService();
        } catch (DeadObjectException | IllegalStateException unused) {
            zzfvmVar = null;
        }
        if (zzfvmVar != null) {
            try {
                try {
                    zzfvi zzfviVar = new zzfvi(1, this.b, this.f7667c);
                    Parcel I1 = zzfvmVar.I1();
                    zzbcd.c(I1, zzfviVar);
                    Parcel f2 = zzfvmVar.f2(1, I1);
                    zzfvk zzfvkVar = (zzfvk) zzbcd.b(f2, zzfvk.CREATOR);
                    f2.recycle();
                    if (zzfvkVar.f == null) {
                        try {
                            byte[] bArr = zzfvkVar.g;
                            zziab zziabVar = zziab.b;
                            int i = zzhyy.f8889a;
                            zzfvkVar.f = zzawp.E0(bArr, zziab.f8905c);
                            zzfvkVar.g = null;
                        } catch (zzibg | NullPointerException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    zzfvkVar.F();
                    linkedBlockingQueue.put(zzfvkVar.f);
                } catch (Throwable unused2) {
                    linkedBlockingQueue.put(b());
                }
            } catch (InterruptedException unused3) {
            } catch (Throwable th) {
                a();
                handlerThread.quit();
                throw th;
            }
            a();
            handlerThread.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.d.put(b());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.d.put(b());
        } catch (InterruptedException unused) {
        }
    }
}
