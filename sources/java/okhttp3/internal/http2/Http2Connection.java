package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.ByteString;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "Lokhttp3/internal/concurrent/Lockable;", "Builder", "ReaderRunnable", "Listener", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1042:1\n63#2:1043\n63#2:1044\n63#2:1045\n38#2:1046\n63#2:1047\n63#2:1049\n63#2:1050\n63#2:1051\n34#2:1052\n63#2:1053\n63#2:1054\n34#2:1055\n63#2:1056\n63#2:1057\n49#2,4:1058\n63#2:1067\n63#2:1087\n63#2:1088\n63#2:1089\n63#2:1090\n63#2:1091\n63#2:1092\n63#2:1095\n63#2:1101\n63#2:1107\n63#2:1111\n1#3:1048\n228#4,5:1062\n228#4,5:1071\n228#4,5:1077\n228#4,5:1082\n228#4,2:1093\n230#4,3:1096\n228#4,2:1099\n230#4,3:1102\n228#4,2:1105\n230#4,3:1108\n37#5,2:1068\n13805#6:1070\n13806#6:1076\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n174#1:1043\n176#1:1044\n179#1:1045\n183#1:1046\n190#1:1047\n242#1:1049\n243#1:1050\n313#1:1051\n321#1:1052\n394#1:1053\n405#1:1054\n407#1:1055\n424#1:1056\n426#1:1057\n452#1:1058,4\n459#1:1067\n519#1:1087\n520#1:1088\n531#1:1089\n557#1:1090\n914#1:1091\n152#1:1092\n926#1:1095\n944#1:1101\n971#1:1107\n985#1:1111\n454#1:1062,5\n467#1:1071,5\n473#1:1077,5\n478#1:1082,5\n923#1:1093,2\n923#1:1096,3\n941#1:1099,2\n941#1:1102,3\n967#1:1105,2\n967#1:1108,3\n461#1:1068,2\n466#1:1070\n466#1:1076\n*E\n"})
/* loaded from: classes4.dex */
public final class Http2Connection implements Closeable, Lockable {
    public static final Settings D;
    public final Http2Writer A;
    public final ReaderRunnable B;
    public final LinkedHashSet C;

    /* renamed from: c, reason: collision with root package name */
    public final Listener f22139c;
    public final LinkedHashMap f;
    public final String g;
    public int h;
    public int i;
    public boolean j;
    public final TaskRunner k;
    public final TaskQueue l;
    public final TaskQueue m;
    public final TaskQueue n;
    public final PushObserver o;
    public long p;
    public long q;
    public long r;
    public long s;
    public final FlowControlListener t;
    public final Settings u;
    public Settings v;
    public final WindowCounter w;
    public long x;
    public long y;
    public final BufferedSocket z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final TaskRunner f22140a;
        public BufferedSocket b;

        /* renamed from: c, reason: collision with root package name */
        public String f22141c;
        public Listener d;
        public final PushObserver e;
        public FlowControlListener f;

