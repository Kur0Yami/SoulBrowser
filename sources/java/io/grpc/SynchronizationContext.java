package io.grpc;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public final class SynchronizationContext implements Executor {

    /* renamed from: io.grpc.SynchronizationContext$1, reason: invalid class name */
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

    /* renamed from: io.grpc.SynchronizationContext$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class ManagedRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ScheduledHandle {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Preconditions.h(runnable, "runnable is null");
        throw null;
    }
}
