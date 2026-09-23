package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.b;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Dispatcher;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,299:1\n1#2:300\n1563#3:301\n1634#3,3:302\n1563#3:306\n1634#3,3:307\n242#4:305\n242#4:310\n*S KotlinDebug\n*F\n+ 1 Dispatcher.kt\nokhttp3/Dispatcher\n*L\n279#1:301\n279#1:302,3\n283#1:306\n283#1:307,3\n279#1:305\n283#1:310\n*E\n"})
/* loaded from: classes4.dex */
public final class Dispatcher {

    /* renamed from: a, reason: collision with root package name */
    public ThreadPoolExecutor f22040a;
    public final ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f22041c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();

    public final synchronized ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (this.f22040a == null) {
                TimeUnit timeUnit = TimeUnit.SECONDS;
                SynchronousQueue synchronousQueue = new SynchronousQueue();
                String name = _UtilJvmKt.b + " Dispatcher";
                Intrinsics.checkNotNullParameter(name, "name");
                this.f22040a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, timeUnit, synchronousQueue, new b(name, false));
            }
            threadPoolExecutor = this.f22040a;
            Intrinsics.checkNotNull(threadPoolExecutor);
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:4:0x0017, B:7:0x0021, B:12:0x0035, B:26:0x0046, B:28:0x005c, B:31:0x006d, B:32:0x006e, B:33:0x002d, B:34:0x00a6, B:35:0x00ad), top: B:3:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046 A[Catch: all -> 0x002a, TryCatch #0 {all -> 0x002a, blocks: (B:4:0x0017, B:7:0x0021, B:12:0x0035, B:26:0x0046, B:28:0x005c, B:31:0x006d, B:32:0x006e, B:33:0x002d, B:34:0x00a6, B:35:0x00ad), top: B:3:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(okhttp3.internal.connection.RealCall r5) {
        /*
            r4 = this;
            java.lang.String r0 = "call"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.TimeZone r0 = okhttp3.internal._UtilJvmKt.f22077a
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.util.concurrent.ExecutorService r0 = r4.a()
            java.util.concurrent.ThreadPoolExecutor r0 = (java.util.concurrent.ThreadPoolExecutor) r0
            boolean r0 = r0.isShutdown()
            monitor-enter(r4)
            java.util.ArrayDeque r1 = r4.d     // Catch: java.lang.Throwable -> L2a
            boolean r5 = r1.remove(r5)     // Catch: java.lang.Throwable -> L2a
            if (r5 == 0) goto La6
            if (r0 != 0) goto L2d
            java.util.ArrayDeque r5 = r4.f22041c     // Catch: java.lang.Throwable -> L2a
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L2a
            if (r5 == 0) goto L32
            goto L2d
        L2a:
            r5 = move-exception
            goto Lae
        L2d:
            java.util.ArrayDeque r5 = r4.d     // Catch: java.lang.Throwable -> L2a
            r5.isEmpty()     // Catch: java.lang.Throwable -> L2a
        L32:
            r5 = 0
            if (r0 == 0) goto L46
            java.util.ArrayDeque r1 = r4.b     // Catch: java.lang.Throwable -> L2a
            java.util.List r1 = kotlin.collections.CollectionsKt.toList(r1)     // Catch: java.lang.Throwable -> L2a
            java.util.ArrayDeque r2 = r4.b     // Catch: java.lang.Throwable -> L2a
            r2.clear()     // Catch: java.lang.Throwable -> L2a
            okhttp3.Dispatcher$promoteAndExecute$Effects r2 = new okhttp3.Dispatcher$promoteAndExecute$Effects     // Catch: java.lang.Throwable -> L2a
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L2a
            goto L73
        L46:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L2a
            r1.<init>()     // Catch: java.lang.Throwable -> L2a
            java.util.ArrayDeque r2 = r4.b     // Catch: java.lang.Throwable -> L2a
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L2a
            java.lang.String r3 = "iterator(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Throwable -> L2a
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L2a
            if (r3 == 0) goto L6e
            java.lang.Object r2 = r2.next()     // Catch: java.lang.Throwable -> L2a
            okhttp3.internal.connection.RealCall$AsyncCall r2 = (okhttp3.internal.connection.RealCall.AsyncCall) r2     // Catch: java.lang.Throwable -> L2a
            java.util.ArrayDeque r2 = r4.f22041c     // Catch: java.lang.Throwable -> L2a
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L2a
            r3 = 64
            if (r2 < r3) goto L6d
            goto L6e
        L6d:
            throw r5     // Catch: java.lang.Throwable -> L2a
        L6e:
            okhttp3.Dispatcher$promoteAndExecute$Effects r2 = new okhttp3.Dispatcher$promoteAndExecute$Effects     // Catch: java.lang.Throwable -> L2a
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L2a
        L73:
            monitor-exit(r4)
            java.util.List r1 = r2.f22042a
            int r1 = r1.size()
            if (r1 <= 0) goto La5
            java.util.List r1 = r2.f22042a
            r2 = 0
            java.lang.Object r1 = r1.get(r2)
            okhttp3.internal.connection.RealCall$AsyncCall r1 = (okhttp3.internal.connection.RealCall.AsyncCall) r1
            if (r1 != 0) goto La4
            if (r0 == 0) goto L97
            r1.getClass()
            java.io.InterruptedIOException r0 = new java.io.InterruptedIOException
            java.lang.String r1 = "executor rejected"
            r0.<init>(r1)
            r0.initCause(r5)
            throw r5
        L97:
            java.util.concurrent.ExecutorService r0 = r4.a()
            r1.getClass()
            java.lang.String r1 = "executorService"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            throw r5
        La4:
            throw r5
        La5:
            return
        La6:
            java.lang.String r5 = "Call wasn't in-flight!"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2a
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L2a
            throw r0     // Catch: java.lang.Throwable -> L2a
        Lae:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Dispatcher.b(okhttp3.internal.connection.RealCall):void");
    }
}
