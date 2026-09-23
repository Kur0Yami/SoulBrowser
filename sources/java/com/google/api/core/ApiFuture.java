package com.google.api.core;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public interface ApiFuture<V> extends Future<V> {
    void k(Runnable runnable, Executor executor);
}
