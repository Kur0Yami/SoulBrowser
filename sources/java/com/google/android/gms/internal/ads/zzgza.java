package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgza extends zzgyh implements zzgyv {
    public final ScheduledFuture f;

    public zzgza(zzgxf zzgxfVar, ScheduledFuture scheduledFuture) {
        super(zzgxfVar);
        this.f = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgyg, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = this.f8302c.cancel(z);
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
