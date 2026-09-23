package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.SerialExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

@RestrictTo
/* loaded from: classes.dex */
public class WorkManagerTaskExecutor implements TaskExecutor {

    /* renamed from: a, reason: collision with root package name */
    public final SerialExecutor f1983a;
    public final Handler b = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final Executor f1984c = new Executor() { // from class: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            WorkManagerTaskExecutor.this.b.post(runnable);
        }
    };

    public WorkManagerTaskExecutor(ExecutorService executorService) {
        this.f1983a = new SerialExecutor(executorService);
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final Executor a() {
        return this.f1984c;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final void b(Runnable runnable) {
        this.f1983a.execute(runnable);
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public final SerialExecutor getBackgroundExecutor() {
        return this.f1983a;
    }
}