        public Builder(TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.f22140a = taskRunner;
            this.d = Listener.f22142c;
            this.e = PushObserver.f22156a;
            this.f = FlowControlListener.None.f22129a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "OKHTTP_CLIENT_WINDOW_SIZE", "I", "INTERVAL_PING", "DEGRADED_PING", "AWAIT_PING", "DEGRADED_PONG_TIMEOUT_NS", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static abstract class Listener {

        /* renamed from: c, reason: collision with root package name */
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 f22142c = new Object();

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/internal/http2/Http2Connection$Listener;", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
        }

        public void a(Http2Connection connection, Settings settings) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void c(Http2Stream http2Stream);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp2Connection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n*L\n1#1,1042:1\n63#2:1043\n63#2:1044\n63#2:1045\n63#2:1048\n63#2:1049\n38#2:1050\n63#2:1051\n63#2:1054\n38#2:1055\n63#2:1056\n37#3,2:1046\n37#3,2:1052\n228#4,5:1057\n*S KotlinDebug\n*F\n+ 1 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n678#1:1043\n757#1:1044\n758#1:1045\n792#1:1048\n809#1:1049\n819#1:1050\n845#1:1051\n864#1:1054\n866#1:1055\n871#1:1056\n775#1:1046,2\n846#1:1052,2\n703#1:1057,5\n*E\n"})
    /* loaded from: classes4.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {

        /* renamed from: c, reason: collision with root package name */
        public final Http2Reader f22143c;
        public final /* synthetic */ Http2Connection f;

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.f = http2Connection;
            this.f22143c = reader;
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x0103, code lost:
        
            if (r20 == false) goto L67;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0105, code lost:
        
            r2.k(okhttp3.Headers.f, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x010a, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        
            return;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [okio.Buffer, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(final boolean r20, final int r21, okio.BufferedSource r22, final int r23) {
            /*
                Method dump skipped, instructions count: 267
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.a(boolean, int, okio.BufferedSource, int):void");
        }

        public final void b(int i, ErrorCode errorCode, ByteString debugData) {
            int i2;
            Object[] array;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            debugData.d();
            Http2Connection http2Connection = this.f;
            synchronized (http2Connection) {
                array = http2Connection.f.values().toArray(new Http2Stream[0]);
                http2Connection.j = true;
                Unit unit = Unit.INSTANCE;
            }
            for (Http2Stream http2Stream : (Http2Stream[]) array) {
                if (http2Stream.f22148c > i && http2Stream.i()) {
                    http2Stream.l(ErrorCode.k);
                    this.f.e(http2Stream.f22148c);
                }
            }
        }

        public final void c(int i, List requestHeaders, boolean z) {
            Intrinsics.checkNotNullParameter(requestHeaders, "headerBlock");
            Http2Connection http2Connection = this.f;
            Settings settings = Http2Connection.D;
            if (i != 0 && (i & 1) == 0) {
                Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
                TaskQueue.c(http2Connection.m, http2Connection.g + '[' + i + "] onHeaders", new c(http2Connection, i, requestHeaders, z), 6);
                return;
            }
            synchronized (http2Connection) {
                Http2Stream b = http2Connection.b(i);
                if (b == null) {
                    if (http2Connection.j) {
                        return;
                    }
                    if (i <= http2Connection.h) {
                        return;
                    }
                    if (i % 2 == http2Connection.i % 2) {
                        return;
                    }
                    Http2Stream http2Stream = new Http2Stream(i, http2Connection, false, z, _UtilJvmKt.f(requestHeaders));
                    http2Connection.h = i;
                    http2Connection.f.put(Integer.valueOf(i), http2Stream);
                    TaskQueue.c(http2Connection.k.d(), http2Connection.g + '[' + i + "] onStream", new g(0, http2Connection, http2Stream), 6);
                    return;
                }
                Unit unit = Unit.INSTANCE;
                b.k(_UtilJvmKt.f(requestHeaders), z);
            }
        }

        public final void d(final int i, final int i2, boolean z) {
            if (z) {
                Http2Connection http2Connection = this.f;
                synchronized (http2Connection) {
                    try {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    Intrinsics.checkNotNull(http2Connection, "null cannot be cast to non-null type java.lang.Object");
                                    http2Connection.notifyAll();
                                }
                                Unit unit = Unit.INSTANCE;
                            } else {
                                http2Connection.r++;
                            }
                        } else {
                            http2Connection.p++;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
            TaskQueue taskQueue = this.f.l;
            String p = android.support.v4.media.a.p(new StringBuilder(), this.f.g, " ping");
            final Http2Connection http2Connection2 = this.f;
            TaskQueue.c(taskQueue, p, new Function0() { // from class: okhttp3.internal.http2.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Http2Connection http2Connection3 = Http2Connection.this;
                    try {
                        http2Connection3.A.i(i, i2, true);
                    } catch (IOException e) {
                        ErrorCode errorCode = ErrorCode.h;
                        http2Connection3.a(errorCode, errorCode, e);
                    }
                    return Unit.INSTANCE;
                }
            }, 6);
        }

        public final void e(int i, List requestHeaders) {
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            Http2Connection http2Connection = this.f;
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            synchronized (http2Connection) {
                if (http2Connection.C.contains(Integer.valueOf(i))) {
                    http2Connection.k(i, ErrorCode.h);
                    return;
                }
                http2Connection.C.add(Integer.valueOf(i));
                TaskQueue.c(http2Connection.m, http2Connection.g + '[' + i + "] onRequest", new c(http2Connection, i, requestHeaders), 6);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public final Unit invoke() {
            ErrorCode errorCode;
            Throwable th;
            Http2Connection http2Connection = this.f;
            Http2Reader http2Reader = this.f22143c;
            ErrorCode errorCode2 = ErrorCode.i;
            IOException e = null;
            try {
                try {
                    Intrinsics.checkNotNullParameter(this, "handler");
                    if (!http2Reader.a(true, this)) {
                        throw new IOException("Required SETTINGS preface not received");
                    }
                    do {
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                            errorCode = errorCode2;
                            http2Connection.a(errorCode, errorCode2, e);
                            _UtilCommonKt.a(http2Reader);
                            throw th;
                        }
                    } while (http2Reader.a(false, this));
                    errorCode = ErrorCode.g;
                    try {
                        try {
                            http2Connection.a(errorCode, ErrorCode.l, null);
                        } catch (IOException e2) {
                            e = e2;
                            ErrorCode errorCode3 = ErrorCode.h;
                            http2Connection.a(errorCode3, errorCode3, e);
                            _UtilCommonKt.a(http2Reader);
                            return Unit.INSTANCE;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        http2Connection.a(errorCode, errorCode2, e);
                        _UtilCommonKt.a(http2Reader);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (IOException e3) {
                e = e3;
                errorCode = errorCode2;
            }
            _UtilCommonKt.a(http2Reader);
            return Unit.INSTANCE;
        }
    }

    static {
        Settings settings = new Settings();
        settings.c(4, 65535);
        settings.c(5, 16384);
        D = settings;
    }

    public Http2Connection(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f22139c = builder.d;
        this.f = new LinkedHashMap();
        String str = builder.f22141c;
        BufferedSocket bufferedSocket = null;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            str = null;
        }
        this.g = str;
        this.i = 3;
        TaskRunner taskRunner = builder.f22140a;
        this.k = taskRunner;
        this.l = taskRunner.d();
        this.m = taskRunner.d();
        this.n = taskRunner.d();
        this.o = PushObserver.f22156a;
        this.t = builder.f;
        Settings settings = new Settings();
        settings.c(4, 16777216);
        this.u = settings;
        this.v = D;
        this.w = new WindowCounter(0);
        this.y = r0.a();
        BufferedSocket bufferedSocket2 = builder.b;
        if (bufferedSocket2 != null) {
            bufferedSocket = bufferedSocket2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
        }
        this.z = bufferedSocket;
        this.A = new Http2Writer(bufferedSocket.b());
        this.B = new ReaderRunnable(this, new Http2Reader(bufferedSocket.a()));
        this.C = new LinkedHashSet();
    }

    public final void a(ErrorCode connectionCode, ErrorCode streamCode, IOException iOException) {
        int i;
        Object[] objArr;
        Intrinsics.checkNotNullParameter(connectionCode, "connectionCode");
        Intrinsics.checkNotNullParameter(streamCode, "streamCode");
        TimeZone timeZone = _UtilJvmKt.f22077a;
        try {
            f(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (!this.f.isEmpty()) {
                    objArr = this.f.values().toArray(new Http2Stream[0]);
                    this.f.clear();
                } else {
                    objArr = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.e(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.A.close();
        } catch (IOException unused3) {
        }
        try {
            this.z.cancel();
        } catch (IOException unused4) {
        }
        this.l.f();
        this.m.f();
        this.n.f();
    }

    public final Http2Stream b(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.f.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(ErrorCode.g, ErrorCode.l, null);
    }

    public final boolean d(long j) {
        synchronized (this) {
            if (this.j) {
                return false;
            }
            if (this.r < this.q) {
                if (j >= this.s) {
                    return false;
                }
            }
            return true;
        }
    }

    public final Http2Stream e(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.f.remove(Integer.valueOf(i));
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
        return http2Stream;
    }

    public final void f(ErrorCode statusCode) {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        synchronized (this.A) {
            synchronized (this) {
                if (this.j) {
                    return;
                }
                this.j = true;
                int i = this.h;
                Unit unit = Unit.INSTANCE;
                this.A.e(i, statusCode, _UtilCommonKt.f22076a);
            }
        }
    }

    public final void flush() {
        this.A.flush();
    }

    public final void i(long j) {
        synchronized (this) {
            try {
                WindowCounter.b(this.w, j, 0L, 2);
                long a2 = this.w.a();
                if (a2 >= this.u.a() / 2) {
                    l(0, a2);
                    WindowCounter.b(this.w, 0L, a2, 1);
                }
                this.t.b(this.w);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.A.g);
        r6 = r2;
        r8.x += r6;
        r4 = kotlin.Unit.INSTANCE;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(int r9, boolean r10, okio.Buffer r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r12 = r8.A
            r12.b(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L6f
            monitor-enter(r8)
        L12:
            long r4 = r8.x     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            long r6 = r8.y     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L39
            java.util.LinkedHashMap r2 = r8.f     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            if (r2 == 0) goto L31
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r2)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            r8.wait()     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            goto L12
        L2f:
            r9 = move-exception
            goto L6d
        L31:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
            throw r9     // Catch: java.lang.Throwable -> L2f java.lang.InterruptedException -> L60
        L39:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2f
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2f
            okhttp3.internal.http2.Http2Writer r4 = r8.A     // Catch: java.lang.Throwable -> L2f
            int r4 = r4.g     // Catch: java.lang.Throwable -> L2f
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2f
            long r4 = r8.x     // Catch: java.lang.Throwable -> L2f
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2f
            long r4 = r4 + r6
            r8.x = r4     // Catch: java.lang.Throwable -> L2f
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r8)
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.A
            if (r10 == 0) goto L5b
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L5b
            r5 = 1
            goto L5c
        L5b:
            r5 = r3
        L5c:
            r4.b(r5, r9, r11, r2)
            goto Ld
        L60:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2f
            r9.interrupt()     // Catch: java.lang.Throwable -> L2f
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2f
            r9.<init>()     // Catch: java.lang.Throwable -> L2f
            throw r9     // Catch: java.lang.Throwable -> L2f
        L6d:
            monitor-exit(r8)
            throw r9
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.j(int, boolean, okio.Buffer, long):void");
    }

    public final void k(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        TaskQueue.c(this.l, this.g + '[' + i + "] writeSynReset", new d(this, i, errorCode, 1), 6);
    }

    public final void l(final int i, final long j) {
        TaskQueue.c(this.l, this.g + '[' + i + "] windowUpdate", new Function0() { // from class: okhttp3.internal.http2.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Http2Connection http2Connection = Http2Connection.this;
                int i2 = i;
                long j2 = j;
                Settings settings = Http2Connection.D;
                try {
                    http2Connection.A.l(i2, j2);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.h;
                    http2Connection.a(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
            }
        }, 6);
    }
}
