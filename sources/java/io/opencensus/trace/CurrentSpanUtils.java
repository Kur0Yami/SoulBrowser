package io.opencensus.trace;

import io.opencensus.common.Scope;
import io.opencensus.trace.unsafe.ContextHandleUtils;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
final class CurrentSpanUtils {

    /* loaded from: classes3.dex */
    public static final class CallableInSpan<V> implements Callable<V> {
        @Override // java.util.concurrent.Callable
        public final Object call() {
            ContextManager contextManager = ContextHandleUtils.b;
            ContextHandle b = contextManager.b(contextManager.c(), null).b();
            try {
                try {
                    throw null;
                } catch (Throwable th) {
                    ContextHandleUtils.b.c().a(b);
                    throw th;
                }
            } catch (Exception e) {
                CurrentSpanUtils.a(e);
                throw null;
            } catch (Throwable th2) {
                CurrentSpanUtils.a(th2);
                throw null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class RunnableInSpan implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            ContextManager contextManager = ContextHandleUtils.b;
            ContextHandle b = contextManager.b(contextManager.c(), null).b();
            try {
                throw null;
            } finally {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class ScopeInSpan implements Scope {

        /* renamed from: c, reason: collision with root package name */
        public final ContextHandle f21100c;

        public ScopeInSpan(Span span) {
            ContextManager contextManager = ContextHandleUtils.b;
            this.f21100c = contextManager.b(contextManager.c(), span).b();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            ContextHandleUtils.b.c().a(this.f21100c);
        }
    }

    public static void a(Throwable th) {
        String message;
        Status status = Status.e;
        if (th.getMessage() == null) {
            message = th.getClass().getSimpleName();
        } else {
            message = th.getMessage();
        }
        status.a(message);
        throw null;
    }
}
