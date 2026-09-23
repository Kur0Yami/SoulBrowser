package okhttp3.internal.connection;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RoutePlanner;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/FastFallbackExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {

    /* renamed from: a, reason: collision with root package name */
    public final RealRoutePlanner f22097a;
    public final TaskRunner b;

    /* renamed from: c, reason: collision with root package name */
    public final long f22098c;
    public long d;
    public final CopyOnWriteArrayList e;
    public final BlockingQueue f;

    public FastFallbackExchangeFinder(RealRoutePlanner routePlanner, TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.f22097a = routePlanner;
        this.b = taskRunner;
        this.f22098c = TimeUnit.MILLISECONDS.toNanos(250L);
        this.d = Long.MIN_VALUE;
        this.e = new CopyOnWriteArrayList();
        TaskRunner.RealBackend realBackend = taskRunner.f22086c;
        LinkedBlockingDeque queue = new LinkedBlockingDeque();
        Intrinsics.checkNotNullParameter(queue, "queue");
        this.f = queue;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0049 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0006, B:5:0x000c, B:11:0x001d, B:13:0x0023, B:20:0x0049, B:64:0x0053, B:67:0x005e, B:25:0x0067, B:27:0x006f, B:31:0x0078, B:33:0x0081, B:34:0x0085, B:36:0x0089, B:41:0x0090, B:44:0x009a, B:46:0x009e, B:49:0x00a4, B:50:0x00a8, B:52:0x00ac, B:53:0x00ad, B:56:0x00b1, B:69:0x003e, B:71:0x00b8, B:72:0x00bf), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0006, B:5:0x000c, B:11:0x001d, B:13:0x0023, B:20:0x0049, B:64:0x0053, B:67:0x005e, B:25:0x0067, B:27:0x006f, B:31:0x0078, B:33:0x0081, B:34:0x0085, B:36:0x0089, B:41:0x0090, B:44:0x009a, B:46:0x009e, B:49:0x00a4, B:50:0x00a8, B:52:0x00ac, B:53:0x00ad, B:56:0x00b1, B:69:0x003e, B:71:0x00b8, B:72:0x00bf), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x009e A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0006, B:5:0x000c, B:11:0x001d, B:13:0x0023, B:20:0x0049, B:64:0x0053, B:67:0x005e, B:25:0x0067, B:27:0x006f, B:31:0x0078, B:33:0x0081, B:34:0x0085, B:36:0x0089, B:41:0x0090, B:44:0x009a, B:46:0x009e, B:49:0x00a4, B:50:0x00a8, B:52:0x00ac, B:53:0x00ad, B:56:0x00b1, B:69:0x003e, B:71:0x00b8, B:72:0x00bf), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0067 A[SYNTHETIC] */
    @Override // okhttp3.internal.connection.ExchangeFinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RealConnection a() {
        /*
            r10 = this;
            okhttp3.internal.connection.RealRoutePlanner r0 = r10.f22097a
            java.util.concurrent.CopyOnWriteArrayList r1 = r10.e
            r2 = 0
            r3 = r2
        L6:
            boolean r4 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r4 == 0) goto L1d
            boolean r4 = r0.a(r2)     // Catch: java.lang.Throwable -> L1a
            if (r4 == 0) goto L13
            goto L1d
        L13:
            r10.c()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            throw r3
        L1a:
            r0 = move-exception
            goto Lc0
        L1d:
            okhttp3.internal.connection.RealCall r4 = r0.k     // Catch: java.lang.Throwable -> L1a
            boolean r4 = r4.u     // Catch: java.lang.Throwable -> L1a
            if (r4 != 0) goto Lb8
            okhttp3.internal.concurrent.TaskRunner r4 = r10.b     // Catch: java.lang.Throwable -> L1a
            okhttp3.internal.concurrent.TaskRunner$RealBackend r4 = r4.f22086c     // Catch: java.lang.Throwable -> L1a
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L1a
            long r6 = r10.d     // Catch: java.lang.Throwable -> L1a
            long r6 = r6 - r4
            boolean r8 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r8 != 0) goto L3e
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 > 0) goto L3b
            goto L3e
        L3b:
            r7 = r6
            r6 = r2
            goto L47
        L3e:
            okhttp3.internal.connection.RoutePlanner$ConnectResult r6 = r10.d()     // Catch: java.lang.Throwable -> L1a
            long r7 = r10.f22098c     // Catch: java.lang.Throwable -> L1a
            long r4 = r4 + r7
            r10.d = r4     // Catch: java.lang.Throwable -> L1a
        L47:
            if (r6 != 0) goto L67
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L1a
            boolean r5 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r5 == 0) goto L53
        L51:
            r6 = r2
            goto L64
        L53:
            java.util.concurrent.BlockingQueue r5 = r10.f     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r4 = r5.poll(r7, r4)     // Catch: java.lang.Throwable -> L1a
            okhttp3.internal.connection.RoutePlanner$ConnectResult r4 = (okhttp3.internal.connection.RoutePlanner.ConnectResult) r4     // Catch: java.lang.Throwable -> L1a
            if (r4 != 0) goto L5e
            goto L51
        L5e:
            okhttp3.internal.connection.RoutePlanner$Plan r5 = r4.f22107a     // Catch: java.lang.Throwable -> L1a
            r1.remove(r5)     // Catch: java.lang.Throwable -> L1a
            r6 = r4
        L64:
            if (r6 != 0) goto L67
            goto L6
        L67:
            okhttp3.internal.connection.RoutePlanner$Plan r4 = r6.f22107a     // Catch: java.lang.Throwable -> L1a
            okhttp3.internal.connection.RoutePlanner$Plan r5 = r6.b     // Catch: java.lang.Throwable -> L1a
            r7 = 0
            r8 = 1
            if (r5 != 0) goto L75
            java.lang.Throwable r5 = r6.f22108c     // Catch: java.lang.Throwable -> L1a
            if (r5 != 0) goto L75
            r5 = r8
            goto L76
        L75:
            r5 = r7
        L76:
            if (r5 == 0) goto L9a
            r10.c()     // Catch: java.lang.Throwable -> L1a
            boolean r5 = r4.isReady()     // Catch: java.lang.Throwable -> L1a
            if (r5 != 0) goto L85
            okhttp3.internal.connection.RoutePlanner$ConnectResult r6 = r4.f()     // Catch: java.lang.Throwable -> L1a
        L85:
            okhttp3.internal.connection.RoutePlanner$Plan r4 = r6.b     // Catch: java.lang.Throwable -> L1a
            if (r4 != 0) goto L8e
            java.lang.Throwable r4 = r6.f22108c     // Catch: java.lang.Throwable -> L1a
            if (r4 != 0) goto L8e
            r7 = r8
        L8e:
            if (r7 == 0) goto L9a
            okhttp3.internal.connection.RoutePlanner$Plan r0 = r6.f22107a     // Catch: java.lang.Throwable -> L1a
            okhttp3.internal.connection.RealConnection r0 = r0.getF22105c()     // Catch: java.lang.Throwable -> L1a
            r10.c()
            return r0
        L9a:
            java.lang.Throwable r4 = r6.f22108c     // Catch: java.lang.Throwable -> L1a
            if (r4 == 0) goto Lad
            boolean r5 = r4 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L1a
            if (r5 == 0) goto Lac
            if (r3 != 0) goto La8
            java.io.IOException r4 = (java.io.IOException) r4     // Catch: java.lang.Throwable -> L1a
            r3 = r4
            goto Lad
        La8:
            kotlin.ExceptionsKt.addSuppressed(r3, r4)     // Catch: java.lang.Throwable -> L1a
            goto Lad
        Lac:
            throw r4     // Catch: java.lang.Throwable -> L1a
        Lad:
            okhttp3.internal.connection.RoutePlanner$Plan r4 = r6.b     // Catch: java.lang.Throwable -> L1a
            if (r4 == 0) goto L6
            kotlin.collections.ArrayDeque r5 = r0.p     // Catch: java.lang.Throwable -> L1a
            r5.addFirst(r4)     // Catch: java.lang.Throwable -> L1a
            goto L6
        Lb8:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L1a
            java.lang.String r1 = "Canceled"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1a
            throw r0     // Catch: java.lang.Throwable -> L1a
        Lc0:
            r10.c()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.FastFallbackExchangeFinder.a():okhttp3.internal.connection.RealConnection");
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RoutePlanner b() {
        return this.f22097a;
    }

    public final void c() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.e;
        Iterator it = copyOnWriteArrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            RoutePlanner.Plan plan = (RoutePlanner.Plan) it.next();
            plan.cancel();
            RoutePlanner.Plan a2 = plan.a();
            if (a2 != null) {
                this.f22097a.p.addLast(a2);
            }
        }
        copyOnWriteArrayList.clear();
    }

    public final RoutePlanner.ConnectResult d() {
        final RoutePlanner.Plan failedPlan;
        RealRoutePlanner realRoutePlanner = this.f22097a;
        if (realRoutePlanner.a(null)) {
            try {
                failedPlan = realRoutePlanner.d();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).f22096c;
            }
            this.e.add(failedPlan);
            final String str = _UtilJvmKt.b + " connect " + realRoutePlanner.i.h.f();
            this.b.d().d(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public final long a() {
                    RoutePlanner.ConnectResult connectResult;
                    RoutePlanner.Plan plan = failedPlan;
                    try {
                        connectResult = plan.getF22096c();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(plan, null, th2, 2);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    if (fastFallbackExchangeFinder.e.contains(plan)) {
                        fastFallbackExchangeFinder.f.put(connectResult);
                        return -1L;
                    }
                    return -1L;
                }
            }, 0L);
        }
        return null;
    }
}
