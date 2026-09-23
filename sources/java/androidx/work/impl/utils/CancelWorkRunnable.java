package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

@RestrictTo
/* loaded from: classes.dex */
public abstract class CancelWorkRunnable implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final OperationImpl f1945c = new OperationImpl();

    /* renamed from: androidx.work.impl.utils.CancelWorkRunnable$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends CancelWorkRunnable {
        @Override // androidx.work.impl.utils.CancelWorkRunnable
        public final void d() {
            throw null;
        }
    }

    public static void a(WorkManagerImpl workManagerImpl, String str) {
        WorkDatabase workDatabase = workManagerImpl.f1876c;
        WorkSpecDao n = workDatabase.n();
        DependencyDao i = workDatabase.i();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            WorkInfo.State o = n.o(str2);
            if (o != WorkInfo.State.g && o != WorkInfo.State.h) {
                n.b(WorkInfo.State.j, str2);
            }
            linkedList.addAll(i.b(str2));
        }
        Processor processor = workManagerImpl.f;
        synchronized (processor.o) {
            try {
                boolean z = false;
                Logger.c().a(Processor.p, "Processor cancelling " + str, new Throwable[0]);
                processor.m.add(str);
                WorkerWrapper workerWrapper = (WorkerWrapper) processor.j.remove(str);
                if (workerWrapper != null) {
                    z = true;
                }
                if (workerWrapper == null) {
                    workerWrapper = (WorkerWrapper) processor.k.remove(str);
                }
                Processor.c(str, workerWrapper);
                if (z) {
                    processor.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Iterator it = workManagerImpl.e.iterator();
        while (it.hasNext()) {
            ((Scheduler) it.next()).e(str);
        }
    }

    public static CancelWorkRunnable b(final WorkManagerImpl workManagerImpl, final UUID uuid) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.1
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            public final void d() {
                WorkManagerImpl workManagerImpl2 = WorkManagerImpl.this;
                WorkDatabase workDatabase = workManagerImpl2.f1876c;
                workDatabase.c();
                try {
                    CancelWorkRunnable.a(workManagerImpl2, uuid.toString());
                    workDatabase.h();
                    workDatabase.f();
                    Schedulers.a(workManagerImpl2.b, workManagerImpl2.f1876c, workManagerImpl2.e);
                } catch (Throwable th) {
                    workDatabase.f();
                    throw th;
                }
            }
        };
    }

    public static CancelWorkRunnable c(final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.2
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            public final void d() {
                WorkManagerImpl workManagerImpl2 = WorkManagerImpl.this;
                WorkDatabase workDatabase = workManagerImpl2.f1876c;
                workDatabase.c();
                try {
                    ArrayList d = workDatabase.n().d();
                    int size = d.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = d.get(i);
                        i++;
                        CancelWorkRunnable.a(workManagerImpl2, (String) obj);
                    }
                    workDatabase.h();
                    workDatabase.f();
                    Schedulers.a(workManagerImpl2.b, workManagerImpl2.f1876c, workManagerImpl2.e);
                } catch (Throwable th) {
                    workDatabase.f();
                    throw th;
                }
            }
        };
    }

    public abstract void d();

    @Override // java.lang.Runnable
    public final void run() {
        OperationImpl operationImpl = this.f1945c;
        try {
            d();
            operationImpl.a(Operation.f1846a);
        } catch (Throwable th) {
            operationImpl.a(new Operation.State.FAILURE(th));
        }
    }
}
