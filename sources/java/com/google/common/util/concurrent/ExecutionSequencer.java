package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class ExecutionSequencer {

    /* renamed from: com.google.common.util.concurrent.ExecutionSequencer$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements AsyncCallable<Object> {
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ExecutionSequencer$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements AsyncCallable<Object> {
        public final String toString() {
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class RunningState {

        /* renamed from: c, reason: collision with root package name */
        public static final RunningState f12580c;
        public static final /* synthetic */ RunningState[] f;

        /* JADX INFO: Fake field, exist only in values array */
        RunningState EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.util.concurrent.ExecutionSequencer$RunningState, java.lang.Enum] */
        static {
            Enum r0 = new Enum("NOT_RUN", 0);
            ?? r1 = new Enum("CANCELLED", 1);
            f12580c = r1;
            f = new RunningState[]{r0, r1, new Enum("STARTED", 2)};
        }

        public static RunningState valueOf(String str) {
            return (RunningState) Enum.valueOf(RunningState.class, str);
        }

        public static RunningState[] values() {
            return (RunningState[]) f.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class TaskNonReentrantExecutor extends AtomicReference<RunningState> implements Executor, Runnable {

        /* renamed from: c, reason: collision with root package name */
        public Runnable f12581c;
        public Thread f;

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            if (get() == RunningState.f12580c) {
                return;
            }
            this.f = Thread.currentThread();
            try {
                throw null;
            } catch (Throwable th) {
                this.f = null;
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (Thread.currentThread() != this.f) {
                Runnable runnable = this.f12581c;
                Objects.requireNonNull(runnable);
                this.f12581c = null;
                runnable.run();
                return;
            }
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ThreadConfinedTaskQueue {
    }
}
