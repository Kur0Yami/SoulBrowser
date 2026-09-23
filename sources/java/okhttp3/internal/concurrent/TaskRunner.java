package okhttp3.internal.concurrent;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.b;
import okhttp3.internal.concurrent.TaskRunner;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner;", "Lokhttp3/internal/concurrent/Lockable;", "Backend", "RealBackend", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,364:1\n55#2,4:365\n55#2,4:369\n55#2,4:373\n55#2,4:377\n55#2,4:381\n63#2:385\n63#2:386\n55#2,4:387\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner\n*L\n107#1:365,4\n125#1:369,4\n140#1:373,4\n171#1:377,4\n251#1:381,4\n259#1:385\n268#1:386\n274#1:387,4\n*E\n"})
/* loaded from: classes4.dex */
public final class TaskRunner implements Lockable {
    public static final Logger o;
    public static final TaskRunner p;

    /* renamed from: c, reason: collision with root package name */
    public final RealBackend f22086c;
    public final Logger f;
    public int g;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public final ArrayList l;
    public final ArrayList m;
    public final TaskRunner$runnable$1 n;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Backend;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Backend {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/internal/concurrent/TaskRunner;", "INSTANCE", "Lokhttp3/internal/concurrent/TaskRunner;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$RealBackend;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nTaskRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,364:1\n36#2:365\n55#2,4:366\n41#2,6:370\n*S KotlinDebug\n*F\n+ 1 TaskRunner.kt\nokhttp3/internal/concurrent/TaskRunner$RealBackend\n*L\n324#1:365\n337#1:366,4\n339#1:370,6\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class RealBackend implements Backend {

        /* renamed from: a, reason: collision with root package name */
        public final ThreadPoolExecutor f22087a;

        public RealBackend(b threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.f22087a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }
    }

    static {
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(...)");
        o = logger;
        String name = _UtilJvmKt.b + " TaskRunner";
        Intrinsics.checkNotNullParameter(name, "name");
        p = new TaskRunner(new RealBackend(new b(name, true)));
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [okhttp3.internal.concurrent.TaskRunner$runnable$1] */
    public TaskRunner(RealBackend backend2) {
        Intrinsics.checkNotNullParameter(backend2, "backend");
        Logger logger = o;
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.f22086c = backend2;
        this.f = logger;
        this.g = 10000;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                Task b;
                long j;
                Task b2;
                TaskRunner taskRunner = TaskRunner.this;
                synchronized (taskRunner) {
                    taskRunner.k++;
                    b = taskRunner.b();
                }
                if (b == null) {
                    return;
                }
                Thread currentThread = Thread.currentThread();
                String name = currentThread.getName();
                while (true) {
                    try {
                        currentThread.setName(b.f22082a);
                        Logger logger2 = TaskRunner.this.f;
                        TaskQueue taskQueue = b.f22083c;
                        Intrinsics.checkNotNull(taskQueue);
                        boolean isLoggable = logger2.isLoggable(Level.FINE);
                        if (isLoggable) {
                            TaskRunner.RealBackend realBackend = taskQueue.f22084a.f22086c;
                            j = System.nanoTime();
                            TaskLoggerKt.a(logger2, b, taskQueue, "starting");
                        } else {
                            j = -1;
                        }
                        try {
                            long a2 = b.a();
                            if (isLoggable) {
                                TaskRunner.RealBackend realBackend2 = taskQueue.f22084a.f22086c;
                                TaskLoggerKt.a(logger2, b, taskQueue, "finished run in " + TaskLoggerKt.b(System.nanoTime() - j));
                            }
                            TaskRunner taskRunner2 = TaskRunner.this;
                            synchronized (taskRunner2) {
                                TaskRunner.a(taskRunner2, b, a2, true);
                                b2 = taskRunner2.b();
                            }
                            if (b2 == null) {
                                return;
                            } else {
                                b = b2;
                            }
                        } catch (Throwable th) {
                            if (isLoggable) {
                                TaskRunner.RealBackend realBackend3 = taskQueue.f22084a.f22086c;
                                TaskLoggerKt.a(logger2, b, taskQueue, "failed a run in " + TaskLoggerKt.b(System.nanoTime() - j));
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            TaskRunner taskRunner3 = TaskRunner.this;
                            synchronized (taskRunner3) {
                                TaskRunner.a(taskRunner3, b, -1L, false);
                                Unit unit = Unit.INSTANCE;
                                if (th2 instanceof InterruptedException) {
                                    Thread.currentThread().interrupt();
                                    return;
                                }
                                throw th2;
                            }
                        } finally {
                            currentThread.setName(name);
                        }
                    }
                }
            }
        };
    }

