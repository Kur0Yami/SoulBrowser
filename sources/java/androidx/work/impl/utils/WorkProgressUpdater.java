package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.UUID;

@RestrictTo
/* loaded from: classes.dex */
public class WorkProgressUpdater implements ProgressUpdater {

    /* renamed from: c, reason: collision with root package name */
    public static final String f1964c = Logger.e("WorkProgressUpdater");

    /* renamed from: a, reason: collision with root package name */
    public final WorkDatabase f1965a;
    public final TaskExecutor b;

    public WorkProgressUpdater(WorkDatabase workDatabase, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.f1965a = workDatabase;
        this.b = workManagerTaskExecutor;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    public final SettableFuture a(final UUID uuid, final Data data) {
        final ?? obj = new Object();
        this.b.b(new Runnable() { // from class: androidx.work.impl.utils.WorkProgressUpdater.1
            @Override // java.lang.Runnable
            public final void run() {
                SettableFuture settableFuture = obj;
                UUID uuid2 = uuid;
                String uuid3 = uuid2.toString();
                Logger c2 = Logger.c();
                String str = WorkProgressUpdater.f1964c;
                StringBuilder sb = new StringBuilder("Updating progress for ");
                sb.append(uuid2);
                sb.append(" (");
                Data data2 = data;
                sb.append(data2);
                sb.append(")");
                c2.a(str, sb.toString(), new Throwable[0]);
                WorkDatabase workDatabase = WorkProgressUpdater.this.f1965a;
                workDatabase.c();
                try {
                    WorkSpec p = workDatabase.n().p(uuid3);
                    if (p != null) {
                        if (p.b == WorkInfo.State.f) {
                            workDatabase.m().b(new WorkProgress(uuid3, data2));
                        } else {
                            Logger.c().f(str, "Ignoring setProgressAsync(...). WorkSpec (" + uuid3 + ") is not in a RUNNING state.", new Throwable[0]);
                        }
                        settableFuture.h(null);
                        workDatabase.h();
                        return;
                    }
                    throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                } catch (Throwable th) {
                    try {
                        Logger.c().b(WorkProgressUpdater.f1964c, "Error updating Worker progress", th);
                        settableFuture.i(th);
                    } finally {
                        workDatabase.f();
                    }
                }
            }
        });
        return obj;
    }
}
