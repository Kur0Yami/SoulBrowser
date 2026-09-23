package androidx.work.impl;

import android.content.Context;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class WorkerWrapper implements Runnable {
    public static final String x = Logger.e("WorkerWrapper");

    /* renamed from: c, reason: collision with root package name */
    public Context f1877c;
    public String f;
    public List g;
    public WorkerParameters.RuntimeExtras h;
    public WorkSpec i;
    public ListenableWorker j;
    public WorkManagerTaskExecutor k;
    public ListenableWorker.Result l;
    public Configuration m;
    public Processor n;
    public WorkDatabase o;
    public WorkSpecDao p;
    public DependencyDao q;
    public WorkTagDao r;
    public List s;
    public String t;
    public SettableFuture u;
    public ListenableFuture v;
    public volatile boolean w;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Context f1880a;
        public Processor b;

        /* renamed from: c, reason: collision with root package name */
        public WorkManagerTaskExecutor f1881c;
        public Configuration d;
        public WorkDatabase e;
        public String f;
        public List g;
        public WorkerParameters.RuntimeExtras h;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.impl.WorkerWrapper, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
        public final WorkerWrapper a() {
            ?? obj = new Object();
            obj.l = new ListenableWorker.Result.Failure();
            obj.u = new Object();
            obj.v = null;
            obj.f1877c = this.f1880a;
            obj.k = this.f1881c;
            obj.n = this.b;
            obj.f = this.f;
            obj.g = this.g;
            obj.h = this.h;
            obj.j = null;
            obj.m = this.d;
            WorkDatabase workDatabase = this.e;
            obj.o = workDatabase;
            obj.p = workDatabase.n();
            obj.q = workDatabase.i();
            obj.r = workDatabase.o();
            return obj;
        }
    }

    public final void a(ListenableWorker.Result result) {
        boolean z = result instanceof ListenableWorker.Result.Success;
        String str = x;
        if (z) {
            Logger.c().d(str, a.C("Worker result SUCCESS for ", this.t), new Throwable[0]);
            if (this.i.c()) {
                e();
                return;
            }
            DependencyDao dependencyDao = this.q;
            String str2 = this.f;
            WorkSpecDao workSpecDao = this.p;
            WorkDatabase workDatabase = this.o;
            workDatabase.c();
            try {
                workSpecDao.b(WorkInfo.State.g, str2);
                workSpecDao.l(str2, ((ListenableWorker.Result.Success) this.l).f1843a);
                long currentTimeMillis = System.currentTimeMillis();
                ArrayList b = dependencyDao.b(str2);
                int size = b.size();
                int i = 0;
                while (i < size) {
                    Object obj = b.get(i);
                    i++;
                    String str3 = (String) obj;
                    if (workSpecDao.o(str3) == WorkInfo.State.i && dependencyDao.c(str3)) {
                        Logger.c().d(str, "Setting status to enqueued for " + str3, new Throwable[0]);
                        workSpecDao.b(WorkInfo.State.f1849c, str3);
                        workSpecDao.j(currentTimeMillis, str3);
                    }
                }
                workDatabase.h();
                workDatabase.f();
                f(false);
                return;
            } catch (Throwable th) {
                workDatabase.f();
                f(false);
                throw th;
            }
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            Logger.c().d(str, a.C("Worker result RETRY for ", this.t), new Throwable[0]);
            d();
            return;
        }
        Logger.c().d(str, a.C("Worker result FAILURE for ", this.t), new Throwable[0]);
        if (this.i.c()) {
            e();
        } else {
            h();
        }
    }

    public final void b(String str) {
        WorkSpecDao workSpecDao = this.p;
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (workSpecDao.o(str2) != WorkInfo.State.j) {
                workSpecDao.b(WorkInfo.State.h, str2);
            }
            linkedList.addAll(this.q.b(str2));
        }
    }

    public final void c() {
        List list = this.g;
        String str = this.f;
        WorkDatabase workDatabase = this.o;
        if (!i()) {
            workDatabase.c();
            try {
                WorkInfo.State o = this.p.o(str);
                workDatabase.m().delete(str);
                if (o == null) {
                    f(false);
                } else if (o == WorkInfo.State.f) {
                    a(this.l);
                } else if (!o.a()) {
                    d();
                }
                workDatabase.h();
                workDatabase.f();
            } catch (Throwable th) {
                workDatabase.f();
                throw th;
            }
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Scheduler) it.next()).e(str);
            }
            Schedulers.a(this.m, workDatabase, list);
        }
    }

    public final void d() {
        String str = this.f;
        WorkSpecDao workSpecDao = this.p;
        WorkDatabase workDatabase = this.o;
        workDatabase.c();
        try {
            workSpecDao.b(WorkInfo.State.f1849c, str);
            workSpecDao.j(System.currentTimeMillis(), str);
            workSpecDao.e(-1L, str);
            workDatabase.h();
        } finally {
            workDatabase.f();
            f(true);
        }
    }

    public final void e() {
        String str = this.f;
        WorkSpecDao workSpecDao = this.p;
        WorkDatabase workDatabase = this.o;
        workDatabase.c();
        try {
            workSpecDao.j(System.currentTimeMillis(), str);
            workSpecDao.b(WorkInfo.State.f1849c, str);
            workSpecDao.q(str);
            workSpecDao.e(-1L, str);
            workDatabase.h();
        } finally {
            workDatabase.f();
            f(false);
        }
    }

    public final void f(boolean z) {
        ListenableWorker listenableWorker;
        WorkSpecDao workSpecDao = this.p;
        String str = this.f;
        WorkDatabase workDatabase = this.o;
        workDatabase.c();
        try {
            if (!workDatabase.n().n()) {
                PackageManagerHelper.a(this.f1877c, RescheduleReceiver.class, false);
            }
            if (z) {
                workSpecDao.b(WorkInfo.State.f1849c, str);
                workSpecDao.e(-1L, str);
            }
            if (this.i != null && (listenableWorker = this.j) != null && listenableWorker.isRunInForeground()) {
                Processor processor = this.n;
                synchronized (processor.o) {
                    processor.j.remove(str);
                    processor.i();
                }
            }
            workDatabase.h();
            workDatabase.f();
            this.u.h(Boolean.valueOf(z));
        } catch (Throwable th) {
            workDatabase.f();
            throw th;
        }
    }

    public final void g() {
        WorkSpecDao workSpecDao = this.p;
        String str = this.f;
        WorkInfo.State o = workSpecDao.o(str);
        WorkInfo.State state = WorkInfo.State.f;
        String str2 = x;
        if (o == state) {
            Logger.c().a(str2, a.l("Status for ", str, " is RUNNING;not doing any work and rescheduling for later execution"), new Throwable[0]);
            f(true);
            return;
        }
        Logger.c().a(str2, "Status for " + str + " is " + o + "; not doing any work", new Throwable[0]);
        f(false);
    }

    public final void h() {
        String str = this.f;
        WorkDatabase workDatabase = this.o;
        workDatabase.c();
        try {
            b(str);
            this.p.l(str, ((ListenableWorker.Result.Failure) this.l).f1842a);
            workDatabase.h();
        } finally {
            workDatabase.f();
            f(false);
        }
    }

    public final boolean i() {
        if (!this.w) {
            return false;
        }
        Logger.c().a(x, a.C("Work interrupted for ", this.t), new Throwable[0]);
        if (this.p.o(this.f) == null) {
            f(false);
            return true;
        }
        f(!r0.a());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
    
        if (r9 != false) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [androidx.work.impl.utils.futures.AbstractFuture, java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    /* JADX WARN: Type inference failed for: r9v11, types: [androidx.work.WorkerParameters, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 619
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.WorkerWrapper.run():void");
    }
}
