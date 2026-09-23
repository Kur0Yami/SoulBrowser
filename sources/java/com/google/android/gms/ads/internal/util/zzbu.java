package com.google.android.gms.ads.internal.util;

/* loaded from: classes.dex */
public final class zzbu {

    /* renamed from: a, reason: collision with root package name */
    public long f3132a;
    public long b = Long.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3133c = new Object();

    public zzbu(long j) {
        this.f3132a = j;
    }

    public final boolean zza() {
        synchronized (this.f3133c) {
            try {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                if (this.b + this.f3132a > elapsedRealtime) {
                    return false;
                }
                this.b = elapsedRealtime;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb(long j) {
        synchronized (this.f3133c) {
            this.f3132a = j;
        }
    }
}
