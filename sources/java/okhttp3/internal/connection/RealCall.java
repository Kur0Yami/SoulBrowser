package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/connection/RealCall;", "Lokhttp3/Call;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/internal/concurrent/Lockable;", "AsyncCall", "CallReference", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,612:1\n1#2:613\n63#3:614\n63#3:615\n63#3:616\n55#3,4:617\n63#3:621\n63#3:622\n49#3,4:623\n49#3,4:627\n63#3:631\n55#3,4:632\n63#3:643\n63#3:644\n360#4,7:636\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall\n*L\n257#1:614\n292#1:615\n303#1:616\n313#1:617,4\n340#1:621\n373#1:622\n401#1:623,4\n405#1:627,4\n407#1:631\n438#1:632,4\n479#1:643\n495#1:644\n441#1:636,7\n*E\n"})
/* loaded from: classes4.dex */
public final class RealCall implements Call, Cloneable, Lockable {

    /* renamed from: c, reason: collision with root package name */
    public final OkHttpClient f22099c;
    public final Request f;
    public final RealConnectionPool g;
    public final EventListener$Companion$NONE$1 h;
    public final RealCall$timeout$1 i;
    public final AtomicBoolean j;
    public Object k;
    public ExchangeFinder l;
    public RealConnection m;
    public boolean n;
    public Exchange o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public volatile boolean u;
    public volatile Exchange v;
    public final CopyOnWriteArrayList w;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RealCall$AsyncCall;", "Ljava/lang/Runnable;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRealCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,612:1\n227#2,9:613\n*S KotlinDebug\n*F\n+ 1 RealCall.kt\nokhttp3/internal/connection/RealCall$AsyncCall\n*L\n570#1:613,9\n*E\n"})
    /* loaded from: classes4.dex */
    public final class AsyncCall implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/connection/RealCall$CallReference;", "Ljava/lang/ref/WeakReference;", "Lokhttp3/internal/connection/RealCall;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class CallReference extends WeakReference<RealCall> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f22100a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CallReference(RealCall referent, Object obj) {
            super(referent);
            Intrinsics.checkNotNullParameter(referent, "referent");
            this.f22100a = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [okio.Timeout, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(OkHttpClient client, Request originalRequest) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(originalRequest, "originalRequest");
        this.f22099c = client;
        this.f = originalRequest;
        this.g = client.A.f22032a;
        client.d.getClass();
        TimeZone timeZone = _UtilJvmKt.f22077a;
        Intrinsics.checkNotNullParameter(this, "it");
        this.h = EventListener.f22044a;
        ?? r4 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public final void k() {
                RealCall call = RealCall.this;
                if (call.u) {
                    return;
                }
                call.u = true;
                Exchange exchange = call.v;
                if (exchange != null) {
                    exchange.d.cancel();
                }
                Iterator it = call.w.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                while (it.hasNext()) {
                    ((RoutePlanner.Plan) it.next()).cancel();
                }
                call.h.getClass();
                Intrinsics.checkNotNullParameter(call, "call");
            }
        };
        r4.g(0, TimeUnit.MILLISECONDS);
        this.i = r4;
        this.j = new AtomicBoolean();
        this.t = true;
        this.w = new CopyOnWriteArrayList();
        new AtomicReference(originalRequest.e);
    }

