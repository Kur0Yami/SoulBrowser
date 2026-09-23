package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.logging.Logging;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
class SafeLoggingExecutor implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public final Executor f2826c;

    /* loaded from: classes.dex */
    public static class SafeLoggingRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final Runnable f2827c;

        public SafeLoggingRunnable(Runnable runnable) {
            this.f2827c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f2827c.run();
            } catch (Exception e) {
                Logging.c("Executor", "Background execution failure.", e);
            }
        }
    }

    public SafeLoggingExecutor(ExecutorService executorService) {
        this.f2826c = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2826c.execute(new SafeLoggingRunnable(runnable));
    }
}
