package com.google.android.gms.tasks;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
final class zzo implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11622c;
    public final /* synthetic */ zzp f;

    public zzo(zzp zzpVar, Task task) {
        this.f11622c = task;
        this.f = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzp zzpVar = this.f;
        try {
            Task then = zzpVar.f.then(this.f11622c.m());
            if (then == null) {
                zzpVar.c(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.b;
            then.h(executor, zzpVar);
            then.f(executor, zzpVar);
            then.b(executor, zzpVar);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzpVar.c((Exception) e.getCause());
            } else {
                zzpVar.c(e);
            }
        } catch (CancellationException unused) {
            zzpVar.a();
        } catch (Exception e2) {
            zzpVar.c(e2);
        }
    }
}
