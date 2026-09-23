package androidx.concurrent.futures;

import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

@RestrictTo
/* loaded from: classes.dex */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {
    public static final boolean h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger i = Logger.getLogger(AbstractResolvableFuture.class.getName());
    public static final AtomicHelper j;
    public static final Object k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f479c;
    public volatile Listener f;
    public volatile Waiter g;

    /* loaded from: classes.dex */
    public static abstract class AtomicHelper {
        public abstract boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2);

        public abstract boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        public abstract void d(Waiter waiter, Waiter waiter2);

        public abstract void e(Waiter waiter, Thread thread);
    }

    /* loaded from: classes.dex */
    public static final class Cancellation {
        public static final Cancellation b;

        /* renamed from: c, reason: collision with root package name */
        public static final Cancellation f480c;

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f481a;

        static {
            if (AbstractResolvableFuture.h) {
                f480c = null;
                b = null;
            } else {
                f480c = new Cancellation(null, false);
                b = new Cancellation(null, true);
            }
        }

        public Cancellation(Throwable th, boolean z) {
            this.f481a = th;
        }
    }

    /* loaded from: classes.dex */
    public static final class Failure {

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f482a;

        /* renamed from: androidx.concurrent.futures.AbstractResolvableFuture$Failure$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new Failure(new Throwable("Failure occurred while trying to finish a future."));
        }

        public Failure(Throwable th) {
            boolean z = AbstractResolvableFuture.h;
            th.getClass();
            this.f482a = th;
        }
    }

    /* loaded from: classes.dex */
    public static final class Listener {
        public static final Listener d = new Listener(null, null);

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f483a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public Listener f484c;

        public Listener(Runnable runnable, Executor executor) {
            this.f483a = runnable;
            this.b = executor;
        }
    }

    /* loaded from: classes.dex */
    public static final class SafeAtomicHelper extends AtomicHelper {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f485a;
        public final AtomicReferenceFieldUpdater b;

        /* renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f486c;
        public final AtomicReferenceFieldUpdater d;
        public final AtomicReferenceFieldUpdater e;

        public SafeAtomicHelper(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            this.f485a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.f486c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, listener, listener2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == listener);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == obj);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f486c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, waiter, waiter2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == waiter);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            this.b.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            this.f485a.lazySet(waiter, thread);
        }
    }

    /* loaded from: classes.dex */
    public static final class SetFuture<V> implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static final class SynchronizedHelper extends AtomicHelper {
        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f == listener) {
                        abstractResolvableFuture.f = listener2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f479c == obj) {
                        abstractResolvableFuture.f479c = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.g == waiter) {
                        abstractResolvableFuture.g = waiter2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            waiter.b = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            waiter.f488a = thread;
        }
    }

    /* loaded from: classes.dex */
    public static final class Waiter {

        /* renamed from: c, reason: collision with root package name */
        public static final Waiter f487c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f488a;
        public volatile Waiter b;

        public Waiter() {
            AbstractResolvableFuture.j.e(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.concurrent.futures.AbstractResolvableFuture$AtomicHelper] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    static {
        ?? r3;
        try {
            th = null;
            r3 = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, "g"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, "f"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "c"));
        } catch (Throwable th) {
            th = th;
            r3 = new Object();
        }
        j = r3;
        if (th != null) {
            i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        k = new Object();
    }

    public static void b(AbstractResolvableFuture abstractResolvableFuture) {
        Waiter waiter;
        Listener listener;
        do {
            waiter = abstractResolvableFuture.g;
        } while (!j.c(abstractResolvableFuture, waiter, Waiter.f487c));
        while (waiter != null) {
            Thread thread = waiter.f488a;
            if (thread != null) {
                waiter.f488a = null;
                LockSupport.unpark(thread);
            }
            waiter = waiter.b;
        }
        do {
            listener = abstractResolvableFuture.f;
        } while (!j.a(abstractResolvableFuture, listener, Listener.d));
        Listener listener2 = null;
        while (listener != null) {
            Listener listener3 = listener.f484c;
            listener.f484c = listener2;
            listener2 = listener;
            listener = listener3;
        }
        while (listener2 != null) {
            Listener listener4 = listener2.f484c;
            Runnable runnable = listener2.f483a;
            if (!(runnable instanceof SetFuture)) {
                c(runnable, listener2.b);
                listener2 = listener4;
            } else {
                throw null;
            }
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            i.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public static Object d(Object obj) {
        if (!(obj instanceof Cancellation)) {
            if (!(obj instanceof Failure)) {
                if (obj == k) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((Failure) obj).f482a);
        }
        Throwable th = ((Cancellation) obj).f481a;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static Object e(AbstractResolvableFuture abstractResolvableFuture) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = abstractResolvableFuture.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public final void a(StringBuilder sb) {
        String valueOf;
        try {
            Object e = e(this);
            sb.append("SUCCESS, result=[");
            if (e == this) {
                valueOf = "this future";
            } else {
                valueOf = String.valueOf(e);
            }
            sb.append(valueOf);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Cancellation cancellation;
        Object obj = this.f479c;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 | (obj instanceof SetFuture)) {
            if (h) {
                cancellation = new Cancellation(new CancellationException("Future.cancel() was called."), z);
            } else if (z) {
                cancellation = Cancellation.b;
            } else {
                cancellation = Cancellation.f480c;
            }
            while (!j.b(this, obj, cancellation)) {
                obj = this.f479c;
                if (!(obj instanceof SetFuture)) {
                }
            }
            b(this);
            if (!(obj instanceof SetFuture)) {
                return true;
            }
            throw null;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String f() {
        if (this.f479c instanceof SetFuture) {
            return a.l("setFuture=[", "null", "]");
        }
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    public final void g(Waiter waiter) {
        waiter.f488a = null;
        while (true) {
            Waiter waiter2 = this.g;
            if (waiter2 != Waiter.f487c) {
                Waiter waiter3 = null;
                while (waiter2 != null) {
                    Waiter waiter4 = waiter2.b;
                    if (waiter2.f488a != null) {
                        waiter3 = waiter2;
                    } else if (waiter3 != null) {
                        waiter3.b = waiter4;
                        if (waiter3.f488a == null) {
                            break;
                        }
                    } else if (!j.c(this, waiter2, waiter4)) {
                        break;
                    }
                    waiter2 = waiter4;
                }
                return;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00b0 -> B:33:0x0078). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r19, java.util.concurrent.TimeUnit r21) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.AbstractResolvableFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public boolean h(Throwable th) {
        th.getClass();
        if (j.b(this, null, new Failure(th))) {
            b(this);
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f479c instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        if (this.f479c != null) {
            z = true;
        } else {
            z = false;
        }
        return (!(r0 instanceof SetFuture)) & z;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void k(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        Listener listener = this.f;
        Listener listener2 = Listener.d;
        if (listener != listener2) {
            Listener listener3 = new Listener(runnable, executor);
            do {
                listener3.f484c = listener;
                if (j.a(this, listener, listener3)) {
                    return;
                } else {
                    listener = this.f;
                }
            } while (listener != listener2);
        }
        c(runnable, executor);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f479c instanceof Cancellation) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = f();
            } catch (RuntimeException e) {
                str = "Exception thrown from implementation: " + e.getClass();
            }
            if (str != null && !str.isEmpty()) {
                a.y(sb, "PENDING, info=[", str, "]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        Waiter waiter = Waiter.f487c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f479c;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return d(obj2);
            }
            Waiter waiter2 = this.g;
            if (waiter2 != waiter) {
                Waiter waiter3 = new Waiter();
                do {
                    AtomicHelper atomicHelper = j;
                    atomicHelper.d(waiter3, waiter2);
                    if (atomicHelper.c(this, waiter2, waiter3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f479c;
                            } else {
                                g(waiter3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return d(obj);
                    }
                    waiter2 = this.g;
                } while (waiter2 != waiter);
            }
            return d(this.f479c);
        }
        throw new InterruptedException();
    }
}
