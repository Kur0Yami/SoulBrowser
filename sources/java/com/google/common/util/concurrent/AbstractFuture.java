package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFutureState;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.j2objc.annotations.ReflectionSupport;
import j$.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;

@ReflectionSupport
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractFuture<V> extends AbstractFutureState<V> {

    /* loaded from: classes3.dex */
    public static final class Cancellation {

        /* renamed from: c, reason: collision with root package name */
        public static final Cancellation f12555c;
        public static final Cancellation d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f12556a;
        public final Throwable b;

        static {
            if (AbstractFutureState.j) {
                d = null;
                f12555c = null;
            } else {
                d = new Cancellation(null, false);
                f12555c = new Cancellation(null, true);
            }
        }

        public Cancellation(Throwable th, boolean z) {
            this.f12556a = z;
            this.b = th;
        }
    }

    /* loaded from: classes3.dex */
    public static final class DelegatingToFuture<V> implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final AbstractFuture f12557c;
        public final ListenableFuture f;

        public DelegatingToFuture(AbstractFuture abstractFuture, ListenableFuture listenableFuture) {
            this.f12557c = abstractFuture;
            this.f = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f12557c.f12561c == this) {
                Object i = AbstractFuture.i(this.f);
                if (AbstractFutureState.k.b(this.f12557c, this, i)) {
                    AbstractFuture.f(this.f12557c, false);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class Failure {
        public static final Failure b = new Failure(new Throwable("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f12558a;

        /* renamed from: com.google.common.util.concurrent.AbstractFuture$Failure$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        public Failure(Throwable th) {
            th.getClass();
            this.f12558a = th;
        }
    }

    /* loaded from: classes3.dex */
    public interface Trusted<V> extends ListenableFuture<V> {
    }

    /* loaded from: classes3.dex */
    public static abstract class TrustedFuture<V> extends AbstractFuture<V> implements Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.f12561c instanceof Cancellation;
        }
    }

    public static void f(AbstractFuture abstractFuture, boolean z) {
        Listener listener = null;
        while (true) {
            for (AbstractFutureState.Waiter e = AbstractFutureState.k.e(abstractFuture); e != null; e = e.b) {
                Thread thread = e.f12567a;
                if (thread != null) {
                    e.f12567a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z) {
                abstractFuture.j();
                z = false;
            }
            abstractFuture.d();
            Listener listener2 = listener;
            Listener d = AbstractFutureState.k.d(abstractFuture);
            Listener listener3 = listener2;
            while (d != null) {
                Listener listener4 = d.f12560c;
                d.f12560c = listener3;
                listener3 = d;
                d = listener4;
            }
            while (listener3 != null) {
                listener = listener3.f12560c;
                Runnable runnable = listener3.f12559a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof DelegatingToFuture) {
                    DelegatingToFuture delegatingToFuture = (DelegatingToFuture) runnable;
                    abstractFuture = delegatingToFuture.f12557c;
                    if (abstractFuture.f12561c == delegatingToFuture) {
                        if (AbstractFutureState.k.b(abstractFuture, delegatingToFuture, i(delegatingToFuture.f))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = listener3.b;
                    Objects.requireNonNull(executor);
                    g(runnable, executor);
                }
                listener3 = listener;
            }
            return;
        }
    }

    public static void g(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            AbstractFutureState.i.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    public static Object h(Object obj) {
        if (!(obj instanceof Cancellation)) {
            if (!(obj instanceof Failure)) {
                if (obj == AbstractFutureState.h) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((Failure) obj).f12558a);
        }
        Throwable th = ((Cancellation) obj).b;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object i(ListenableFuture listenableFuture) {
        Object obj;
        Throwable a2;
        if (listenableFuture instanceof Trusted) {
            Object obj2 = ((AbstractFuture) listenableFuture).f12561c;
            if (obj2 instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) obj2;
                if (cancellation.f12556a) {
                    obj2 = cancellation.b != null ? new Cancellation(cancellation.b, false) : Cancellation.d;
                }
            }
            Objects.requireNonNull(obj2);
            return obj2;
        }
        if ((listenableFuture instanceof InternalFutureFailureAccess) && (a2 = ((InternalFutureFailureAccess) listenableFuture).a()) != null) {
            return new Failure(a2);
        }
        boolean isCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!AbstractFutureState.j) & isCancelled) {
            Cancellation cancellation2 = Cancellation.d;
            Objects.requireNonNull(cancellation2);
            return cancellation2;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    try {
                        obj = listenableFuture.get();
                        break;
                    } catch (Error e) {
                        e = e;
                        return new Failure(e);
                    }
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (Error | Exception e2) {
                e = e2;
                return new Failure(e);
            } catch (CancellationException e3) {
                if (!isCancelled) {
                    return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e3));
                }
                return new Cancellation(e3, false);
            } catch (ExecutionException e4) {
                if (isCancelled) {
                    return new Cancellation(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e4), false);
                }
                return new Failure(e4.getCause());
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (isCancelled) {
            return new Cancellation(new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture), false);
        }
        if (obj == null) {
            return AbstractFutureState.h;
        }
        return obj;
    }

    @Override // com.google.common.util.concurrent.internal.InternalFutureFailureAccess
    public final Throwable a() {
        if (this instanceof Trusted) {
            Object obj = this.f12561c;
            if (obj instanceof Failure) {
                return ((Failure) obj).f12558a;
            }
            return null;
        }
        return null;
    }

    public final void c(StringBuilder sb) {
        V v;
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
            } catch (ExecutionException e) {
                sb.append("FAILURE, cause=[");
                sb.append(e.getCause());
                sb.append("]");
                return;
            } catch (Exception e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        e(sb, v);
        sb.append("]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f12561c
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8
            r3 = r1
            goto L9
        L8:
            r3 = r2
        L9:
            boolean r4 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture
            r3 = r3 | r4
            if (r3 == 0) goto L5e
            boolean r3 = com.google.common.util.concurrent.AbstractFutureState.j
            if (r3 == 0) goto L1f
            com.google.common.util.concurrent.AbstractFuture$Cancellation r3 = new com.google.common.util.concurrent.AbstractFuture$Cancellation
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r4, r8)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            com.google.common.util.concurrent.AbstractFuture$Cancellation r3 = com.google.common.util.concurrent.AbstractFuture.Cancellation.f12555c
            goto L26
        L24:
            com.google.common.util.concurrent.AbstractFuture$Cancellation r3 = com.google.common.util.concurrent.AbstractFuture.Cancellation.d
        L26:
            j$.util.Objects.requireNonNull(r3)
        L29:
            r4 = r7
            r5 = r2
        L2b:
            com.google.common.util.concurrent.AbstractFutureState$AtomicHelper r6 = com.google.common.util.concurrent.AbstractFutureState.k
            boolean r6 = r6.b(r4, r0, r3)
            if (r6 == 0) goto L57
            f(r4, r8)
            boolean r4 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture
            if (r4 == 0) goto L56
            com.google.common.util.concurrent.AbstractFuture$DelegatingToFuture r0 = (com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture) r0
            com.google.common.util.concurrent.ListenableFuture r0 = r0.f
            boolean r4 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.Trusted
            if (r4 == 0) goto L53
            r4 = r0
            com.google.common.util.concurrent.AbstractFuture r4 = (com.google.common.util.concurrent.AbstractFuture) r4
            java.lang.Object r0 = r4.f12561c
            if (r0 != 0) goto L4b
            r5 = r1
            goto L4c
        L4b:
            r5 = r2
        L4c:
            boolean r6 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture
            r5 = r5 | r6
            if (r5 == 0) goto L56
            r5 = r1
            goto L2b
        L53:
            r0.cancel(r8)
        L56:
            return r1
        L57:
            java.lang.Object r0 = r4.f12561c
            boolean r6 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture
            if (r6 != 0) goto L2b
            return r5
        L5e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.cancel(boolean):boolean");
    }

    public void d() {
    }

    public final void e(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c6 -> B:34:0x0083). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object get(long r21, java.util.concurrent.TimeUnit r23) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f12561c instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        if (this.f12561c != null) {
            z = true;
        } else {
            z = false;
        }
        return (!(r0 instanceof DelegatingToFuture)) & z;
    }

    public void j() {
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void k(Runnable runnable, Executor executor) {
        Listener listener;
        Listener listener2 = Listener.d;
        Preconditions.h(runnable, "Runnable was null.");
        Preconditions.h(executor, "Executor was null.");
        if (!isDone() && (listener = this.f) != listener2) {
            Listener listener3 = new Listener(runnable, executor);
            do {
                listener3.f12560c = listener;
                if (AbstractFutureState.k.a(this, listener, listener3)) {
                    return;
                } else {
                    listener = this.f;
                }
            } while (listener != listener2);
        }
        g(runnable, executor);
    }

    public final void l(Future future) {
        boolean z;
        boolean z2 = false;
        if (future != null) {
            z = true;
        } else {
            z = false;
        }
        if (z & isCancelled()) {
            Object obj = this.f12561c;
            if ((obj instanceof Cancellation) && ((Cancellation) obj).f12556a) {
                z2 = true;
            }
            future.cancel(z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String m() {
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    public boolean n(Object obj) {
        if (obj == null) {
            obj = AbstractFutureState.h;
        }
        if (!AbstractFutureState.k.b(this, null, obj)) {
            return false;
        }
        f(this, false);
        return true;
    }

    public boolean o(Throwable th) {
        th.getClass();
        if (!AbstractFutureState.k.b(this, null, new Failure(th))) {
            return false;
        }
        f(this, false);
        return true;
    }

    public final boolean p(ListenableFuture listenableFuture) {
        Failure failure;
        listenableFuture.getClass();
        Object obj = this.f12561c;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (AbstractFutureState.k.b(this, null, i(listenableFuture))) {
                    f(this, false);
                    return true;
                }
                return false;
            }
            DelegatingToFuture delegatingToFuture = new DelegatingToFuture(this, listenableFuture);
            if (AbstractFutureState.k.b(this, null, delegatingToFuture)) {
                try {
                    listenableFuture.k(delegatingToFuture, DirectExecutor.f12575c);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Error | Exception unused) {
                        failure = Failure.b;
                    }
                    AbstractFutureState.k.b(this, delegatingToFuture, failure);
                    return true;
                }
            }
            obj = this.f12561c;
        }
        if (obj instanceof Cancellation) {
            listenableFuture.cancel(((Cancellation) obj).f12556a);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a7, code lost:
    
        if (r3.isEmpty() != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            boolean r1 = r6.isCancelled()
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Le1
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.c(r0)
            goto Le1
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.f12561c
            boolean r4 = r3 instanceof com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L9d
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            com.google.common.util.concurrent.AbstractFuture$DelegatingToFuture r3 = (com.google.common.util.concurrent.AbstractFuture.DelegatingToFuture) r3
            com.google.common.util.concurrent.ListenableFuture r3 = r3.f
            if (r3 != r6) goto L7f
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L7d:
            r3 = move-exception
            goto L83
        L7f:
            r0.append(r3)     // Catch: java.lang.Throwable -> L7d
            goto L99
        L83:
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto L8f
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto L8c
            goto L8f
        L8c:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        L8f:
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L99:
            r0.append(r2)
            goto Ld1
        L9d:
            java.lang.String r3 = r6.m()     // Catch: java.lang.Throwable -> Laa
            if (r3 == 0) goto Lac
            boolean r4 = r3.isEmpty()     // Catch: java.lang.Throwable -> Laa
            if (r4 == 0) goto Lca
            goto Lac
        Laa:
            r3 = move-exception
            goto Lae
        Lac:
            r3 = 0
            goto Lca
        Lae:
            boolean r4 = r3 instanceof java.lang.Error
            if (r4 == 0) goto Lba
            boolean r4 = r3 instanceof java.lang.StackOverflowError
            if (r4 == 0) goto Lb7
            goto Lba
        Lb7:
            java.lang.Error r3 = (java.lang.Error) r3
            throw r3
        Lba:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r5)
            java.lang.Class r3 = r3.getClass()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
        Lca:
            if (r3 == 0) goto Ld1
            java.lang.String r4 = ", info=["
            android.support.v4.media.a.y(r0, r4, r3, r2)
        Ld1:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Le1
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.c(r0)
        Le1:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.toString():java.lang.String");
    }

    /* loaded from: classes3.dex */
    public static final class Listener {
        public static final Listener d = new Listener();

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f12559a;
        public final Executor b;

        /* renamed from: c, reason: collision with root package name */
        public Listener f12560c;

        public Listener(Runnable runnable, Executor executor) {
            this.f12559a = runnable;
            this.b = executor;
        }

        public Listener() {
            this.f12559a = null;
            this.b = null;
        }
    }

    @Override // java.util.concurrent.Future
    public Object get() {
        Object obj;
        AbstractFutureState.Waiter waiter = AbstractFutureState.Waiter.f12566c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f12561c;
            if ((obj2 != null) & (!(obj2 instanceof DelegatingToFuture))) {
                return h(obj2);
            }
            AbstractFutureState.Waiter waiter2 = this.g;
            if (waiter2 != waiter) {
                AbstractFutureState.Waiter waiter3 = new AbstractFutureState.Waiter();
                do {
                    AbstractFutureState.AtomicHelper atomicHelper = AbstractFutureState.k;
                    atomicHelper.f(waiter3, waiter2);
                    if (atomicHelper.c(this, waiter2, waiter3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f12561c;
                            } else {
                                b(waiter3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof DelegatingToFuture))));
                        return h(obj);
                    }
                    waiter2 = this.g;
                } while (waiter2 != waiter);
            }
            Object obj3 = this.f12561c;
            Objects.requireNonNull(obj3);
            return h(obj3);
        }
        throw new InterruptedException();
    }
}
