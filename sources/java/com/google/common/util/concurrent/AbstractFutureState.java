package com.google.common.util.concurrent;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.j2objc.annotations.ReflectionSupport;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
@ReflectionSupport
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractFutureState<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {
    public static final Object h = new Object();
    public static final LazyLogger i = new LazyLogger(AbstractFuture.class);
    public static final boolean j;
    public static final AtomicHelper k;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f12561c;
    public volatile AbstractFuture.Listener f;
    public volatile Waiter g;

    /* loaded from: classes3.dex */
    public static abstract class AtomicHelper {
        public abstract boolean a(AbstractFuture abstractFuture, AbstractFuture.Listener listener, AbstractFuture.Listener listener2);

        public abstract boolean b(AbstractFutureState abstractFutureState, Object obj, Object obj2);

        public abstract boolean c(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2);

        public abstract AbstractFuture.Listener d(AbstractFuture abstractFuture);

        public abstract Waiter e(AbstractFuture abstractFuture);

        public abstract void f(Waiter waiter, Waiter waiter2);

        public abstract void g(Waiter waiter, Thread thread);
    }

    /* loaded from: classes3.dex */
    public static final class AtomicReferenceFieldUpdaterAtomicHelper extends AtomicHelper {

        /* renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f12562a = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a");
        public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, "b");

        /* renamed from: c, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f12563c = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Waiter.class, "g");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, AbstractFuture.Listener.class, "f");
        public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Object.class, "c");

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean a(AbstractFuture abstractFuture, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, listener, listener2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == listener);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureState, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFutureState) == obj);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f12563c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureState, waiter, waiter2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFutureState) == waiter);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener d(AbstractFuture abstractFuture) {
            return (AbstractFuture.Listener) d.getAndSet(abstractFuture, AbstractFuture.Listener.d);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter e(AbstractFuture abstractFuture) {
            return (Waiter) f12563c.getAndSet(abstractFuture, Waiter.f12566c);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void f(Waiter waiter, Waiter waiter2) {
            b.lazySet(waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Thread thread) {
            f12562a.lazySet(waiter, thread);
        }
    }

    /* loaded from: classes3.dex */
    public static final class SynchronizedHelper extends AtomicHelper {
        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean a(AbstractFuture abstractFuture, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
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

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            synchronized (abstractFutureState) {
                try {
                    if (abstractFutureState.f12561c == obj) {
                        abstractFutureState.f12561c = obj2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            synchronized (abstractFutureState) {
                try {
                    if (abstractFutureState.g == waiter) {
                        abstractFutureState.g = waiter2;
                        return true;
                    }
                    return false;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener d(AbstractFuture abstractFuture) {
            AbstractFuture.Listener listener;
            AbstractFuture.Listener listener2 = AbstractFuture.Listener.d;
            synchronized (abstractFuture) {
                try {
                    listener = abstractFuture.f;
                    if (listener != listener2) {
                        abstractFuture.f = listener2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return listener;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter e(AbstractFuture abstractFuture) {
            Waiter waiter;
            Waiter waiter2 = Waiter.f12566c;
            synchronized (abstractFuture) {
                try {
                    waiter = abstractFuture.g;
                    if (waiter != waiter2) {
                        abstractFuture.g = waiter2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return waiter;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void f(Waiter waiter, Waiter waiter2) {
            waiter.b = waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Thread thread) {
            waiter.f12567a = thread;
        }
    }

    /* loaded from: classes3.dex */
    public static final class UnsafeAtomicHelper extends AtomicHelper {

        /* renamed from: a, reason: collision with root package name */
        public static final Unsafe f12564a;
        public static final long b;

        /* renamed from: c, reason: collision with root package name */
        public static final long f12565c;
        public static final long d;
        public static final long e;
        public static final long f;

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
            }
            try {
                f12565c = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("g"));
                b = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("f"));
                d = unsafe.objectFieldOffset(AbstractFutureState.class.getDeclaredField("c"));
                e = unsafe.objectFieldOffset(Waiter.class.getDeclaredField("a"));
                f = unsafe.objectFieldOffset(Waiter.class.getDeclaredField("b"));
                f12564a = unsafe;
            } catch (NoSuchFieldException e3) {
                throw new RuntimeException(e3);
            }
        }

        public static /* synthetic */ Unsafe h() {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean a(AbstractFuture abstractFuture, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            return a.a(f12564a, abstractFuture, b, listener, listener2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            return com.google.android.gms.internal.ads.c.a(f12564a, abstractFutureState, d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            return com.google.android.gms.internal.ads.c.a(f12564a, abstractFutureState, f12565c, waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener d(AbstractFuture abstractFuture) {
            AbstractFuture.Listener listener;
            AbstractFuture.Listener listener2 = AbstractFuture.Listener.d;
            do {
                listener = abstractFuture.f;
                if (listener2 == listener) {
                    break;
                }
            } while (!a(abstractFuture, listener, listener2));
            return listener;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter e(AbstractFuture abstractFuture) {
            Waiter waiter;
            Waiter waiter2 = Waiter.f12566c;
            do {
                waiter = abstractFuture.g;
                if (waiter2 == waiter) {
                    break;
                }
            } while (!c(abstractFuture, waiter, waiter2));
            return waiter;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void f(Waiter waiter, Waiter waiter2) {
            f12564a.putObject(waiter, f, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Thread thread) {
            f12564a.putObject(waiter, e, thread);
        }
    }

    /* loaded from: classes3.dex */
    public static final class Waiter {

        /* renamed from: c, reason: collision with root package name */
        public static final Waiter f12566c = new Object();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f12567a;
        public volatile Waiter b;

        public Waiter() {
            AbstractFutureState.k.g(this, Thread.currentThread());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.common.util.concurrent.AbstractFutureState$AtomicHelper] */
    static {
        boolean z;
        Object obj;
        Throwable th;
        ?? r0;
        Object obj2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        j = z;
        String property = System.getProperty("java.runtime.name", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Throwable e = null;
        if (property != null && !property.contains("Android")) {
            try {
                obj2 = new Object();
            } catch (NoClassDefFoundError unused2) {
                obj2 = new Object();
            }
        } else {
            try {
                obj2 = new Object();
            } catch (Error | Exception e2) {
                try {
                    obj = new Object();
                } catch (Error | Exception e3) {
                    e = e3;
                    obj = new Object();
                }
                Object obj3 = obj;
                th = e2;
                r0 = obj3;
            }
        }
        th = null;
        r0 = obj2;
        k = r0;
        if (e != null) {
            LazyLogger lazyLogger = i;
            Logger a2 = lazyLogger.a();
            Level level = Level.SEVERE;
            a2.log(level, "UnsafeAtomicHelper is broken!", th);
            lazyLogger.a().log(level, "AtomicReferenceFieldUpdaterAtomicHelper is broken!", e);
        }
    }

    public final void b(Waiter waiter) {
        waiter.f12567a = null;
        while (true) {
            Waiter waiter2 = this.g;
            if (waiter2 != Waiter.f12566c) {
                Waiter waiter3 = null;
                while (waiter2 != null) {
                    Waiter waiter4 = waiter2.b;
                    if (waiter2.f12567a != null) {
                        waiter3 = waiter2;
                    } else if (waiter3 != null) {
                        waiter3.b = waiter4;
                        if (waiter3.f12567a == null) {
                            break;
                        }
                    } else if (!k.c(this, waiter2, waiter4)) {
                        break;
                    }
                    waiter2 = waiter4;
                }
                return;
            }
            return;
        }
    }
}
