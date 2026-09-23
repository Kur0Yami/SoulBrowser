package com.google.android.gms.internal.cast;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class zzwp extends zzwd {

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f9864c;

    public zzwp(ExecutorService executorService) {
        executorService.getClass();
        this.f9864c = executorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f9864c.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f9864c.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f9864c.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f9864c.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f9864c.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        return this.f9864c.shutdownNow();
    }

    public final String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.f9864c);
        return android.support.v4.media.a.r(new StringBuilder(android.support.v4.media.a.b(String.valueOf(obj).length(), 1, valueOf.length(), 1)), obj, "[", valueOf, "]");
    }
}
