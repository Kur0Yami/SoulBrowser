package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class SerialExecutor implements Executor {
    public final Executor f;
    public volatile Runnable h;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f1953c = new ArrayDeque();
    public final Object g = new Object();

    /* loaded from: classes.dex */
    public static class Task implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SerialExecutor f1954c;
        public final Runnable f;

        public Task(SerialExecutor serialExecutor, Runnable runnable) {
            this.f1954c = serialExecutor;
            this.f = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            SerialExecutor serialExecutor = this.f1954c;
            try {
                this.f.run();
            } finally {
                serialExecutor.b();
            }
        }
    }

    public SerialExecutor(Executor executor) {
        this.f = executor;
    }

    public final boolean a() {
        boolean z;
        synchronized (this.g) {
            z = !this.f1953c.isEmpty();
        }
        return z;
    }

    public final void b() {
        synchronized (this.g) {
            try {
                Runnable runnable = (Runnable) this.f1953c.poll();
                this.h = runnable;
                if (runnable != null) {
                    this.f.execute(this.h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.g) {
            try {
                this.f1953c.add(new Task(this, runnable));
                if (this.h == null) {
                    b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
