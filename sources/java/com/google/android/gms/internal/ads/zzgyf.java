package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzgyf extends zzgye {
    public final ListenableFuture l;

    public zzgyf(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.l = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.l.cancel(z);
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, java.util.concurrent.Future
    public final Object get() {
        return this.l.get();
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.l.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, java.util.concurrent.Future
    public final boolean isDone() {
        return this.l.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        this.l.k(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String toString() {
        return this.l.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgxf, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.l.get(j, timeUnit);
    }
}
