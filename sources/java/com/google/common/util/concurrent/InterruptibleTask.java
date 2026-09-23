package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.j2objc.annotations.ReflectionSupport;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;

@ReflectionSupport
@GwtCompatible
/* loaded from: classes3.dex */
abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public static final Runnable f12586c = new Object();
    public static final Runnable f = new Object();

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class Blocker extends AbstractOwnableSynchronizer implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final InterruptibleTask f12587c;

        public Blocker(InterruptibleTask interruptibleTask) {
            this.f12587c = interruptibleTask;
        }

        public static void a(Blocker blocker, Thread thread) {
            blocker.setExclusiveOwnerThread(thread);
        }

        @Override // java.lang.Runnable
        public final void run() {
        }

        public final String toString() {
            return this.f12587c.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class DoNothingRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    public abstract void a(Throwable th);

    public abstract void b(Object obj);

    public abstract boolean c();

    public abstract Object d();

    public abstract String e();

    public final void f(Thread thread) {
        Runnable runnable = get();
        Blocker blocker = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof Blocker;
            Runnable runnable2 = f;
            if (!z2 && runnable != runnable2) {
                break;
            }
            if (z2) {
                blocker = (Blocker) runnable;
            }
            i++;
            if (i > 1000) {
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (!Thread.interrupted() && !z) {
                        z = false;
                    } else {
                        z = true;
                    }
                    LockSupport.park(blocker);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean c2 = c();
            Runnable runnable = f12586c;
            if (!c2) {
                try {
                    obj = d();
                } catch (Throwable th) {
                    try {
                        Platform.a(th);
                        if (!compareAndSet(currentThread, runnable)) {
                            f(currentThread);
                        }
                        if (!c2) {
                            a(th);
                            return;
                        }
                        return;
                    } finally {
                        if (!compareAndSet(currentThread, runnable)) {
                            f(currentThread);
                        }
                        if (!c2) {
                            b(null);
                        }
                    }
                }
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f12586c) {
            str = "running=[DONE]";
        } else if (runnable instanceof Blocker) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        StringBuilder v = android.support.v4.media.a.v(str, ", ");
        v.append(e());
        return v.toString();
    }
}
