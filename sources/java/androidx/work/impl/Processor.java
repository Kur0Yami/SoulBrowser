package androidx.work.impl;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutionException;

@RestrictTo
/* loaded from: classes.dex */
public class Processor implements ExecutionListener, ForegroundProcessor {
    public static final String p = Logger.e("Processor");
    public final Context f;
    public final Configuration g;
    public final WorkManagerTaskExecutor h;
    public final WorkDatabase i;
    public final List l;
    public final HashMap k = new HashMap();
    public final HashMap j = new HashMap();
    public final HashSet m = new HashSet();
    public final ArrayList n = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public PowerManager.WakeLock f1863c = null;
    public final Object o = new Object();

    /* loaded from: classes.dex */
    public static class FutureListener implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public Processor f1864c;
        public String f;
        public SettableFuture g;

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                z = ((Boolean) this.g.get()).booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                z = true;
            }
            this.f1864c.d(this.f, z);
        }
    }

    public Processor(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, WorkDatabase workDatabase, List list) {
        this.f = context;
        this.g = configuration;
        this.h = workManagerTaskExecutor;
        this.i = workDatabase;
        this.l = list;
    }

    public static boolean c(String str, WorkerWrapper workerWrapper) {
        boolean z;
        if (workerWrapper != null) {
            workerWrapper.w = true;
            workerWrapper.i();
            ListenableFuture listenableFuture = workerWrapper.v;
            if (listenableFuture != null) {
                z = listenableFuture.isDone();
                workerWrapper.v.cancel(true);
            } else {
                z = false;
            }
            ListenableWorker listenableWorker = workerWrapper.j;
            if (listenableWorker != null && !z) {
                listenableWorker.stop();
            } else {
                Logger.c().a(WorkerWrapper.x, "WorkSpec " + workerWrapper.i + " is already done. Not interrupting.", new Throwable[0]);
            }
            Logger.c().a(p, a.C("WorkerWrapper interrupted for ", str), new Throwable[0]);
            return true;
        }
        Logger.c().a(p, a.C("WorkerWrapper could not be found for ", str), new Throwable[0]);
        return false;
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public final void a(String str, ForegroundInfo foregroundInfo) {
        synchronized (this.o) {
            try {
                Logger.c().d(p, "Moving WorkSpec (" + str + ") to the foreground", new Throwable[0]);
                WorkerWrapper workerWrapper = (WorkerWrapper) this.k.remove(str);
                if (workerWrapper != null) {
                    if (this.f1863c == null) {
                        PowerManager.WakeLock a2 = WakeLocks.a(this.f, "ProcessorForegroundLck");
                        this.f1863c = a2;
                        a2.acquire();
                    }
                    this.j.put(str, workerWrapper);
                    ContextCompat.g(this.f, SystemForegroundDispatcher.c(this.f, str, foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(ExecutionListener executionListener) {
        synchronized (this.o) {
            this.n.add(executionListener);
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        synchronized (this.o) {
            try {
                this.k.remove(str);
                int i = 0;
                Logger.c().a(p, getClass().getSimpleName() + " " + str + " executed; reschedule = " + z, new Throwable[0]);
                ArrayList arrayList = this.n;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((ExecutionListener) obj).d(str, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean e(String str) {
        boolean contains;
        synchronized (this.o) {
            contains = this.m.contains(str);
        }
        return contains;
    }

    public final boolean f(String str) {
        boolean z;
        synchronized (this.o) {
            try {
                if (!this.k.containsKey(str) && !this.j.containsKey(str)) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    public final void g(ExecutionListener executionListener) {
        synchronized (this.o) {
            this.n.remove(executionListener);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.work.impl.WorkerWrapper$Builder] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, androidx.work.impl.Processor$FutureListener, java.lang.Runnable] */
    public final boolean h(String str, WorkerParameters.RuntimeExtras runtimeExtras) {
        synchronized (this.o) {
            try {
                if (f(str)) {
                    Logger.c().a(p, "Work " + str + " is already enqueued for processing", new Throwable[0]);
                    return false;
                }
                Context context = this.f;
                Configuration configuration = this.g;
                WorkManagerTaskExecutor workManagerTaskExecutor = this.h;
                WorkDatabase workDatabase = this.i;
                ?? obj = new Object();
                obj.h = new WorkerParameters.RuntimeExtras();
                obj.f1880a = context.getApplicationContext();
                obj.f1881c = workManagerTaskExecutor;
                obj.b = this;
                obj.d = configuration;
                obj.e = workDatabase;
                obj.f = str;
                obj.g = this.l;
                if (runtimeExtras != null) {
                    obj.h = runtimeExtras;
                }
                WorkerWrapper a2 = obj.a();
                SettableFuture settableFuture = a2.u;
                ?? obj2 = new Object();
                obj2.f1864c = this;
                obj2.f = str;
                obj2.g = settableFuture;
                settableFuture.k(obj2, this.h.f1984c);
                this.k.put(str, a2);
                this.h.f1983a.execute(a2);
                Logger.c().a(p, a.D(getClass().getSimpleName(), ": processing ", str), new Throwable[0]);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i() {
        synchronized (this.o) {
            try {
                if (this.j.isEmpty()) {
                    Context context = this.f;
                    String str = SystemForegroundDispatcher.n;
                    Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                    intent.setAction("ACTION_STOP_FOREGROUND");
                    try {
                        this.f.startService(intent);
                    } catch (Throwable th) {
                        Logger.c().b(p, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.f1863c;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.f1863c = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean j(String str) {
        boolean c2;
        synchronized (this.o) {
            Logger.c().a(p, "Processor stopping foreground work " + str, new Throwable[0]);
            c2 = c(str, (WorkerWrapper) this.j.remove(str));
        }
        return c2;
    }

    public final boolean k(String str) {
        boolean c2;
        synchronized (this.o) {
            Logger.c().a(p, "Processor stopping background work " + str, new Throwable[0]);
            c2 = c(str, (WorkerWrapper) this.k.remove(str));
        }
        return c2;
    }
}
