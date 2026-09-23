package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.core.os.BuildCompat;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

@RestrictTo
/* loaded from: classes.dex */
public class WorkForegroundRunnable implements Runnable {
    public static final String k = Logger.e("WorkForegroundRunnable");

    /* renamed from: c, reason: collision with root package name */
    public final SettableFuture f1958c = new Object();
    public final Context f;
    public final WorkSpec g;
    public final ListenableWorker h;
    public final WorkForegroundUpdater i;
    public final TaskExecutor j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    public WorkForegroundRunnable(Context context, WorkSpec workSpec, ListenableWorker listenableWorker, WorkForegroundUpdater workForegroundUpdater, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.f = context;
        this.g = workSpec;
        this.h = listenableWorker;
        this.i = workForegroundUpdater;
        this.j = workManagerTaskExecutor;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.work.impl.utils.futures.AbstractFuture, java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    @Override // java.lang.Runnable
    public final void run() {
        if (this.g.q && !BuildCompat.b()) {
            final ?? obj = new Object();
            TaskExecutor taskExecutor = this.j;
            taskExecutor.a().execute(new Runnable() { // from class: androidx.work.impl.utils.WorkForegroundRunnable.1
                @Override // java.lang.Runnable
                public final void run() {
                    obj.j(WorkForegroundRunnable.this.h.getForegroundInfoAsync());
                }
            });
            obj.k(new Runnable() { // from class: androidx.work.impl.utils.WorkForegroundRunnable.2
                @Override // java.lang.Runnable
                public final void run() {
                    WorkForegroundRunnable workForegroundRunnable = WorkForegroundRunnable.this;
                    SettableFuture settableFuture = workForegroundRunnable.f1958c;
                    ListenableWorker listenableWorker = workForegroundRunnable.h;
                    WorkSpec workSpec = workForegroundRunnable.g;
                    try {
                        ForegroundInfo foregroundInfo = (ForegroundInfo) obj.get();
                        if (foregroundInfo != null) {
                            Logger.c().a(WorkForegroundRunnable.k, "Updating notification for " + workSpec.f1937c, new Throwable[0]);
                            listenableWorker.setRunInForeground(true);
                            settableFuture.j(workForegroundRunnable.i.a(workForegroundRunnable.f, listenableWorker.getId(), foregroundInfo));
                            return;
                        }
                        throw new IllegalStateException("Worker was marked important (" + workSpec.f1937c + ") but did not provide ForegroundInfo");
                    } catch (Throwable th) {
                        settableFuture.i(th);
                    }
                }
            }, taskExecutor.a());
            return;
        }
        this.f1958c.h(null);
    }
}
