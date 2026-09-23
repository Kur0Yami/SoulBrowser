package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzfxl;

/* loaded from: classes.dex */
public final class zzbq {

    /* renamed from: a, reason: collision with root package name */
    public HandlerThread f3128a = null;
    public zzfxl b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f3129c = 0;
    public final Object d = new Object();

    public final Looper zza() {
        Looper looper;
        Object obj = this.d;
        synchronized (obj) {
            try {
                if (this.f3129c == 0) {
                    if (this.f3128a == null) {
                        zze.zza("Starting the looper thread.");
                        HandlerThread handlerThread = new HandlerThread("LooperProvider");
                        this.f3128a = handlerThread;
                        handlerThread.start();
                        this.b = new zzfxl(this.f3128a.getLooper());
                        zze.zza("Looper thread started.");
                    } else {
                        zze.zza("Resuming the looper thread");
                        obj.notifyAll();
                    }
                } else {
                    Preconditions.checkNotNull(this.f3128a, "Invalid state: handlerThread should already been initialized.");
                }
                this.f3129c++;
                looper = this.f3128a.getLooper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public final Handler zzb() {
        return this.b;
    }
}
