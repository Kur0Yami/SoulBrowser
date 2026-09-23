package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class Tasks {
    public static Object a(Task task) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(task, "Task must not be null");
        if (task.o()) {
            return f(task);
        }
        zzaa zzaaVar = new zzaa();
        Executor executor = TaskExecutors.b;
        task.h(executor, zzaaVar);
        task.f(executor, zzaaVar);
        task.b(executor, zzaaVar);
        zzaaVar.f11608c.await();
        return f(task);
    }

    public static Task b(Callable callable, Executor executor) {
        Preconditions.checkNotNull(executor, "Executor must not be null");
        Preconditions.checkNotNull(callable, "Callback must not be null");
        zzw zzwVar = new zzw();
        executor.execute(new zzx(zzwVar, callable));
        return zzwVar;
    }

    public static Task c() {
        zzw zzwVar = new zzw();
        zzwVar.u();
        return zzwVar;
    }

    public static Task d(Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.t(exc);
        return zzwVar;
    }

    public static Task e(Object obj) {
        zzw zzwVar = new zzw();
        zzwVar.r(obj);
        return zzwVar;
    }

    public static Object f(Task task) {
        if (task.p()) {
            return task.m();
        }
        if (task.n()) {
            throw new CancellationException("Task is already canceled");
        }
        throw new ExecutionException(task.l());
    }
}
