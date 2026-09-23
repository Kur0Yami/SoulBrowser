package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzcsj implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f5436c;
    public final Clock f;
    public ScheduledFuture g;
    public long h = -1;
    public long i = -1;
    public Runnable j = null;
    public boolean k = false;

    public zzcsj(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.f5436c = scheduledExecutorService;
        this.f = clock;
        com.google.android.gms.ads.internal.zzt.zzg().b(this);
    }

    public final synchronized void a(Runnable runnable, int i) {
        this.j = runnable;
        long j = i;
        this.h = this.f.elapsedRealtime() + j;
        this.g = this.f5436c.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    public final synchronized void b() {
        try {
            if (!this.k) {
                ScheduledFuture scheduledFuture = this.g;
                if (scheduledFuture != null && !scheduledFuture.isDone()) {
                    this.g.cancel(true);
                    this.i = this.h - this.f.elapsedRealtime();
                } else {
                    this.i = -1L;
                }
                this.k = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        ScheduledFuture scheduledFuture;
        if (z) {
            synchronized (this) {
                try {
                    if (this.k) {
                        if (this.i > 0 && (scheduledFuture = this.g) != null && scheduledFuture.isCancelled()) {
                            this.g = this.f5436c.schedule(this.j, this.i, TimeUnit.MILLISECONDS);
                        }
                        this.k = false;
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }
}