    public static final void a(TaskRunner taskRunner, Task task, long j, boolean z) {
        TimeZone timeZone = _UtilJvmKt.f22077a;
        TaskQueue taskQueue = task.f22083c;
        Intrinsics.checkNotNull(taskQueue);
        if (taskQueue.d == task) {
            boolean z2 = taskQueue.f;
            taskQueue.f = false;
            taskQueue.d = null;
            taskRunner.l.remove(taskQueue);
            if (j != -1 && !z2 && !taskQueue.f22085c) {
                taskQueue.e(task, j, true);
            }
            if (!taskQueue.e.isEmpty()) {
                taskRunner.m.add(taskQueue);
                if (!z) {
                    taskRunner.e();
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final Task b() {
        long j;
        Task task;
        boolean z;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        while (true) {
            ArrayList arrayList = this.m;
            if (arrayList.isEmpty()) {
                return null;
            }
            long nanoTime = System.nanoTime();
            int size = arrayList.size();
            long j2 = LongCompanionObject.MAX_VALUE;
            int i = 0;
            Task task2 = null;
            while (true) {
                if (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Task task3 = (Task) ((TaskQueue) obj).e.get(0);
                    j = nanoTime;
                    task = null;
                    long max = Math.max(0L, task3.d - j);
                    if (max > 0) {
                        j2 = Math.min(max, j2);
                    } else {
                        if (task2 != null) {
                            z = true;
                            break;
                        }
                        task2 = task3;
                    }
                    nanoTime = j;
                } else {
                    j = nanoTime;
                    task = null;
                    z = false;
                    break;
                }
            }
            ArrayList arrayList2 = this.l;
            if (task2 != null) {
                TimeZone timeZone2 = _UtilJvmKt.f22077a;
                task2.d = -1L;
                TaskQueue taskQueue = task2.f22083c;
                Intrinsics.checkNotNull(taskQueue);
                taskQueue.e.remove(task2);
                arrayList.remove(taskQueue);
                taskQueue.d = task2;
                arrayList2.add(taskQueue);
                if (z || (!this.h && !arrayList.isEmpty())) {
                    e();
                }
                return task2;
            }
            if (this.h) {
                if (j2 < this.i - j) {
                    Intrinsics.checkNotNullParameter(this, "taskRunner");
                    notify();
                    return task;
                }
                return task;
            }
            this.h = true;
            this.i = j + j2;
            try {
                try {
                    Intrinsics.checkNotNullParameter(this, "taskRunner");
                    TimeZone timeZone3 = _UtilJvmKt.f22077a;
                    if (j2 > 0) {
                        long j3 = j2 / 1000000;
                        Long.signum(j3);
                        long j4 = j2 - (1000000 * j3);
                        if (j3 > 0 || j2 > 0) {
                            wait(j3, (int) j4);
                        }
                    }
                } catch (InterruptedException unused) {
                    TimeZone timeZone4 = _UtilJvmKt.f22077a;
                    for (int size2 = arrayList2.size() - 1; -1 < size2; size2--) {
                        ((TaskQueue) arrayList2.get(size2)).b();
                    }
                    for (int size3 = arrayList.size() - 1; -1 < size3; size3--) {
                        TaskQueue taskQueue2 = (TaskQueue) arrayList.get(size3);
                        taskQueue2.b();
                        if (taskQueue2.e.isEmpty()) {
                            arrayList.remove(size3);
                        }
                    }
                }
            } finally {
                this.h = false;
            }
        }
    }

    public final void c(TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        TimeZone timeZone = _UtilJvmKt.f22077a;
        if (taskQueue.d == null) {
            boolean isEmpty = taskQueue.e.isEmpty();
            ArrayList arrayList = this.m;
            if (!isEmpty) {
                byte[] bArr = _UtilCommonKt.f22076a;
                Intrinsics.checkNotNullParameter(arrayList, "<this>");
                if (!arrayList.contains(taskQueue)) {
                    arrayList.add(taskQueue);
                }
            } else {
                arrayList.remove(taskQueue);
            }
        }
        if (this.h) {
            Intrinsics.checkNotNullParameter(this, "taskRunner");
            notify();
        } else {
            e();
        }
    }

    public final TaskQueue d() {
        int i;
        synchronized (this) {
            i = this.g;
            this.g = i + 1;
        }
        return new TaskQueue(this, a.e(i, "Q"));
    }

    public final void e() {
        TimeZone timeZone = _UtilJvmKt.f22077a;
        int i = this.j;
        if (i > this.k) {
            return;
        }
        this.j = i + 1;
        Intrinsics.checkNotNullParameter(this, "taskRunner");
        TaskRunner$runnable$1 runnable = this.n;
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.f22086c.f22087a.execute(runnable);
    }
}
