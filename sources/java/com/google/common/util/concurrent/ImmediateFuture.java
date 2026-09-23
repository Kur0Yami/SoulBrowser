package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public class ImmediateFuture<V> implements ListenableFuture<V> {
    public static final ListenableFuture f = new ImmediateFuture(null);
    public static final LazyLogger g = new LazyLogger(ImmediateFuture.class);

    /* renamed from: c, reason: collision with root package name */
    public final Object f12585c;

    /* loaded from: classes3.dex */
    public static final class ImmediateCancelledFuture<V> extends AbstractFuture.TrustedFuture<V> {
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.common.util.concurrent.AbstractFuture] */
        static {
            if (AbstractFutureState.j) {
                return;
            }
            new Object().cancel(false);
        }
    }

    /* loaded from: classes3.dex */
    public static final class ImmediateFailedFuture<V> extends AbstractFuture.TrustedFuture<V> {
    }

    public ImmediateFuture(Object obj) {
        this.f12585c = obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f12585c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        Preconditions.h(runnable, "Runnable was null.");
        Preconditions.h(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            g.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public final String toString() {
        return super.toString() + "[status=SUCCESS, result=[" + this.f12585c + "]]";
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f12585c;
    }
}
