package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.MoreObjects;
import com.google.errorprone.annotations.DoNotMock;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
@DoNotMock
@J2ktIncompatible
/* loaded from: classes3.dex */
public final class ClosingFuture<V> {

    /* renamed from: a, reason: collision with root package name */
    public static final LazyLogger f12570a = new LazyLogger(ClosingFuture.class);

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public final Object call() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements AsyncCallable<Object> {
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements FutureCallback<AutoCloseable> {
        @Override // com.google.common.util.concurrent.FutureCallback
        public final void a(Throwable th) {
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            LazyLogger lazyLogger = ClosingFuture.f12570a;
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements AsyncFunction<Object, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            LazyLogger lazyLogger = ClosingFuture.f12570a;
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements AsyncFunction<Object, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            LazyLogger lazyLogger = ClosingFuture.f12570a;
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements AsyncFunction<Throwable, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            LazyLogger lazyLogger = ClosingFuture.f12570a;
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements AsyncFunction<Throwable, Object> {
        @Override // com.google.common.util.concurrent.AsyncFunction
        public final ListenableFuture apply(Object obj) {
            LazyLogger lazyLogger = ClosingFuture.f12570a;
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface AsyncClosingCallable<V> {
    }

    /* loaded from: classes3.dex */
    public interface AsyncClosingFunction<T, U> {
    }

    /* loaded from: classes3.dex */
    public static final class CloseableList extends IdentityHashMap<AutoCloseable, Executor> implements AutoCloseable {

        /* renamed from: c, reason: collision with root package name */
        public volatile boolean f12571c;

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.f12571c) {
                return;
            }
            synchronized (this) {
                try {
                    if (this.f12571c) {
                        return;
                    }
                    this.f12571c = true;
                    for (Map.Entry<AutoCloseable, Executor> entry : entrySet()) {
                        ClosingFuture.a(entry.getKey(), entry.getValue());
                    }
                    clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface ClosingCallable<V> {
    }

    /* loaded from: classes3.dex */
    public interface ClosingFunction<T, U> {
    }

    @DoNotMock
    /* loaded from: classes3.dex */
    public static class Combiner {

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Callable<Object> {
            @Override // java.util.concurrent.Callable
            public final Object call() {
                throw null;
            }

            public final String toString() {
                throw null;
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements AsyncCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public interface AsyncCombiningCallable<V> {
        }

        /* loaded from: classes3.dex */
        public interface CombiningCallable<V> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class Combiner2<V1, V2> extends Combiner {

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Combiner.CombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner2$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Combiner.AsyncCombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public interface AsyncClosingFunction2<V1, V2, U> {
        }

        /* loaded from: classes3.dex */
        public interface ClosingFunction2<V1, V2, U> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class Combiner3<V1, V2, V3> extends Combiner {

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner3$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Combiner.CombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner3$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Combiner.AsyncCombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public interface AsyncClosingFunction3<V1, V2, V3, U> {
        }

        /* loaded from: classes3.dex */
        public interface ClosingFunction3<V1, V2, V3, U> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class Combiner4<V1, V2, V3, V4> extends Combiner {

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner4$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Combiner.CombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner4$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Combiner.AsyncCombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public interface AsyncClosingFunction4<V1, V2, V3, V4, U> {
        }

        /* loaded from: classes3.dex */
        public interface ClosingFunction4<V1, V2, V3, V4, U> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class Combiner5<V1, V2, V3, V4, V5> extends Combiner {

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Combiner.CombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner5$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Combiner.AsyncCombiningCallable<Object> {
            public final String toString() {
                throw null;
            }
        }

        /* loaded from: classes3.dex */
        public interface AsyncClosingFunction5<V1, V2, V3, V4, V5, U> {
        }

        /* loaded from: classes3.dex */
        public interface ClosingFunction5<V1, V2, V3, V4, V5, U> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class DeferredCloser {
    }

    /* loaded from: classes3.dex */
    public static final class Peeker {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ State[] f12572c = {new Enum("OPEN", 0), new Enum("SUBSUMED", 1), new Enum("WILL_CLOSE", 2), new Enum("CLOSING", 3), new Enum("CLOSED", 4), new Enum("WILL_CREATE_VALUE_AND_CLOSER", 5)};

        /* JADX INFO: Fake field, exist only in values array */
        State EF5;

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f12572c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ValueAndCloser<V> {
    }

    /* loaded from: classes3.dex */
    public interface ValueAndCloserConsumer<V> {
    }

    public static void a(final AutoCloseable autoCloseable, Executor executor) {
        if (autoCloseable == null) {
            return;
        }
        try {
            executor.execute(new Runnable() { // from class: com.google.common.util.concurrent.c
                @Override // java.lang.Runnable
                public final void run() {
                    AutoCloseable autoCloseable2 = autoCloseable;
                    LazyLogger lazyLogger = ClosingFuture.f12570a;
                    try {
                        com.google.android.gms.internal.mlkit_vision_text_common.a.A(autoCloseable2);
                    } catch (Exception e) {
                        Platform.a(e);
                        ClosingFuture.f12570a.a().log(Level.WARNING, "thrown by close()", (Throwable) e);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            LazyLogger lazyLogger = f12570a;
            Logger a2 = lazyLogger.a();
            Level level = Level.WARNING;
            if (a2.isLoggable(level)) {
                lazyLogger.a().log(level, String.format("while submitting close to %s; will close inline", executor), (Throwable) e);
            }
            a(autoCloseable, DirectExecutor.f12575c);
        }
    }

    public final void finalize() {
        throw null;
    }

    public final String toString() {
        MoreObjects.b(this);
        throw null;
    }
}
