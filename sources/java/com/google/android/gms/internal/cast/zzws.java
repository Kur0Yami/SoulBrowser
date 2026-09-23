package com.google.android.gms.internal.cast;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzws extends zzwp implements ScheduledExecutorService, zzwo, AutoCloseable {
    public final ScheduledExecutorService f;

    public zzws(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.cast.zzwd, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        a.b(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        zzww zzwwVar = new zzww(Executors.callable(runnable, null));
        return new zzwq(zzwwVar, this.f.schedule(zzwwVar, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzwr zzwrVar = new zzwr(runnable);
        return new zzwq(zzwrVar, this.f.scheduleAtFixedRate(zzwrVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        zzwr zzwrVar = new zzwr(runnable);
        return new zzwq(zzwrVar, this.f.scheduleWithFixedDelay(zzwrVar, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* bridge */ /* synthetic */ ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        zzww zzwwVar = new zzww(callable);
        return new zzwq(zzwwVar, this.f.schedule(zzwwVar, j, timeUnit));
    }
}
