package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ExecutionList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public class ListenableFutureTask<V> extends FutureTask<V> implements ListenableFuture<V> {

    /* renamed from: c, reason: collision with root package name */
    public final ExecutionList f12591c;

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.common.util.concurrent.ExecutionList] */
    public ListenableFutureTask(Callable callable) {
        super(callable);
        this.f12591c = new Object();
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        ExecutionList executionList = this.f12591c;
        synchronized (executionList) {
            try {
                if (executionList.b) {
                    return;
                }
                executionList.b = true;
                ExecutionList.RunnableExecutorPair runnableExecutorPair = executionList.f12577a;
                ExecutionList.RunnableExecutorPair runnableExecutorPair2 = null;
                executionList.f12577a = null;
                while (runnableExecutorPair != null) {
                    ExecutionList.RunnableExecutorPair runnableExecutorPair3 = runnableExecutorPair.f12579c;
                    runnableExecutorPair.f12579c = runnableExecutorPair2;
                    runnableExecutorPair2 = runnableExecutorPair;
                    runnableExecutorPair = runnableExecutorPair3;
                }
                while (runnableExecutorPair2 != null) {
                    ExecutionList.a(runnableExecutorPair2.f12578a, runnableExecutorPair2.b);
                    runnableExecutorPair2 = runnableExecutorPair2.f12579c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        if (nanos <= 2147483647999999999L) {
            return super.get(j, timeUnit);
        }
        return super.get(Math.min(nanos, 2147483647999999999L), TimeUnit.NANOSECONDS);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        ExecutionList executionList = this.f12591c;
        executionList.getClass();
        Preconditions.h(runnable, "Runnable was null.");
        Preconditions.h(executor, "Executor was null.");
        synchronized (executionList) {
            try {
                if (!executionList.b) {
                    executionList.f12577a = new ExecutionList.RunnableExecutorPair(runnable, executor, executionList.f12577a);
                } else {
                    ExecutionList.a(runnable, executor);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
