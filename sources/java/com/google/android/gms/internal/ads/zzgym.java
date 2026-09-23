package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzgym extends zzgyo {
    public static ListenableFuture a(Object obj) {
        if (obj == null) {
            return zzgyq.f;
        }
        return new zzgyq(obj);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzgxf, java.lang.Object] */
    public static ListenableFuture b(Throwable th) {
        th.getClass();
        ?? obj = new Object();
        obj.d(th);
        return obj;
    }

    public static ListenableFuture c(Callable callable, Executor executor) {
        zzgzl zzgzlVar = new zzgzl(callable);
        executor.execute(zzgzlVar);
        return zzgzlVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzgzl, java.lang.Object, java.lang.Runnable] */
    public static ListenableFuture d(zzgxt zzgxtVar, Executor executor) {
        ?? obj = new Object();
        obj.l = new zzgzj(obj, zzgxtVar);
        executor.execute(obj);
        return obj;
    }

    public static ListenableFuture e(ListenableFuture listenableFuture, Class cls, zzgpr zzgprVar, Executor executor) {
        int i = zzgxe.o;
        zzgxe zzgxeVar = new zzgxe(listenableFuture, cls, zzgprVar);
        listenableFuture.k(zzgxeVar, zzgzd.a(executor, zzgxeVar));
        return zzgxeVar;
    }

    public static ListenableFuture f(ListenableFuture listenableFuture, Class cls, zzgxu zzgxuVar, Executor executor) {
        int i = zzgxe.o;
        zzgxe zzgxeVar = new zzgxe(listenableFuture, cls, zzgxuVar);
        listenableFuture.k(zzgxeVar, zzgzd.a(executor, zzgxeVar));
        return zzgxeVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgzi, com.google.common.util.concurrent.ListenableFuture, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzgzg, java.lang.Object, java.lang.Runnable] */
    public static ListenableFuture g(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        ?? obj = new Object();
        obj.l = listenableFuture;
        ?? obj2 = new Object();
        obj2.f8312c = obj;
        obj.m = scheduledExecutorService.schedule((Runnable) obj2, j, timeUnit);
        listenableFuture.k(obj2, zzgyb.f8301c);
        return obj;
    }

    public static ListenableFuture h(ListenableFuture listenableFuture, zzgxu zzgxuVar, Executor executor) {
        int i = zzgxl.n;
        zzgxl zzgxlVar = new zzgxl(listenableFuture, zzgxuVar);
        listenableFuture.k(zzgxlVar, zzgzd.a(executor, zzgxlVar));
        return zzgxlVar;
    }

    public static ListenableFuture i(ListenableFuture listenableFuture, zzgpr zzgprVar, Executor executor) {
        int i = zzgxl.n;
        zzgxl zzgxlVar = new zzgxl(listenableFuture, zzgprVar);
        listenableFuture.k(zzgxlVar, zzgzd.a(executor, zzgxlVar));
        return zzgxlVar;
    }

    public static ListenableFuture j(ArrayList arrayList) {
        return new zzgxv(zzgtd.v(arrayList), true);
    }

    public static void k(ListenableFuture listenableFuture, zzgyj zzgyjVar, Executor executor) {
        listenableFuture.k(new zzgyk(listenableFuture, zzgyjVar), executor);
    }

    public static Object l(Future future) {
        if (future.isDone()) {
            return zzgzn.a(future);
        }
        throw new IllegalStateException(zzgqr.b("Future was expected to be done: %s", future));
    }

    public static Object m(zzcdt zzcdtVar) {
        try {
            return zzgzn.a(zzcdtVar);
        } catch (ExecutionException e) {
            if (e.getCause() instanceof Error) {
                throw new Error((Error) e.getCause());
            }
            throw new RuntimeException(e.getCause());
        }
    }
}
