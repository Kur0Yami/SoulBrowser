package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
final class zze implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Task f11612c;
    public final /* synthetic */ zzf f;

    public zze(zzf zzfVar, Task task) {
        this.f11612c = task;
        this.f = zzfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzf zzfVar = this.f;
        try {
            Task task = (Task) zzfVar.f.then(this.f11612c);
            if (task == null) {
                zzfVar.c(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = TaskExecutors.b;
            task.h(executor, zzfVar);
            task.f(executor, zzfVar);
            task.b(executor, zzfVar);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzfVar.g.t((Exception) e.getCause());
            } else {
                zzfVar.g.t(e);
            }
        } catch (Exception e2) {
            zzfVar.g.t(e2);
        }
    }
}
