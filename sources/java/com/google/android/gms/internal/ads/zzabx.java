package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzabx extends HandlerThread implements Handler.Callback {

    /* renamed from: c, reason: collision with root package name */
    public zzdt f3887c;
    public Handler f;
    public Error g;
    public RuntimeException h;
    public zzaby i;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        zzdt zzdtVar;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    try {
                        zzdtVar = this.f3887c;
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    if (zzdtVar != null) {
                        zzdtVar.b();
                        return true;
                    }
                    throw null;
                }
            } else {
                try {
                    int i2 = message.arg1;
                    zzdt zzdtVar2 = this.f3887c;
                    if (zzdtVar2 != null) {
                        zzdtVar2.a(i2);
                        SurfaceTexture surfaceTexture = this.f3887c.j;
                        surfaceTexture.getClass();
                        if (i2 != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.i = new zzaby(this, surfaceTexture, z);
                        synchronized (this) {
                            notify();
                        }
                        return true;
                    }
                    throw null;
                } catch (zzdu e) {
                    zzee.f("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                    this.h = new IllegalStateException(e);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    zzee.f("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.g = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    zzee.f("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                    this.h = e3;
                    synchronized (this) {
                        notify();
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }
}
