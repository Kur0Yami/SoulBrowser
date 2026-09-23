package androidx.concurrent.futures;

import androidx.concurrent.futures.AbstractResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class CallbackToFutureAdapter {

    /* loaded from: classes.dex */
    public static final class Completer<T> {

        /* renamed from: a, reason: collision with root package name */
        public Object f489a;
        public SafeFuture b;

        /* renamed from: c, reason: collision with root package name */
        public ResolvableFuture f490c;
        public boolean d;

        public final void a(Object obj) {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null) {
                AbstractResolvableFuture abstractResolvableFuture = safeFuture.f;
                abstractResolvableFuture.getClass();
                if (obj == null) {
                    obj = AbstractResolvableFuture.k;
                }
                if (AbstractResolvableFuture.j.b(abstractResolvableFuture, null, obj)) {
                    AbstractResolvableFuture.b(abstractResolvableFuture);
                    this.f489a = null;
                    this.b = null;
                    this.f490c = null;
                }
            }
        }

        public final void b() {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null && safeFuture.f.cancel(true)) {
                this.f489a = null;
                this.b = null;
                this.f490c = null;
            }
        }

        public final void c(Throwable th) {
            this.d = true;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null && safeFuture.f.h(th)) {
                this.f489a = null;
                this.b = null;
                this.f490c = null;
            }
        }

        public final void finalize() {
            ResolvableFuture resolvableFuture;
            SafeFuture safeFuture = this.b;
            if (safeFuture != null) {
                AbstractResolvableFuture abstractResolvableFuture = safeFuture.f;
                if (!abstractResolvableFuture.isDone()) {
                    abstractResolvableFuture.h(new Throwable("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f489a));
                }
            }
            if (!this.d && (resolvableFuture = this.f490c) != null) {
                resolvableFuture.i(null);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class FutureGarbageCollectedException extends Throwable {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface Resolver<T> {
        Object a(Completer completer);
    }

    /* loaded from: classes.dex */
    public static final class SafeFuture<T> implements ListenableFuture<T> {

        /* renamed from: c, reason: collision with root package name */
        public final WeakReference f491c;
        public final AbstractResolvableFuture f = new AbstractResolvableFuture<T>() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public final String f() {
                Completer completer = (Completer) SafeFuture.this.f491c.get();
                if (completer == null) {
                    return "Completer object has been garbage collected, future will fail soon";
                }
                return "tag=[" + completer.f489a + "]";
            }
        };

        public SafeFuture(Completer completer) {
            this.f491c = new WeakReference(completer);
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            Completer completer = (Completer) this.f491c.get();
            boolean cancel = this.f.cancel(z);
            if (cancel && completer != null) {
                completer.f489a = null;
                completer.b = null;
                completer.f490c.i(null);
            }
            return cancel;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.f.get();
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.f.f479c instanceof AbstractResolvableFuture.Cancellation;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return this.f.isDone();
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public final void k(Runnable runnable, Executor executor) {
            this.f.k(runnable, executor);
        }

        public final String toString() {
            return this.f.toString();
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return this.f.get(j, timeUnit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.concurrent.futures.CallbackToFutureAdapter$Completer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.concurrent.futures.ResolvableFuture, java.lang.Object] */
    public static ListenableFuture a(Resolver resolver) {
        ?? obj = new Object();
        obj.f490c = new Object();
        SafeFuture safeFuture = new SafeFuture(obj);
        obj.b = safeFuture;
        obj.f489a = resolver.getClass();
        try {
            Object a2 = resolver.a(obj);
            if (a2 != null) {
                obj.f489a = a2;
                return safeFuture;
            }
            return safeFuture;
        } catch (Exception e) {
            safeFuture.f.h(e);
            return safeFuture;
        }
    }
}
