package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.util.concurrent.Service;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class AbstractScheduledService implements Service {

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Service.Listener {
    }

    /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$1ThreadFactoryImpl, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1ThreadFactoryImpl implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface Cancellable {
    }

    /* loaded from: classes3.dex */
    public static abstract class CustomScheduler extends Scheduler {

        /* loaded from: classes3.dex */
        public final class ReschedulableCallable implements Callable<Void> {
            @Override // java.util.concurrent.Callable
            public final Void call() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public static final class Schedule {
        }

        /* loaded from: classes3.dex */
        public static final class SupplantableFuture implements Cancellable {
        }
    }

    /* loaded from: classes3.dex */
    public static final class FutureAsCancellable implements Cancellable {
    }

    /* loaded from: classes3.dex */
    public static abstract class Scheduler {

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$Scheduler$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends Scheduler {
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$Scheduler$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 extends Scheduler {
        }
    }

    /* loaded from: classes3.dex */
    public final class ServiceDelegate extends AbstractService {

        /* loaded from: classes3.dex */
        public final class Task implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final String toString() {
            throw null;
        }
    }

    static {
        new LazyLogger(AbstractScheduledService.class);
    }

    public final String toString() {
        throw null;
    }
}
