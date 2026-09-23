package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.concurrent.Executor;
import java.util.logging.Level;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ExecutionList {

    /* renamed from: c, reason: collision with root package name */
    public static final LazyLogger f12576c = new LazyLogger(ExecutionList.class);

    /* renamed from: a, reason: collision with root package name */
    public RunnableExecutorPair f12577a;
    public boolean b;

    /* loaded from: classes3.dex */
    public static final class RunnableExecutorPair {

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f12578a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public RunnableExecutorPair f12579c;

        public RunnableExecutorPair(Runnable runnable, Executor executor, RunnableExecutorPair runnableExecutorPair) {
            this.f12578a = runnable;
            this.b = executor;
            this.f12579c = runnableExecutorPair;
        }
    }

    public static void a(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            f12576c.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }
}
