package androidx.work.impl.background.greedy;

import android.content.Context;
import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.WorkInfo;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class GreedyScheduler implements Scheduler, WorkConstraintsCallback, ExecutionListener {
    public static final String m = Logger.e("GreedyScheduler");

    /* renamed from: c, reason: collision with root package name */
    public final Context f1885c;
    public final WorkManagerImpl f;
    public final WorkConstraintsTracker g;
    public final DelayedWorkTracker i;
    public boolean j;
    public Boolean l;
    public final HashSet h = new HashSet();
    public final Object k = new Object();

    public GreedyScheduler(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, WorkManagerImpl workManagerImpl) {
        this.f1885c = context;
        this.f = workManagerImpl;
        this.g = new WorkConstraintsTracker(context, workManagerTaskExecutor, this);
        this.i = new DelayedWorkTracker(this, configuration.e);
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(WorkSpec... workSpecArr) {
        if (this.l == null) {
            this.l = Boolean.valueOf(ProcessUtils.a(this.f1885c, this.f.b));
        }
        if (!this.l.booleanValue()) {
            Logger.c().d(m, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        if (!this.j) {
            this.f.f.b(this);
            this.j = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (final WorkSpec workSpec : workSpecArr) {
            long a2 = workSpec.a();
            long currentTimeMillis = System.currentTimeMillis();
            if (workSpec.b == WorkInfo.State.f1849c) {
                if (currentTimeMillis < a2) {
                    final DelayedWorkTracker delayedWorkTracker = this.i;
                    if (delayedWorkTracker != null) {
                        RunnableScheduler runnableScheduler = delayedWorkTracker.b;
                        HashMap hashMap = delayedWorkTracker.f1883c;
                        Runnable runnable = (Runnable) hashMap.remove(workSpec.f1936a);
                        if (runnable != null) {
                            runnableScheduler.b(runnable);
                        }
                        Runnable runnable2 = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Logger c2 = Logger.c();
                                String str = DelayedWorkTracker.d;
                                WorkSpec workSpec2 = workSpec;
                                c2.a(str, a.C("Scheduling work ", workSpec2.f1936a), new Throwable[0]);
                                DelayedWorkTracker.this.f1882a.a(workSpec2);
                            }
                        };
                        hashMap.put(workSpec.f1936a, runnable2);
                        runnableScheduler.a(runnable2, workSpec.a() - System.currentTimeMillis());
                    }
                } else if (workSpec.b()) {
                    int i = Build.VERSION.SDK_INT;
                    Constraints constraints = workSpec.j;
                    if (constraints.f1829c) {
                        Logger.c().a(m, "Ignoring WorkSpec " + workSpec + ", Requires device idle.", new Throwable[0]);
                    } else if (i >= 24 && constraints.h.f1831a.size() > 0) {
                        Logger.c().a(m, "Ignoring WorkSpec " + workSpec + ", Requires ContentUri triggers.", new Throwable[0]);
                    } else {
                        hashSet.add(workSpec);
                        hashSet2.add(workSpec.f1936a);
                    }
                } else {
                    Logger.c().a(m, a.C("Starting work for ", workSpec.f1936a), new Throwable[0]);
                    this.f.g(workSpec.f1936a, null);
                }
            }
        }
        synchronized (this.k) {
            try {
                if (!hashSet.isEmpty()) {
                    Logger.c().a(m, "Starting tracking for [" + TextUtils.join(",", hashSet2) + "]", new Throwable[0]);
                    this.h.addAll(hashSet);
                    this.g.d(this.h);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Logger.c().a(m, a.C("Constraints not met: Cancelling work ID ", str), new Throwable[0]);
            WorkManagerImpl workManagerImpl = this.f;
            workManagerImpl.d.b(new StopWorkRunnable(workManagerImpl, str, false));
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean c() {
        return false;
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void d(String str, boolean z) {
        synchronized (this.k) {
            try {
                Iterator it = this.h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    WorkSpec workSpec = (WorkSpec) it.next();
                    if (workSpec.f1936a.equals(str)) {
                        Logger.c().a(m, "Stopping tracking for " + str, new Throwable[0]);
                        this.h.remove(workSpec);
                        this.g.d(this.h);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void e(String str) {
        Runnable runnable;
        Boolean bool = this.l;
        WorkManagerImpl workManagerImpl = this.f;
        if (bool == null) {
            this.l = Boolean.valueOf(ProcessUtils.a(this.f1885c, workManagerImpl.b));
        }
        boolean booleanValue = this.l.booleanValue();
        String str2 = m;
        if (!booleanValue) {
            Logger.c().d(str2, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        if (!this.j) {
            workManagerImpl.f.b(this);
            this.j = true;
        }
        Logger.c().a(str2, a.C("Cancelling work ID ", str), new Throwable[0]);
        DelayedWorkTracker delayedWorkTracker = this.i;
        if (delayedWorkTracker != null && (runnable = (Runnable) delayedWorkTracker.f1883c.remove(str)) != null) {
            delayedWorkTracker.b.b(runnable);
        }
        workManagerImpl.d.b(new StopWorkRunnable(workManagerImpl, str, false));
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void f(List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) obj;
            Logger.c().a(m, a.C("Constraints met: Scheduling work ID ", str), new Throwable[0]);
            this.f.g(str, null);
        }
    }
}
