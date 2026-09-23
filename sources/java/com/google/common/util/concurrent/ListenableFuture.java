package com.google.common.util.concurrent;

import com.google.errorprone.annotations.DoNotMock;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import org.jspecify.annotations.NullMarked;

@DoNotMock
@NullMarked
/* loaded from: classes3.dex */
public interface ListenableFuture<V> extends Future<V> {
    void k(Runnable runnable, Executor executor);
}
