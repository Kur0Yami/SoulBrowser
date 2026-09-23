package com.google.api.core;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class ForwardingApiFuture<T> implements ApiFuture<T> {
    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        throw null;
    }

    @Override // com.google.api.core.ApiFuture
    public final void k(Runnable runnable, Executor executor) {
        throw null;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        throw null;
    }
}
