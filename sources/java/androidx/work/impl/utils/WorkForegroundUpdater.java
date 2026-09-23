package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.UUID;

@RestrictTo
/* loaded from: classes.dex */
public class WorkForegroundUpdater implements ForegroundUpdater {

    /* renamed from: a, reason: collision with root package name */
    public final TaskExecutor f1961a;
    public final ForegroundProcessor b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkSpecDao f1962c;

    static {
        Logger.e("WMFgUpdater");
    }

    public WorkForegroundUpdater(WorkDatabase workDatabase, Processor processor, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.b = processor;
        this.f1961a = workManagerTaskExecutor;
        this.f1962c = workDatabase.n();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    public final SettableFuture a(final Context context, final UUID uuid, final ForegroundInfo foregroundInfo) {
        final ?? obj = new Object();
        this.f1961a.b(new Runnable() { // from class: androidx.work.impl.utils.WorkForegroundUpdater.1
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                ForegroundInfo foregroundInfo2 = foregroundInfo;
                WorkForegroundUpdater workForegroundUpdater = WorkForegroundUpdater.this;
                SettableFuture settableFuture = obj;
                try {
                    if (!settableFuture.isCancelled()) {
                        String uuid2 = uuid.toString();
                        WorkInfo.State o = workForegroundUpdater.f1962c.o(uuid2);
                        if (o != null && !o.a()) {
                            workForegroundUpdater.b.a(uuid2, foregroundInfo2);
                            context2.startService(SystemForegroundDispatcher.a(context2, uuid2, foregroundInfo2));
                        } else {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                    }
                    settableFuture.h(null);
                } catch (Throwable th) {
                    settableFuture.i(th);
                }
            }
        });
        return obj;
    }
}
