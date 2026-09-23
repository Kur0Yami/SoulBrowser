package com.google.mlkit.common.sdkinternal;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

@KeepForSdk
/* loaded from: classes3.dex */
public class TaskQueue {
    public boolean b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f12780a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f12781c = new ArrayDeque();
    public final AtomicReference d = new AtomicReference();

    public final void a(Runnable runnable, Executor executor) {
        synchronized (this.f12780a) {
            try {
                if (this.b) {
                    this.f12781c.add(new zzv(runnable, executor));
                } else {
                    this.b = true;
                    c(runnable, executor);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.f12780a) {
            try {
                if (this.f12781c.isEmpty()) {
                    this.b = false;
                    return;
                }
                zzv zzvVar = (zzv) this.f12781c.remove();
                c(zzvVar.b, zzvVar.f12797a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(final Runnable runnable, Executor executor) {
        try {
            executor.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzt
                @Override // java.lang.Runnable
                public final void run() {
                    zzx zzxVar = new zzx(TaskQueue.this);
                    try {
                        runnable.run();
                        zzxVar.close();
                    } catch (Throwable th) {
                        try {
                            zzxVar.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            b();
        }
    }
}
