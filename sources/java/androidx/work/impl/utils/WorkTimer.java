package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.background.systemalarm.DelayMetCommandHandler;
import java.util.HashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

@RestrictTo
/* loaded from: classes.dex */
public class WorkTimer {
    public static final String e = Logger.e("WorkTimer");

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f1967a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1968c;
    public final Object d;

    /* renamed from: androidx.work.impl.utils.WorkTimer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public int f1969a;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f1969a);
            this.f1969a = this.f1969a + 1;
            return newThread;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public interface TimeLimitExceededListener {
        void a(String str);
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class WorkTimerRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final WorkTimer f1970c;
        public final String f;

        public WorkTimerRunnable(WorkTimer workTimer, String str) {
            this.f1970c = workTimer;
            this.f = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f1970c.d) {
                try {
                    if (((WorkTimerRunnable) this.f1970c.b.remove(this.f)) != null) {
                        TimeLimitExceededListener timeLimitExceededListener = (TimeLimitExceededListener) this.f1970c.f1968c.remove(this.f);
                        if (timeLimitExceededListener != null) {
                            timeLimitExceededListener.a(this.f);
                        }
                    } else {
                        Logger.c().a("WrkTimerRunnable", "Timer with " + this.f + " is already marked as complete.", new Throwable[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.impl.utils.WorkTimer$1, java.lang.Object, java.util.concurrent.ThreadFactory] */
    public WorkTimer() {
        ?? obj = new Object();
        obj.f1969a = 0;
        this.b = new HashMap();
        this.f1968c = new HashMap();
        this.d = new Object();
        this.f1967a = Executors.newSingleThreadScheduledExecutor(obj);
    }

    public final void a(String str, DelayMetCommandHandler delayMetCommandHandler) {
        synchronized (this.d) {
            Logger.c().a(e, "Starting timer for " + str, new Throwable[0]);
            b(str);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, str);
            this.b.put(str, workTimerRunnable);
            this.f1968c.put(str, delayMetCommandHandler);
            this.f1967a.schedule(workTimerRunnable, 600000L, TimeUnit.MILLISECONDS);
        }
    }

    public final void b(String str) {
        synchronized (this.d) {
            try {
                if (((WorkTimerRunnable) this.b.remove(str)) != null) {
                    Logger.c().a(e, "Stopping timer for " + str, new Throwable[0]);
                    this.f1968c.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
