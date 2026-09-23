package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    public SettableFuture j;

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public Worker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract ListenableWorker.Result doWork();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    @Override // androidx.work.ListenableWorker
    @NonNull
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        this.j = new Object();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public final void run() {
                Worker worker = Worker.this;
                try {
                    worker.j.h(worker.doWork());
                } catch (Throwable th) {
                    worker.j.i(th);
                }
            }
        });
        return this.j;
    }
}
