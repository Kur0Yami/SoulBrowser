package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class JdkFutureAdapters {

    /* loaded from: classes3.dex */
    public static final class ListenableFutureAdapter<V> extends ForwardingFuture<V> implements ListenableFuture<V> {

        /* renamed from: c, reason: collision with root package name */
        public static final ExecutorService f12588c;

        static {
            ThreadFactoryBuilder threadFactoryBuilder = new ThreadFactoryBuilder();
            threadFactoryBuilder.b = Boolean.TRUE;
            Locale locale = Locale.ROOT;
            threadFactoryBuilder.f12597a = "ListenableFutureAdapter-thread-%d";
            f12588c = Executors.newCachedThreadPool(threadFactoryBuilder.a());
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture
        /* renamed from: h0 */
        public final Future e0() {
            return null;
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public final void k(Runnable runnable, Executor executor) {
            throw null;
        }
    }
}
