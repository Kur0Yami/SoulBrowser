package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.provider.b;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class GlideExecutor implements ExecutorService, AutoCloseable {
    public static final long f = TimeUnit.SECONDS.toMillis(10);
    public static volatile int g;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadPoolExecutor f2267c;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f2268a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2269c;
        public final ThreadFactory d = new Object();
        public final UncaughtThrowableStrategy e = UncaughtThrowableStrategy.b;
        public String f;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
        public Builder(boolean z) {
            this.f2268a = z;
        }

        public final GlideExecutor a() {
            if (!TextUtils.isEmpty(this.f)) {
                return new GlideExecutor(new ThreadPoolExecutor(this.b, this.f2269c, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new DefaultThreadFactory(this.d, this.f, this.f2268a)));
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f);
        }
    }

    /* loaded from: classes.dex */
    public static final class DefaultPriorityThreadFactory implements ThreadFactory {

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$DefaultPriorityThreadFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends Thread {
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                Process.setThreadPriority(9);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable);
        }
    }

    /* loaded from: classes.dex */
    public static final class DefaultThreadFactory implements ThreadFactory {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadFactory f2270a;
        public final String b;
        public final boolean d;
        public final AtomicInteger e = new AtomicInteger();

        /* renamed from: c, reason: collision with root package name */
        public final UncaughtThrowableStrategy f2271c = UncaughtThrowableStrategy.b;

        public DefaultThreadFactory(ThreadFactory threadFactory, String str, boolean z) {
            this.f2270a = threadFactory;
            this.b = str;
            this.d = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            Runnable runnable2 = new Runnable() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.DefaultThreadFactory.1
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultThreadFactory defaultThreadFactory = DefaultThreadFactory.this;
                    if (defaultThreadFactory.d) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        ((UncaughtThrowableStrategy.AnonymousClass2) defaultThreadFactory.f2271c).getClass();
                        if (Log.isLoggable("GlideExecutor", 6)) {
                            Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                        }
                    }
                }
            };
            ((DefaultPriorityThreadFactory) this.f2270a).getClass();
            Thread thread = new Thread(runnable2);
            thread.setName("glide-" + this.b + "-thread-" + this.e.getAndIncrement());
            return thread;
        }
    }

    /* loaded from: classes.dex */
    public interface UncaughtThrowableStrategy {

        /* renamed from: a, reason: collision with root package name */
        public static final UncaughtThrowableStrategy f2273a = null;
        public static final UncaughtThrowableStrategy b = new Object();

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements UncaughtThrowableStrategy {
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass2 implements UncaughtThrowableStrategy {
        }

        /* renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass3 implements UncaughtThrowableStrategy {
        }
    }

    public GlideExecutor(ThreadPoolExecutor threadPoolExecutor) {
        this.f2267c = threadPoolExecutor;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public static GlideExecutor a() {
        return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(new Object(), "source-unlimited", false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f2267c.awaitTermination(j, timeUnit);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        b.a(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2267c.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection) {
        return this.f2267c.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection) {
        return this.f2267c.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f2267c.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f2267c.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f2267c.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        return this.f2267c.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        return this.f2267c.submit(runnable);
    }

    public final String toString() {
        return this.f2267c.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        return this.f2267c.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        return this.f2267c.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable, Object obj) {
        return this.f2267c.submit(runnable, obj);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Callable callable) {
        return this.f2267c.submit(callable);
    }
}
