package org.apache.commons.lang3.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer;

/* loaded from: classes4.dex */
public class BackgroundInitializer<T> extends AbstractConcurrentInitializer<T, Exception> {

    /* renamed from: a, reason: collision with root package name */
    public ExecutorService f22375a;
    public ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public Future f22376c;

    /* loaded from: classes4.dex */
    public static class Builder<I extends BackgroundInitializer<T>, T> extends AbstractConcurrentInitializer.AbstractBuilder<I, T, Builder<I, T>, Exception> {
        @Override // org.apache.commons.lang3.function.FailableSupplier
        public final Object get() {
            new AbstractConcurrentInitializer();
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public final class InitializationTask implements Callable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final ExecutorService f22377a;

        public InitializationTask(ExecutorService executorService) {
            this.f22377a = executorService;
        }

        @Override // java.util.concurrent.Callable
        public final Object call() {
            ExecutorService executorService = this.f22377a;
            try {
                return BackgroundInitializer.this.b();
            } finally {
                if (executorService != null) {
                    executorService.shutdown();
                }
            }
        }
    }

    @Override // org.apache.commons.lang3.concurrent.AbstractConcurrentInitializer
    public Exception a(Exception exc) {
        return new Exception(exc);
    }

    public final synchronized ExecutorService c() {
        return this.b;
    }

    public final synchronized ExecutorService d() {
        return this.f22375a;
    }

    public final synchronized Future e() {
        Future future;
        future = this.f22376c;
        if (future == null) {
            throw new IllegalStateException("start() must be called first!");
        }
        return future;
    }

    public int f() {
        return 1;
    }

    public final synchronized boolean g() {
        boolean z;
        if (this.f22376c != null) {
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // org.apache.commons.lang3.function.FailableSupplier
    public final Object get() {
        Exception exc;
        boolean z;
        try {
            return e().get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new ConcurrentException(e);
        } catch (ExecutionException e2) {
            if (e2.getCause() == null) {
                exc = null;
            } else {
                Throwable cause = e2.getCause();
                if (cause != null) {
                    if (!(cause instanceof Error)) {
                        if (cause instanceof RuntimeException) {
                            throw cause;
                        }
                    } else {
                        throw cause;
                    }
                }
                String message = e2.getMessage();
                Throwable cause2 = e2.getCause();
                if (cause2 != null && !(cause2 instanceof Error) && !(cause2 instanceof RuntimeException)) {
                    z = true;
                } else {
                    z = false;
                }
                Object[] objArr = {cause2};
                if (z) {
                    exc = new Exception(message, cause2);
                } else {
                    String str = "Not a checked exception: %s";
                    if (!ArrayUtils.b(objArr)) {
                        str = String.format("Not a checked exception: %s", objArr);
                    }
                    throw new IllegalArgumentException(str);
                }
            }
            if (exc == null) {
                return null;
            }
            throw exc;
        }
    }

    public final synchronized void h(ExecutorService executorService) {
        if (!g()) {
            this.f22375a = executorService;
        } else {
            throw new IllegalStateException("Cannot set ExecutorService after start()!");
        }
    }
}
