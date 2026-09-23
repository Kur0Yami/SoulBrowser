package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Futures extends GwtFuturesCatchingSpecialization {

    /* renamed from: com.google.common.util.concurrent.Futures$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Future<Object> {
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

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class CallbackListener<V> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final ListenableFutureTask f12582c;
        public final FutureCallback f;

        public CallbackListener(ListenableFutureTask listenableFutureTask, FutureCallback futureCallback) {
            this.f12582c = listenableFutureTask;
            this.f = futureCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListenableFutureTask listenableFutureTask = this.f12582c;
            FutureCallback futureCallback = this.f;
            try {
                futureCallback.onSuccess(Futures.b(listenableFutureTask));
            } catch (ExecutionException e) {
                futureCallback.a(e.getCause());
            } catch (Throwable th) {
                futureCallback.a(th);
            }
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.f(this.f);
            return b.toString();
        }
    }

    @GwtCompatible
    /* loaded from: classes3.dex */
    public static final class FutureCombiner<V> {

        /* renamed from: com.google.common.util.concurrent.Futures$FutureCombiner$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Callable<Void> {
            @Override // java.util.concurrent.Callable
            public final Void call() {
                throw null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class InCompletionOrderFuture<T> extends AbstractFuture<T> {
        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (!super.cancel(z)) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public final void d() {
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public final String m() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class InCompletionOrderState<T> {
    }

    /* loaded from: classes3.dex */
    public static final class NonCancellationPropagatingFuture<V> extends AbstractFuture.TrustedFuture<V> implements Runnable {
        @Override // com.google.common.util.concurrent.AbstractFuture
        public final void d() {
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public final String m() {
            return null;
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    public static void a(ListenableFutureTask listenableFutureTask, FutureCallback futureCallback) {
        listenableFutureTask.k(new CallbackListener(listenableFutureTask, futureCallback), DirectExecutor.f12575c);
    }

    public static Object b(Future future) {
        Preconditions.k("Future was expected to be done: %s", future, future.isDone());
        return Uninterruptibles.a(future);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.ListenableFuture, java.lang.Object, com.google.common.util.concurrent.AbstractFuture] */
    public static ListenableFuture c(Throwable th) {
        ?? obj = new Object();
        obj.o(th);
        return obj;
    }

    public static ListenableFuture d(Object obj) {
        if (obj == null) {
            return ImmediateFuture.f;
        }
        return new ImmediateFuture(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.util.concurrent.AbstractTransformFuture, com.google.common.util.concurrent.ListenableFuture, java.lang.Object, java.lang.Runnable] */
    public static ListenableFuture e(ListenableFuture listenableFuture, com.google.common.cache.b bVar) {
        int i = AbstractTransformFuture.n;
        ?? obj = new Object();
        obj.l = listenableFuture;
        obj.m = bVar;
        listenableFuture.k(obj, DirectExecutor.f12575c);
        return obj;
    }
}
