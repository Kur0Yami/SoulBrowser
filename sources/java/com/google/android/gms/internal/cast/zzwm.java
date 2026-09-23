package com.google.android.gms.internal.cast;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzwm extends AtomicReference implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public static final Runnable f9861c = new Object();
    public static final Runnable f = new Object();

    public abstract boolean a();

    public abstract Object b();

    public abstract void c(Object obj);

    public abstract void d(Throwable th);

    public abstract String e();

    public final void f(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzwk zzwkVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof zzwk;
            Runnable runnable2 = f;
            if (!z2) {
                if (runnable != runnable2) {
                    break;
                }
            } else {
                zzwkVar = (zzwk) runnable;
            }
            i++;
            if (i > 1000) {
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (Thread.interrupted() || z) {
                        z = true;
                    } else {
                        z = false;
                    }
                    LockSupport.park(zzwkVar);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean a2 = a();
            Runnable runnable = f9861c;
            if (!a2) {
                try {
                    obj = b();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, runnable)) {
                            f(currentThread);
                        }
                        d(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(currentThread, runnable)) {
                            f(currentThread);
                        }
                        c(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(currentThread, runnable)) {
                f(currentThread);
            }
            if (!a2) {
                c(obj);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == f9861c) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzwk) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = android.support.v4.media.a.q(new StringBuilder(String.valueOf(name).length() + 21), "running=[RUNNING ON ", name, "]");
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String e = e();
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 2 + String.valueOf(e).length()), str, ", ", e);
    }
}
