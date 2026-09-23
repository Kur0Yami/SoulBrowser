package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.util.concurrent.Executor;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class SequentialExecutor implements Executor {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f12594c = 0;

    /* renamed from: com.google.common.util.concurrent.SequentialExecutor$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public final class QueueWorker implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            try {
                int i = SequentialExecutor.f12594c;
                throw null;
            } catch (Error unused) {
                int i2 = SequentialExecutor.f12594c;
                throw null;
            }
        }

        public final String toString() {
            Object obj = null;
            obj.getClass();
            return "SequentialExecutorWorker{running=null}";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class WorkerRunningState {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ WorkerRunningState[] f12595c = {new Enum("IDLE", 0), new Enum("QUEUING", 1), new Enum("QUEUED", 2), new Enum("RUNNING", 3)};

        /* JADX INFO: Fake field, exist only in values array */
        WorkerRunningState EF5;

        public static WorkerRunningState valueOf(String str) {
            return (WorkerRunningState) Enum.valueOf(WorkerRunningState.class, str);
        }

        public static WorkerRunningState[] values() {
            return (WorkerRunningState[]) f12595c.clone();
        }
    }

    static {
        new LazyLogger(SequentialExecutor.class);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        throw null;
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{null}";
    }
}
