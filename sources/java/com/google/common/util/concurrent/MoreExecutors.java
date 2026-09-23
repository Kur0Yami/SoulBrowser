package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@GwtCompatible
/* loaded from: classes3.dex */
public final class MoreExecutors {

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends WrappingExecutorService {
        @Override // com.google.common.util.concurrent.WrappingExecutorService
        public final Callable a(Callable callable) {
            throw null;
        }

        @Override // com.google.common.util.concurrent.WrappingExecutorService
        public final void b(Runnable runnable) {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.MoreExecutors$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends WrappingScheduledExecutorService {
        @Override // com.google.common.util.concurrent.WrappingExecutorService
        public final Callable a(Callable callable) {
            throw null;
        }

        @Override // com.google.common.util.concurrent.WrappingExecutorService
        public final void b(Runnable runnable) {
            throw null;
        }
    }

    @GwtIncompatible
    @VisibleForTesting
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static class Application {
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class ListeningDecorator extends AbstractListeningExecutorService {
        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) {
            throw null;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            throw null;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            throw null;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            throw null;
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            throw null;
        }

        @Override // java.util.concurrent.ExecutorService
        public final List shutdownNow() {
            throw null;
        }

        public final String toString() {
            return android.support.v4.media.a.p(new StringBuilder(), super.toString(), "[null]");
        }
    }

    public static Executor a() {
        return DirectExecutor.f12575c;
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class ScheduledListeningDecorator extends ListeningDecorator implements ListeningScheduledExecutorService, AutoCloseable {

        /* loaded from: classes3.dex */
        public static final class ListenableScheduledTask<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {
            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public final boolean cancel(boolean z) {
                boolean cancel = super.cancel(z);
                if (!cancel) {
                    return cancel;
                }
                throw null;
            }

            @Override // java.lang.Comparable
            public final int compareTo(Delayed delayed) {
                throw null;
            }

            @Override // java.util.concurrent.Delayed
            public final long getDelay(TimeUnit timeUnit) {
                throw null;
            }
        }

        @GwtIncompatible
        /* loaded from: classes3.dex */
        public static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.TrustedFuture<Void> implements Runnable {
            public final Runnable l;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                runnable.getClass();
                this.l = runnable;
            }

            @Override // com.google.common.util.concurrent.AbstractFuture
            public final String m() {
                return "task=[" + this.l + "]";
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    this.l.run();
                } catch (Throwable th) {
                    o(th);
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractListeningExecutorService, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            androidx.core.provider.b.g(this);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
            new TrustedListenableFutureTask(callable);
            throw null;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            new NeverSuccessfulListenableFutureTask(runnable);
            throw null;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            new NeverSuccessfulListenableFutureTask(runnable);
            throw null;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            new TrustedListenableFutureTask(Executors.callable(runnable, null));
            throw null;
        }
    }
}
