package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

@DoNotMock
@GwtIncompatible
/* loaded from: classes3.dex */
public interface ListeningExecutorService extends ExecutorService {
    ListenableFuture submit(Runnable runnable);

    ListenableFuture submit(Runnable runnable, Object obj);

    ListenableFuture submit(Callable callable);
}
