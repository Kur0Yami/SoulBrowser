package com.google.api.core;

import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class AbstractApiFuture<V> implements ApiFuture<V> {

    /* loaded from: classes3.dex */
    public class InternalSettableFuture extends AbstractFuture<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture
        public final void j() {
            throw null;
        }
    }

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
