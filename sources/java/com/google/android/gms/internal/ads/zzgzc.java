package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzgzc extends zzgyy implements zzgyx, AutoCloseable {
    public final ScheduledExecutorService f;

    public zzgzc(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final zzgyv schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzgzl zzgzlVar = new zzgzl(callable);
        return new zzgza(zzgzlVar, this.f.schedule(zzgzlVar, j, timeUnit));
    }

    @Override // com.google.android.gms.internal.ads.zzgxi, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        d.c(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        zzgzl zzgzlVar = new zzgzl(Executors.callable(runnable, null));
        return new zzgza(zzgzlVar, this.f.schedule(zzgzlVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgzb zzgzbVar = new zzgzb(runnable);
        return new zzgza(zzgzbVar, this.f.scheduleAtFixedRate(zzgzbVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzgzb zzgzbVar = new zzgzb(runnable);
        return new zzgza(zzgzbVar, this.f.scheduleWithFixedDelay(zzgzbVar, j, j2, timeUnit));
    }
}
