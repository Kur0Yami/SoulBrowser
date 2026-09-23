package okhttp3.internal.concurrent;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "AwaitIdleTask", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 TaskLogger.kt\nokhttp3/internal/concurrent/TaskLoggerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n63#2:242\n63#2:243\n63#2:252\n49#2,4:268\n63#2:272\n49#2,4:273\n63#2:277\n26#3,4:244\n26#3,4:248\n26#3,4:253\n26#3,4:257\n26#3,4:278\n360#4,7:261\n*S KotlinDebug\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue\n*L\n48#1:242\n64#1:243\n122#1:252\n202#1:268,4\n204#1:272\n212#1:273,4\n214#1:277\n67#1:244,4\n70#1:248,4\n173#1:253,4\n179#1:257,4\n231#1:278,4\n188#1:261,7\n*E\n"})
/* loaded from: classes4.dex */
public final class TaskQueue {

    /* renamed from: a, reason: collision with root package name */
    public final TaskRunner f22084a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f22085c;
    public Task d;
    public final ArrayList e;
    public boolean f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue$AwaitIdleTask;", "Lokhttp3/internal/concurrent/Task;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class AwaitIdleTask extends Task {
        @Override // okhttp3.internal.concurrent.Task
        public final long a() {
            throw null;
        }
    }

    public TaskQueue(TaskRunner taskRunner, String name) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(name, "name");
        this.f22084a = taskRunner;
        this.b = name;
        this.e = new ArrayList();
    }

    public static void c(TaskQueue taskQueue, final String name, final Function0 block, int i) {
        final boolean z;
        if ((i & 4) != 0) {
            z = true;
        } else {
            z = false;
        }
        taskQueue.getClass();
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        taskQueue.d(new Task(name, z) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                block.invoke();
                return -1L;
            }
        }, 0L);
    }

    public final void a() {
        TaskRunner taskRunner = this.f22084a;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        synchronized (taskRunner) {
            try {
                if (b()) {
                    this.f22084a.c(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        Task task = this.d;
        if (task != null) {
            Intrinsics.checkNotNull(task);
            if (task.b) {
                this.f = true;
            }
        }
        ArrayList arrayList = this.e;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).b) {
                Logger logger = this.f22084a.f;
                Task task2 = (Task) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void d(Task task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        synchronized (this.f22084a) {
            if (this.f22085c) {
                if (task.b) {
                    Logger logger = this.f22084a.f;
                    if (logger.isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(logger, task, this, "schedule canceled (queue is shutdown)");
                    }
                    return;
                } else {
                    Logger logger2 = this.f22084a.f;
                    if (logger2.isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(logger2, task, this, "schedule failed (queue is shutdown)");
                    }
                    throw new RejectedExecutionException();
                }
            }
            if (e(task, j, false)) {
                this.f22084a.c(this);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean e(Task task, long j, boolean z) {
        String concat;
        Intrinsics.checkNotNullParameter(task, "task");
        task.getClass();
        Intrinsics.checkNotNullParameter(this, "queue");
        TaskQueue taskQueue = task.f22083c;
        if (taskQueue != this) {
            if (taskQueue == null) {
                task.f22083c = this;
            } else {
                throw new IllegalStateException("task is in multiple queues");
            }
        }
        TaskRunner taskRunner = this.f22084a;
        TaskRunner.RealBackend realBackend = taskRunner.f22086c;
        Logger logger = taskRunner.f;
        long nanoTime = System.nanoTime();
        long j2 = nanoTime + j;
        ArrayList arrayList = this.e;
        int indexOf = arrayList.indexOf(task);
        if (indexOf != -1) {
            if (task.d <= j2) {
                if (logger.isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(logger, task, this, "already scheduled");
                    return false;
                }
                return false;
            }
            arrayList.remove(indexOf);
        }
        task.d = j2;
        if (logger.isLoggable(Level.FINE)) {
            if (z) {
                concat = "run again after ".concat(TaskLoggerKt.b(j2 - nanoTime));
            } else {
                concat = "scheduled after ".concat(TaskLoggerKt.b(j2 - nanoTime));
            }
            TaskLoggerKt.a(logger, task, this, concat);
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                if (((Task) obj).d - nanoTime > j) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, task);
        if (i != 0) {
            return false;
        }
        return true;
    }

    public final void f() {
        TaskRunner taskRunner = this.f22084a;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        synchronized (taskRunner) {
            try {
                this.f22085c = true;
                if (b()) {
                    this.f22084a.c(this);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: toString, reason: from getter */
    public final String getB() {
        return this.b;
    }
}
