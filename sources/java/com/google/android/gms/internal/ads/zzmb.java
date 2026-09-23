package com.google.android.gms.internal.ads;

import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class zzmb {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9112a = new Object();
    public Looper b = null;

    /* renamed from: c, reason: collision with root package name */
    public HandlerThread f9113c = null;
    public int d = 0;

    public final void a() {
        boolean z;
        HandlerThread handlerThread;
        synchronized (this.f9112a) {
            try {
                if (this.d > 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzgqa.f(z);
                int i = this.d - 1;
                this.d = i;
                if (i == 0 && (handlerThread = this.f9113c) != null) {
                    handlerThread.quit();
                    this.f9113c = null;
                    this.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
