package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.concurrent.Callable;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class ForwardingListeningExecutorService extends ForwardingExecutorService implements ListeningExecutorService, AutoCloseable {
    @Override // com.google.common.util.concurrent.ForwardingExecutorService, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        androidx.core.provider.b.e(this);
    }

    @Override // com.google.common.util.concurrent.ForwardingExecutorService
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract ListeningExecutorService e0();

    @Override // com.google.common.util.concurrent.ForwardingExecutorService, java.util.concurrent.ExecutorService
    public final ListenableFuture submit(Callable callable) {
        return e0().submit(callable);
    }

    @Override // com.google.common.util.concurrent.ForwardingExecutorService, java.util.concurrent.ExecutorService
    public final ListenableFuture submit(Runnable runnable) {
        return e0().submit(runnable);
    }

    @Override // com.google.common.util.concurrent.ForwardingExecutorService, java.util.concurrent.ExecutorService
    public final ListenableFuture submit(Runnable runnable, Object obj) {
        return e0().submit(runnable, obj);
    }
}
