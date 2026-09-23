package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ConcurrentKt;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ExecutorCoroutineDispatcherImpl extends ExecutorCoroutineDispatcher implements Delay {
    public final Executor f;

    public ExecutorCoroutineDispatcherImpl(Executor executor) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        Method method;
        this.f = executor;
        Method method2 = ConcurrentKt.f21867a;
        try {
            if (executor instanceof ScheduledThreadPoolExecutor) {
                scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) executor;
            } else {
                scheduledThreadPoolExecutor = null;
            }
            if (scheduledThreadPoolExecutor != null && (method = ConcurrentKt.f21867a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    public static void X(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        CancellationException cancellationException = new CancellationException("The task was rejected");
        cancellationException.initCause(rejectedExecutionException);
        JobKt.a(coroutineContext, cancellationException);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void S(CoroutineContext coroutineContext, Runnable runnable) {
        try {
            this.f.execute(runnable);
        } catch (RejectedExecutionException e) {
            X(coroutineContext, e);
            Dispatchers.b.S(coroutineContext, runnable);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ExecutorService executorService;
        Executor executor = this.f;
        if (executor instanceof ExecutorService) {
            executorService = (ExecutorService) executor;
        } else {
            executorService = null;
        }
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final void e(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executor = this.f;
        ScheduledFuture<?> scheduledFuture = null;
        if (executor instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executor;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            ResumeUndispatchedRunnable resumeUndispatchedRunnable = new ResumeUndispatchedRunnable(this, cancellableContinuationImpl);
            CoroutineContext coroutineContext = cancellableContinuationImpl.i;
            try {
                scheduledFuture = scheduledExecutorService.schedule(resumeUndispatchedRunnable, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                X(coroutineContext, e);
            }
        }
        if (scheduledFuture != null) {
            cancellableContinuationImpl.u(new CancelFutureOnCancel(scheduledFuture));
        } else {
            DefaultExecutor.l.e(j, cancellableContinuationImpl);
        }
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ExecutorCoroutineDispatcherImpl) && ((ExecutorCoroutineDispatcherImpl) obj).f == this.f) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f);
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle o(long j, Runnable runnable, CoroutineContext coroutineContext) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executor = this.f;
        ScheduledFuture<?> scheduledFuture = null;
        if (executor instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executor;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            try {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                X(coroutineContext, e);
            }
        }
        if (scheduledFuture != null) {
            return new DisposableFutureHandle(scheduledFuture);
        }
        return DefaultExecutor.l.o(j, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return this.f.toString();
    }
}