    public final void a(RealConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        TimeZone timeZone = _UtilJvmKt.f22077a;
        if (this.m == null) {
            this.m = connection;
            connection.t.add(new CallReference(this, this.k));
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final IOException b(IOException iOException) {
        IOException ioe;
        Socket h;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        RealConnection connection = this.m;
        if (connection != null) {
            synchronized (connection) {
                h = h();
            }
            if (this.m == null) {
                if (h != null) {
                    _UtilJvmKt.b(h);
                }
                this.h.e(this, connection);
                Intrinsics.checkNotNullParameter(connection, "connection");
                Intrinsics.checkNotNullParameter(this, "call");
                if (h != null) {
                    Intrinsics.checkNotNullParameter(connection, "connection");
                }
            } else if (h != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (this.n || !i()) {
            ioe = iOException;
        } else {
            ioe = new InterruptedIOException("timeout");
            if (iOException != null) {
                ioe.initCause(iOException);
            }
        }
        if (iOException != null) {
            EventListener$Companion$NONE$1 eventListener$Companion$NONE$1 = this.h;
            Intrinsics.checkNotNull(ioe);
            eventListener$Companion$NONE$1.getClass();
            Intrinsics.checkNotNullParameter(this, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            return ioe;
        }
        this.h.getClass();
        Intrinsics.checkNotNullParameter(this, "call");
        return ioe;
    }

    public final Response c() {
        if (this.j.compareAndSet(false, true)) {
            h();
            Platform platform = Platform.f22173a;
            this.k = Platform.f22173a.h();
            this.h.getClass();
            Intrinsics.checkNotNullParameter(this, "call");
            try {
                Dispatcher dispatcher = this.f22099c.f22056a;
                synchronized (dispatcher) {
                    Intrinsics.checkNotNullParameter(this, "call");
                    dispatcher.d.add(this);
                }
                return e();
            } finally {
                this.f22099c.f22056a.b(this);
            }
        }
        throw new IllegalStateException("Already Executed");
    }

    public final Object clone() {
        return new RealCall(this.f22099c, this.f);
    }

    public final void d(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (this.t) {
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IllegalStateException("released");
            }
        }
        if (z && (exchange = this.v) != null) {
            exchange.d.cancel();
            exchange.f22093a.f(exchange, true, true, true, true, null);
        }
        this.o = null;
    }

    public final Response e() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, this.f22099c.b);
        arrayList.add(new RetryAndFollowUpInterceptor(this.f22099c));
        arrayList.add(new BridgeInterceptor(this.f22099c.j));
        arrayList.add(new Object());
        arrayList.add(ConnectInterceptor.f22090a);
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, this.f22099c.f22057c);
        arrayList.add(CallServerInterceptor.f22114a);
        Request request = this.f;
        OkHttpClient okHttpClient = this.f22099c;
        boolean z = false;
        try {
            try {
                Response b = new RealInterceptorChain(this, arrayList, 0, null, request, okHttpClient.v, okHttpClient.w, okHttpClient.x).b(this.f);
                if (!this.u) {
                    g(null);
                    return b;
                }
                _UtilCommonKt.a(b);
                throw new IOException("Canceled");
            } catch (IOException e) {
                z = true;
                IOException g = g(e);
                Intrinsics.checkNotNull(g, "null cannot be cast to non-null type kotlin.Throwable");
                throw g;
            }
        } catch (Throwable th) {
            if (!z) {
                g(null);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:54:0x0013, B:10:0x002f, B:12:0x0033, B:14:0x0037, B:16:0x003b, B:17:0x003d, B:19:0x0042, B:21:0x0046, B:23:0x004a, B:27:0x0053, B:31:0x005d, B:7:0x001d, B:47:0x0023, B:50:0x0029), top: B:53:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:54:0x0013, B:10:0x002f, B:12:0x0033, B:14:0x0037, B:16:0x003b, B:17:0x003d, B:19:0x0042, B:21:0x0046, B:23:0x004a, B:27:0x0053, B:31:0x005d, B:7:0x001d, B:47:0x0023, B:50:0x0029), top: B:53:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037 A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:54:0x0013, B:10:0x002f, B:12:0x0033, B:14:0x0037, B:16:0x003b, B:17:0x003d, B:19:0x0042, B:21:0x0046, B:23:0x004a, B:27:0x0053, B:31:0x005d, B:7:0x001d, B:47:0x0023, B:50:0x0029), top: B:53:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003b A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:54:0x0013, B:10:0x002f, B:12:0x0033, B:14:0x0037, B:16:0x003b, B:17:0x003d, B:19:0x0042, B:21:0x0046, B:23:0x004a, B:27:0x0053, B:31:0x005d, B:7:0x001d, B:47:0x0023, B:50:0x0029), top: B:53:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.IOException f(okhttp3.internal.connection.Exchange r3, boolean r4, boolean r5, boolean r6, boolean r7, java.io.IOException r8) {
        /*
            r2 = this;
            java.lang.String r0 = "exchange"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            okhttp3.internal.connection.Exchange r0 = r2.v
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)
            if (r3 != 0) goto Lf
            goto L73
        Lf:
            monitor-enter(r2)
            r3 = 0
            if (r4 == 0) goto L1b
            boolean r0 = r2.p     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L2d
            goto L1b
        L18:
            r3 = move-exception
            goto L74
        L1b:
            if (r5 == 0) goto L21
            boolean r0 = r2.q     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L2d
        L21:
            if (r7 == 0) goto L27
            boolean r0 = r2.r     // Catch: java.lang.Throwable -> L18
            if (r0 != 0) goto L2d
        L27:
            if (r6 == 0) goto L5c
            boolean r0 = r2.s     // Catch: java.lang.Throwable -> L18
            if (r0 == 0) goto L5c
        L2d:
            if (r4 == 0) goto L31
            r2.p = r3     // Catch: java.lang.Throwable -> L18
        L31:
            if (r5 == 0) goto L35
            r2.q = r3     // Catch: java.lang.Throwable -> L18
        L35:
            if (r7 == 0) goto L39
            r2.r = r3     // Catch: java.lang.Throwable -> L18
        L39:
            if (r6 == 0) goto L3d
            r2.s = r3     // Catch: java.lang.Throwable -> L18
        L3d:
            boolean r4 = r2.p     // Catch: java.lang.Throwable -> L18
            r5 = 1
            if (r4 != 0) goto L50
            boolean r4 = r2.q     // Catch: java.lang.Throwable -> L18
            if (r4 != 0) goto L50
            boolean r4 = r2.r     // Catch: java.lang.Throwable -> L18
            if (r4 != 0) goto L50
            boolean r4 = r2.s     // Catch: java.lang.Throwable -> L18
            if (r4 != 0) goto L50
            r4 = r5
            goto L51
        L50:
            r4 = r3
        L51:
            if (r4 == 0) goto L58
            boolean r6 = r2.t     // Catch: java.lang.Throwable -> L18
            if (r6 != 0) goto L58
            r3 = r5
        L58:
            r1 = r4
            r4 = r3
            r3 = r1
            goto L5d
        L5c:
            r4 = r3
        L5d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L18
            monitor-exit(r2)
            if (r3 == 0) goto L6c
            r3 = 0
            r2.v = r3
            okhttp3.internal.connection.RealConnection r3 = r2.m
            if (r3 == 0) goto L6c
            r3.f()
        L6c:
            if (r4 == 0) goto L73
            java.io.IOException r3 = r2.b(r8)
            return r3
        L73:
            return r8
        L74:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealCall.f(okhttp3.internal.connection.Exchange, boolean, boolean, boolean, boolean, java.io.IOException):java.io.IOException");
    }

    public final IOException g(IOException iOException) {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.t) {
                    this.t = false;
                    if (!this.p && !this.q && !this.r && !this.s) {
                        z = true;
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            return b(iOException);
        }
        return iOException;
    }

    public final Socket h() {
        RealConnection connection = this.m;
        Intrinsics.checkNotNull(connection);
        TimeZone timeZone = _UtilJvmKt.f22077a;
        ArrayList arrayList = connection.t;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                if (Intrinsics.areEqual(((Reference) obj).get(), this)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            arrayList.remove(i);
            this.m = null;
            if (!arrayList.isEmpty()) {
                return null;
            }
            connection.u = System.nanoTime();
            RealConnectionPool realConnectionPool = this.g;
            ConcurrentLinkedQueue concurrentLinkedQueue = realConnectionPool.d;
            TaskQueue taskQueue = realConnectionPool.b;
            Intrinsics.checkNotNullParameter(connection, "connection");
            TimeZone timeZone2 = _UtilJvmKt.f22077a;
            if (!connection.n) {
                taskQueue.d(realConnectionPool.f22102c, 0L);
                return null;
            }
            connection.n = true;
            concurrentLinkedQueue.remove(connection);
            if (concurrentLinkedQueue.isEmpty()) {
                taskQueue.a();
            }
            return connection.i;
        }
        throw new IllegalStateException("Check failed.");
    }
}
