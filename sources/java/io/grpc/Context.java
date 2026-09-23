package io.grpc;

import io.grpc.PersistentHashArrayMappedTrie;
import io.opencensus.trace.Span;
import java.io.Closeable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

@CheckReturnValue
/* loaded from: classes3.dex */
public class Context {
    public static final Logger h = Logger.getLogger(Context.class.getName());
    public static final Context i = new Context();

    /* renamed from: c, reason: collision with root package name */
    public final CancellableContext f21032c;
    public final PersistentHashArrayMappedTrie.Node f;
    public final int g;

    /* renamed from: io.grpc.Context$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: io.grpc.Context$1CurrentContextExecutor, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1CurrentContextExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Context.b().getClass();
            throw null;
        }
    }

    /* renamed from: io.grpc.Context$1FixedContextExecutor, reason: invalid class name */
    /* loaded from: classes3.dex */
    final class C1FixedContextExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            throw null;
        }
    }

    /* renamed from: io.grpc.Context$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Callable<Object> {
        @Override // java.util.concurrent.Callable
        public final Object call() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public @interface CanIgnoreReturnValue {
    }

    /* loaded from: classes3.dex */
    public static final class CancellableContext extends Context implements Closeable {

        /* renamed from: io.grpc.Context$CancellableContext$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements CancellationListener {
        }

        /* renamed from: io.grpc.Context$CancellableContext$1CancelOnExpiration, reason: invalid class name */
        /* loaded from: classes3.dex */
        final class C1CancelOnExpiration implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    new TimeoutException("context timed out");
                    throw null;
                } catch (Throwable th) {
                    Context.h.log(Level.SEVERE, "Cancel threw an exception, which should not happen", th);
                }
            }
        }

        @Override // io.grpc.Context
        public final Context a() {
            throw null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
            }
        }

        @Override // io.grpc.Context
        public final void d(Context context) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface CancellationListener {
    }

    /* loaded from: classes3.dex */
    public @interface CheckReturnValue {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class DirectExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ DirectExecutor[] f21033c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        DirectExecutor EF5;

        public static DirectExecutor valueOf(String str) {
            return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
        }

        public static DirectExecutor[] values() {
            return (DirectExecutor[]) f21033c.clone();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Context.DirectExecutor";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ExecutableListener implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Key<T> {

        /* renamed from: a, reason: collision with root package name */
        public final String f21034a;
        public final Object b;

        public Key(String str, Object obj) {
            Logger logger = Context.h;
            this.f21034a = str;
            this.b = obj;
        }

        public final Object a(Context context) {
            Object a2;
            PersistentHashArrayMappedTrie.Node node = context.f;
            if (node == null) {
                a2 = null;
            } else {
                a2 = node.a(this, hashCode(), 0);
            }
            if (a2 == null) {
                return this.b;
            }
            return a2;
        }

        public final String toString() {
            return this.f21034a;
        }
    }

    /* loaded from: classes3.dex */
    public static final class LazyStorage {

        /* renamed from: a, reason: collision with root package name */
        public static final Storage f21035a;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v3, types: [io.grpc.Context$Storage] */
        static {
            ?? r1;
            AtomicReference atomicReference = new AtomicReference();
            try {
                r1 = (Storage) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(Storage.class).getConstructor(null).newInstance(null);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                r1 = new Object();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
            f21035a = r1;
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                Context.h.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Storage {
        public abstract Context a();

        public abstract void b(Context context, Context context2);

        public abstract Context c(Context context);
    }

    public Context(Context context, PersistentHashArrayMappedTrie.Node node) {
        CancellableContext cancellableContext;
        if (context instanceof CancellableContext) {
            cancellableContext = (CancellableContext) context;
        } else {
            cancellableContext = context.f21032c;
        }
        this.f21032c = cancellableContext;
        this.f = node;
        int i2 = context.g + 1;
        this.g = i2;
        if (i2 == 1000) {
            h.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    public static Context b() {
        Context a2 = LazyStorage.f21035a.a();
        if (a2 == null) {
            return i;
        }
        return a2;
    }

    public Context a() {
        Context c2 = LazyStorage.f21035a.c(this);
        if (c2 == null) {
            return i;
        }
        return c2;
    }

    public void d(Context context) {
        if (context != null) {
            LazyStorage.f21035a.b(this, context);
            return;
        }
        throw new NullPointerException("toAttach");
    }

    public final Context e(Key key, Span span) {
        PersistentHashArrayMappedTrie.Node b;
        PersistentHashArrayMappedTrie.Node node = this.f;
        if (node == null) {
            b = new PersistentHashArrayMappedTrie.Leaf(key, span);
        } else {
            b = node.b(key.hashCode(), 0, key, span);
        }
        return new Context(this, b);
    }

    public Context() {
        this.f21032c = null;
        this.f = null;
        this.g = 0;
    }
}
