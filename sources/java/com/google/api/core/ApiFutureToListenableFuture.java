package com.google.api.core;

import com.google.common.base.MoreObjects;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

@InternalApi
/* loaded from: classes3.dex */
public class ApiFutureToListenableFuture<V> implements ListenableFuture<V> {

    /* renamed from: c, reason: collision with root package name */
    public final ApiFuture f12094c;

    public ApiFutureToListenableFuture(ApiFuture apiFuture) {
        this.f12094c = apiFuture;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f12094c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f12094c.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f12094c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f12094c.isDone();
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        this.f12094c.k(runnable, executor);
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ApiFutureToListenableFuture");
        toStringHelper.b(this.f12094c, "apiFuture");
        return toStringHelper.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f12094c.get(j, timeUnit);
    }
}
