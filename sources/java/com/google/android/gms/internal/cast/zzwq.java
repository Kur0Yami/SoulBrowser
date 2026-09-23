package com.google.android.gms.internal.cast;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzwq extends zzwh implements ScheduledFuture, ListenableFuture {
    public final ScheduledFuture f;

    public zzwq(zzwa zzwaVar, ScheduledFuture scheduledFuture) {
        super(zzwaVar);
        this.f = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.cast.zzwg, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = this.f9859c.cancel(z);
        if (cancel) {
            this.f.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Delayed delayed) {
        return this.f.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f.getDelay(timeUnit);
    }
}
