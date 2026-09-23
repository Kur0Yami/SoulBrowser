package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.InterruptibleTask;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

@GwtCompatible
/* loaded from: classes3.dex */
class TrustedListenableFutureTask<V> extends FluentFuture.TrustedFuture<V> implements RunnableFuture<V> {
    public volatile TrustedFutureInterruptibleTask l;

    /* loaded from: classes3.dex */
    public final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<ListenableFuture<V>> {
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final void a(Throwable th) {
            throw null;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final void b(Object obj) {
            throw null;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean c() {
            throw null;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final Object d() {
            throw null;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final String e() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        public final Callable g;

        public TrustedFutureInterruptibleTask(Callable callable) {
            callable.getClass();
            this.g = callable;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final void a(Throwable th) {
            TrustedListenableFutureTask.this.o(th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final void b(Object obj) {
            TrustedListenableFutureTask.this.n(obj);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean c() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final Object d() {
            return this.g.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final String e() {
            return this.g.toString();
        }
    }

    public TrustedListenableFutureTask(Callable callable) {
        this.l = new TrustedFutureInterruptibleTask(callable);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void d() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask;
        Object obj = this.f12561c;
        if ((obj instanceof AbstractFuture.Cancellation) && ((AbstractFuture.Cancellation) obj).f12556a && (trustedFutureInterruptibleTask = this.l) != null) {
            Runnable runnable = InterruptibleTask.f;
            Runnable runnable2 = InterruptibleTask.f12586c;
            Runnable runnable3 = (Runnable) trustedFutureInterruptibleTask.get();
            if (runnable3 instanceof Thread) {
                InterruptibleTask.Blocker blocker = new InterruptibleTask.Blocker(trustedFutureInterruptibleTask);
                InterruptibleTask.Blocker.a(blocker, Thread.currentThread());
                if (trustedFutureInterruptibleTask.compareAndSet(runnable3, blocker)) {
                    try {
                        ((Thread) runnable3).interrupt();
                    } finally {
                        if (((Runnable) trustedFutureInterruptibleTask.getAndSet(runnable2)) == runnable) {
                            LockSupport.unpark((Thread) runnable3);
                        }
                    }
                }
            }
        }
        this.l = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String m() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask = this.l;
        if (trustedFutureInterruptibleTask != null) {
            return "task=[" + trustedFutureInterruptibleTask + "]";
        }
        return super.m();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        TrustedFutureInterruptibleTask trustedFutureInterruptibleTask = this.l;
        if (trustedFutureInterruptibleTask != null) {
            trustedFutureInterruptibleTask.run();
        }
        this.l = null;
    }
}
