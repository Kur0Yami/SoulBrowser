package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;

@RestrictTo
/* loaded from: classes.dex */
public class ConstraintTrackingWorker extends ListenableWorker implements WorkConstraintsCallback {
    public static final String o = Logger.e("ConstraintTrkngWrkr");
    public final WorkerParameters j;
    public final Object k;
    public volatile boolean l;
    public final SettableFuture m;
    public ListenableWorker n;

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    public ConstraintTrackingWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.j = workerParameters;
        this.k = new Object();
        this.l = false;
        this.m = new Object();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void b(List list) {
        Logger.c().a(o, String.format("Constraints changed for %s", list), new Throwable[0]);
        synchronized (this.k) {
            this.l = true;
        }
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public final void f(List list) {
    }

    @Override // androidx.work.ListenableWorker
    public final TaskExecutor getTaskExecutor() {
        return WorkManagerImpl.c(getApplicationContext()).d;
    }

    @Override // androidx.work.ListenableWorker
    public final boolean isRunInForeground() {
        ListenableWorker listenableWorker = this.n;
        if (listenableWorker != null && listenableWorker.isRunInForeground()) {
            return true;
        }
        return false;
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.n;
        if (listenableWorker != null && !listenableWorker.isStopped()) {
            this.n.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.1
            @Override // java.lang.Runnable
            public final void run() {
                final ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
                String b = constraintTrackingWorker.getInputData().b("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
                if (TextUtils.isEmpty(b)) {
                    Logger.c().b(ConstraintTrackingWorker.o, "No worker to delegate to.", new Throwable[0]);
                    constraintTrackingWorker.m.h(new ListenableWorker.Result.Failure());
                    return;
                }
                ListenableWorker b2 = constraintTrackingWorker.getWorkerFactory().b(constraintTrackingWorker.getApplicationContext(), b, constraintTrackingWorker.j);
                constraintTrackingWorker.n = b2;
                if (b2 == null) {
                    Logger.c().a(ConstraintTrackingWorker.o, "No worker to delegate to.", new Throwable[0]);
                    constraintTrackingWorker.m.h(new ListenableWorker.Result.Failure());
                    return;
                }
                WorkSpec p = WorkManagerImpl.c(constraintTrackingWorker.getApplicationContext()).f1876c.n().p(constraintTrackingWorker.getId().toString());
                if (p == null) {
                    constraintTrackingWorker.m.h(new ListenableWorker.Result.Failure());
                    return;
                }
                WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(constraintTrackingWorker.getApplicationContext(), constraintTrackingWorker.getTaskExecutor(), constraintTrackingWorker);
                workConstraintsTracker.d(Collections.singletonList(p));
                if (workConstraintsTracker.c(constraintTrackingWorker.getId().toString())) {
                    Logger.c().a(ConstraintTrackingWorker.o, android.support.v4.media.a.C("Constraints met for delegate ", b), new Throwable[0]);
                    try {
                        final ListenableFuture startWork = constraintTrackingWorker.n.startWork();
                        startWork.k(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                synchronized (ConstraintTrackingWorker.this.k) {
                                    try {
                                        if (ConstraintTrackingWorker.this.l) {
                                            ConstraintTrackingWorker.this.m.h(new Object());
                                        } else {
                                            ConstraintTrackingWorker.this.m.j(startWork);
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }, constraintTrackingWorker.getBackgroundExecutor());
                        return;
                    } catch (Throwable th) {
                        Logger c2 = Logger.c();
                        String str = ConstraintTrackingWorker.o;
                        c2.a(str, android.support.v4.media.a.l("Delegated worker ", b, " threw exception in startWork."), th);
                        synchronized (constraintTrackingWorker.k) {
                            try {
                                if (constraintTrackingWorker.l) {
                                    Logger.c().a(str, "Constraints were unmet, Retrying.", new Throwable[0]);
                                    constraintTrackingWorker.m.h(new Object());
                                } else {
                                    constraintTrackingWorker.m.h(new ListenableWorker.Result.Failure());
                                }
                                return;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
                Logger.c().a(ConstraintTrackingWorker.o, android.support.v4.media.a.l("Constraints not met for delegate ", b, ". Requesting retry."), new Throwable[0]);
                constraintTrackingWorker.m.h(new Object());
            }
        });
        return this.m;
    }
}
