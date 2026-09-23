package androidx.work.impl.utils.futures;

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
public abstract class AbstractFuture<V> implements ListenableFuture<V> {
    public static final boolean h = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger i = Logger.getLogger(AbstractFuture.class.getName());
    public static final AtomicHelper j;
    public static final Object k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f1971c;
    public volatile Listener f;
    public volatile Waiter g;

    /* loaded from: classes.dex */
    public static abstract class AtomicHelper {
        public abstract boolean a(AbstractFuture abstractFuture, Listener listener, Listener listener2);

        public abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractFuture abstractFuture, Waiter waiter, Waiter waiter2);

        public abstract void d(Waiter waiter, Waiter waiter2);

        public abstract void e(Waiter waiter, Thread thread);
    }

    /* loaded from: classes.dex */
    public static final class Cancellation {

        /* renamed from: c, reason: collision with root package name */
        public static final Cancellation f1972c;
        public static final Cancellation d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f1973a;
        public final Throwable b;

        static {
            if (AbstractFuture.h) {
                d = null;
                f1972c = null;
            } else {
                d = new Cancellation(null, false);
                f1972c = new Cancellation(null, true);
            }
        }

        public Cancellation(Throwable th, boolean z) {
            this.f1973a = z;
            this.b = th;
        }
    }

    /* loaded from: classes.dex */
    public static final class Failure {
        public static final Failure b = new Failure(new Throwable("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f1974a;

        /* renamed from: androidx.work.impl.utils.futures.AbstractFuture$Failure$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public Failure(Throwable th) {
            boolean z = AbstractFuture.h;
            th.getClass();
            this.f1974a = th;
        }
    }

    /* loaded from: classes.dex */
    public static final class Listener {
        public static final Listener d = new Listener(null, null);

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f1975a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public Listener f1976c;

        public Listener(Runnable runnable, Executor executor) {
            this.f1975a = runnable;
            this.b = executor;
        }
    }

    /* loaded from: classes.dex */
    public static final class SafeAtomicHelper extends AtomicHelper {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f1977a;
        public final AtomicReferenceFieldUpdater b;

        /* renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f1978c;
        public final AtomicReferenceFieldUpdater d;
        public final AtomicReferenceFieldUpdater e;

        public SafeAtomicHelper(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            this.f1977a = atomicReferenceFieldUpdater;
            this.b = atomicReferenceFieldUpdater2;
            this.f1978c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean a(AbstractFuture abstractFuture, Listener listener, Listener listener2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, listener, listener2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == listener);
            return false;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == obj);
            return false;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean c(AbstractFuture abstractFuture, Waiter waiter, Waiter waiter2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f1978c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, waiter, waiter2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == waiter);
            return false;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            this.b.lazySet(waiter, waiter2);
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            this.f1977a.lazySet(waiter, thread);
        }
    }

    /* loaded from: classes.dex */
    public static final class SetFuture<V> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SettableFuture f1979c;
        public final ListenableFuture f;

        public SetFuture(SettableFuture settableFuture, ListenableFuture listenableFuture) {
            this.f1979c = settableFuture;
            this.f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f1979c.f1971c == this) {
                if (AbstractFuture.j.b(this.f1979c, this, AbstractFuture.e(this.f))) {
                    AbstractFuture.b(this.f1979c);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class SynchronizedHelper extends AtomicHelper {
        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean a(AbstractFuture abstractFuture, Listener listener, Listener listener2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f == listener) {
                        abstractFuture.f = listener2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f1971c == obj) {
                        abstractFuture.f1971c = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final boolean c(AbstractFuture abstractFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.g == waiter) {
                        abstractFuture.g = waiter2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            waiter.b = waiter2;
        }

        @Override // androidx.work.impl.utils.futures.AbstractFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            waiter.f1981a = thread;
        }
    }

    /* loaded from: classes.dex */
    public static final class Waiter {

        /* renamed from: c, reason: collision with root package name */
        public static final Waiter f1980c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f1981a;
        public volatile Waiter b;

        public Waiter() {
            AbstractFuture.j.e(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [androidx.work.impl.utils.futures.AbstractFuture$AtomicHelper] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    static {
        ?? r3;
        try {
            th = null;
            r3 = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Waiter.class, "g"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Listener.class, "f"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "c"));
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

    public static void b(AbstractFuture abstractFuture) {
        Listener listener;
        Listener listener2;
        Listener listener3 = null;
        while (true) {
            Waiter waiter = abstractFuture.g;
            if (j.c(abstractFuture, waiter, Waiter.f1980c)) {
                while (waiter != null) {
                    Thread thread = waiter.f1981a;
                    if (thread != null) {
                        waiter.f1981a = null;
                        LockSupport.unpark(thread);
                    }
                    waiter = waiter.b;
                }
                do {
                    listener = abstractFuture.f;
                } while (!j.a(abstractFuture, listener, Listener.d));
                while (true) {
                    listener2 = listener3;
                    listener3 = listener;
                    if (listener3 == null) {
                        break;
                    }
                    listener = listener3.f1976c;
                    listener3.f1976c = listener2;
                }
                while (listener2 != null) {
                    listener3 = listener2.f1976c;
                    Runnable runnable = listener2.f1975a;
                    if (runnable instanceof SetFuture) {
                        SetFuture setFuture = (SetFuture) runnable;
                        abstractFuture = setFuture.f1979c;
                        if (abstractFuture.f1971c == setFuture) {
                            if (j.b(abstractFuture, setFuture, e(setFuture.f))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        c(runnable, listener2.b);
                    }
                    listener2 = listener3;
                }
                return;
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
            throw new ExecutionException(((Failure) obj).f1974a);
        }
        Throwable th = ((Cancellation) obj).b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static Object e(ListenableFuture listenableFuture) {
        V v;
        if (listenableFuture instanceof AbstractFuture) {
            Object obj = ((AbstractFuture) listenableFuture).f1971c;
            if (obj instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) obj;
                if (cancellation.f1973a) {
                    if (cancellation.b != null) {
                        return new Cancellation(cancellation.b, false);
                    }
                    return Cancellation.d;
                }
                return obj;
            }
            return obj;
        }
        boolean isCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!h) & isCancelled) {
            return Cancellation.d;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    v = listenableFuture.get();
                    break;
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException e) {
                if (!isCancelled) {
                    return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e));
                }
                return new Cancellation(e, false);
            } catch (ExecutionException e2) {
                return new Failure(e2.getCause());
            } catch (Throwable th2) {
                return new Failure(th2);
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (v == null) {
            return k;
        }
        return v;
    }

    public final void a(StringBuilder sb) {
        V v;
        String valueOf;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        if (v == this) {
            valueOf = "this future";
        } else {
            valueOf = String.valueOf(v);
        }
        sb.append(valueOf);
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean z2;
        Cancellation cancellation;
        boolean z3;
        Object obj = this.f1971c;
        if (obj == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!(z2 | (obj instanceof SetFuture))) {
            return false;
        }
        if (h) {
            cancellation = new Cancellation(new CancellationException("Future.cancel() was called."), z);
        } else if (z) {
            cancellation = Cancellation.f1972c;
        } else {
            cancellation = Cancellation.d;
        }
        AbstractFuture<V> abstractFuture = this;
        boolean z4 = false;
        while (true) {
            if (j.b(abstractFuture, obj, cancellation)) {
                b(abstractFuture);
                if (!(obj instanceof SetFuture)) {
                    break;
                }
                ListenableFuture listenableFuture = ((SetFuture) obj).f;
                if (listenableFuture instanceof AbstractFuture) {
                    abstractFuture = (AbstractFuture) listenableFuture;
                    obj = abstractFuture.f1971c;
                    if (obj == null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3 && !(obj instanceof SetFuture)) {
                        break;
                    }
                    z4 = true;
                } else {
                    listenableFuture.cancel(z);
                    break;
                }
            } else {
                obj = abstractFuture.f1971c;
                if (!(obj instanceof SetFuture)) {
                    return z4;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String f() {
        String valueOf;
        Object obj = this.f1971c;
        if (obj instanceof SetFuture) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ListenableFuture listenableFuture = ((SetFuture) obj).f;
            if (listenableFuture == this) {
                valueOf = "this future";
            } else {
                valueOf = String.valueOf(listenableFuture);
            }
            return a.p(sb, valueOf, "]");
        }
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    public final void g(Waiter waiter) {
        waiter.f1981a = null;
        while (true) {
            Waiter waiter2 = this.g;
            if (waiter2 != Waiter.f1980c) {
                Waiter waiter3 = null;
                while (waiter2 != null) {
                    Waiter waiter4 = waiter2.b;
                    if (waiter2.f1981a != null) {
                        waiter3 = waiter2;
                    } else if (waiter3 != null) {
                        waiter3.b = waiter4;
                        if (waiter3.f1981a == null) {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.AbstractFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1971c instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        if (this.f1971c != null) {
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
                listener3.f1976c = listener;
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
        if (this.f1971c instanceof Cancellation) {
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
        Waiter waiter = Waiter.f1980c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1971c;
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
                                obj = this.f1971c;
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
            return d(this.f1971c);
        }
        throw new InterruptedException();
    }
}
