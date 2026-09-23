package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgyt extends AtomicReference implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public static final Runnable f8307c = new Object();
    public static final Runnable f = new Object();

    public abstract Object a();

    public final void b(Thread thread) {
        Runnable runnable = (Runnable) get();
        zzgyr zzgyrVar = null;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = runnable instanceof zzgyr;
            Runnable runnable2 = f;
            if (!z2) {
                if (runnable != runnable2) {
                    break;
                }
            } else {
                zzgyrVar = (zzgyr) runnable;
            }
            i++;
            if (i > 1000) {
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    if (Thread.interrupted() || z) {
                        z = true;
                    } else {
                        z = false;
                    }
                    LockSupport.park(zzgyrVar);
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

    public abstract String c();

    public abstract boolean d();

    public abstract void e(Object obj);

    public abstract void f(Throwable th);

    public final void g() {
        Runnable runnable = f;
        Runnable runnable2 = f8307c;
        Runnable runnable3 = (Runnable) get();
        if (runnable3 instanceof Thread) {
            zzgyr zzgyrVar = new zzgyr(this);
            zzgyrVar.a(Thread.currentThread());
            if (compareAndSet(runnable3, zzgyrVar)) {
                try {
                    Thread thread = (Thread) runnable3;
                    thread.interrupt();
                    if (((Runnable) getAndSet(runnable2)) == runnable) {
                        LockSupport.unpark(thread);
                    }
                } catch (Throwable th) {
                    if (((Runnable) getAndSet(runnable2)) == runnable) {
                        LockSupport.unpark((Thread) runnable3);
                    }
                    throw th;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean d = d();
            Runnable runnable = f8307c;
            if (!d) {
                try {
                    obj = a();
                } catch (Throwable th) {
                    try {
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!compareAndSet(currentThread, runnable)) {
                            b(currentThread);
                        }
                        f(th);
                        return;
                    } catch (Throwable th2) {
                        if (!compareAndSet(currentThread, runnable)) {
                            b(currentThread);
                        }
                        e(null);
                        throw th2;
                    }
                }
            }
            if (!compareAndSet(currentThread, runnable)) {
                b(currentThread);
            }
            if (!d) {
                e(obj);
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == f8307c) {
            str = "running=[DONE]";
        } else if (runnable instanceof zzgyr) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = android.support.v4.media.a.q(new StringBuilder(String.valueOf(name).length() + 21), "running=[RUNNING ON ", name, "]");
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String c2 = c();
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 2 + String.valueOf(c2).length()), str, ", ", c2);
    }
}
