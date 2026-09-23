package okhttp3.internal.http2;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.flowcontrol.WindowCounter;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0004\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/http2/Http2Stream;", "Lokhttp3/internal/concurrent/Lockable;", "Lokio/Socket;", "FramingSource", "FramingSink", "Companion", "StreamTimeout", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,743:1\n1#2:744\n63#3:745\n63#3:746\n63#3:747\n63#3:748\n63#3:749\n49#3,4:750\n63#3:754\n38#3:755\n63#3:756\n63#3:757\n49#3,4:758\n63#3:762\n38#3:763\n49#3,4:764\n49#3,4:768\n63#3:772\n38#3:773\n63#3:774\n38#3:775\n49#3,4:776\n63#3:780\n38#3:781\n34#3:782\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream\n*L\n89#1:745\n114#1:746\n136#1:747\n149#1:748\n175#1:749\n200#1:750,4\n203#1:754\n207#1:755\n214#1:756\n227#1:757\n272#1:758,4\n274#1:762\n280#1:763\n294#1:764,4\n304#1:768,4\n307#1:772\n321#1:773\n329#1:774\n332#1:775\n543#1:776,4\n547#1:780\n693#1:781\n713#1:782\n*E\n"})
/* loaded from: classes4.dex */
public final class Http2Stream implements Lockable, Socket {

    /* renamed from: c, reason: collision with root package name */
    public final int f22148c;
    public final Http2Connection f;
    public final WindowCounter g;
    public long h;
    public long i;
    public final ArrayDeque j;
    public boolean k;
    public final FramingSource l;
    public final FramingSink m;
    public final StreamTimeout n;
    public final StreamTimeout o;
    public ErrorCode p;
    public IOException q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "EMIT_BUFFER_SIZE", "J", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokio/Sink;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,743:1\n49#2,4:744\n63#2:748\n49#2,4:749\n63#2:753\n49#2,4:754\n63#2:758\n63#2:759\n38#2:760\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSink\n*L\n582#1:744,4\n598#1:748\n628#1:749,4\n630#1:753\n644#1:754,4\n647#1:758\n676#1:759\n678#1:760\n*E\n"})
    /* loaded from: classes4.dex */
    public final class FramingSink implements Sink {

        /* renamed from: c, reason: collision with root package name */
        public final boolean f22149c;
        public final Buffer f = new Object();
        public boolean g;

        /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
        public FramingSink(boolean z) {
            this.f22149c = z;
        }

        @Override // okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            TimeZone timeZone = _UtilJvmKt.f22077a;
            Buffer buffer = this.f;
            buffer.U(j, source);
            while (buffer.f >= PlaybackStateCompat.ACTION_PREPARE) {
                a(false);
            }
        }

        /* JADX WARN: Finally extract failed */
        public final void a(boolean z) {
            long min;
            boolean z2;
            boolean z3;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                try {
                    http2Stream.o.h();
                    while (http2Stream.h >= http2Stream.i && !this.f22149c && !this.g && http2Stream.h() == null) {
                        try {
                            http2Stream.m();
                        } catch (Throwable th) {
                            http2Stream.o.l();
                            throw th;
                        }
                    }
                    http2Stream.o.l();
                    http2Stream.d();
                    min = Math.min(http2Stream.i - http2Stream.h, this.f.f);
                    http2Stream.h += min;
                    if (z && min == this.f.f) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 = z2;
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            Http2Stream.this.o.h();
            try {
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.f.j(http2Stream2.f22148c, z3, this.f, min);
            } finally {
                Http2Stream.this.o.l();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.f22077a;
            synchronized (http2Stream) {
                if (this.g) {
                    return;
                }
                if (http2Stream.h() == null) {
                    z = true;
                } else {
                    z = false;
                }
                Unit unit = Unit.INSTANCE;
                Http2Stream http2Stream2 = Http2Stream.this;
                if (!http2Stream2.m.f22149c) {
                    if (this.f.f > 0) {
                        while (this.f.f > 0) {
                            a(true);
                        }
                    } else if (z) {
                        http2Stream2.f.j(http2Stream2.f22148c, true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.g = true;
                    Intrinsics.checkNotNull(http2Stream3, "null cannot be cast to non-null type java.lang.Object");
                    http2Stream3.notifyAll();
                    Unit unit2 = Unit.INSTANCE;
                }
                Http2Stream.this.f.flush();
                Http2Stream.this.c();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.f22077a;
            synchronized (http2Stream) {
                http2Stream.d();
                Unit unit = Unit.INSTANCE;
            }
            while (this.f.f > 0) {
                a(false);
                Http2Stream.this.f.flush();
            }
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return Http2Stream.this.o;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokio/Source;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp2Stream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,743:1\n1#2:744\n63#3:745\n49#3,4:746\n49#3,4:750\n63#3:754\n63#3:755\n38#3:756\n63#3:757\n38#3:758\n*S KotlinDebug\n*F\n+ 1 Http2Stream.kt\nokhttp3/internal/http2/Http2Stream$FramingSource\n*L\n390#1:745\n453#1:746,4\n467#1:750,4\n474#1:754\n500#1:755\n507#1:756\n528#1:757\n532#1:758\n*E\n"})
    /* loaded from: classes4.dex */
    public final class FramingSource implements Source {

        /* renamed from: c, reason: collision with root package name */
        public final long f22150c;
        public boolean f;
        public final Buffer g = new Object();
        public final Buffer h = new Object();
        public boolean i;

        /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v2, types: [okio.Buffer, java.lang.Object] */
        public FramingSource(long j, boolean z) {
            this.f22150c = j;
            this.f = z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.i = true;
                Buffer buffer = this.h;
                j = buffer.f;
                buffer.a();
                Intrinsics.checkNotNull(http2Stream, "null cannot be cast to non-null type java.lang.Object");
                http2Stream.notifyAll();
                Unit unit = Unit.INSTANCE;
            }
            if (j > 0) {
                Http2Stream http2Stream2 = Http2Stream.this;
                TimeZone timeZone = _UtilJvmKt.f22077a;
                http2Stream2.f.i(j);
            }
            Http2Stream.this.c();
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0014, B:8:0x0021, B:13:0x002b, B:33:0x00b1, B:34:0x00b6, B:61:0x00db, B:62:0x00e0, B:15:0x0034, B:17:0x003a, B:19:0x003e, B:21:0x0042, B:22:0x0053, B:24:0x0057, B:26:0x0061, B:28:0x007c, B:30:0x008b, B:47:0x00a1, B:50:0x00a7, B:54:0x00d1, B:55:0x00d8), top: B:5:0x0014, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0057 A[Catch: all -> 0x004f, TryCatch #1 {all -> 0x004f, blocks: (B:15:0x0034, B:17:0x003a, B:19:0x003e, B:21:0x0042, B:22:0x0053, B:24:0x0057, B:26:0x0061, B:28:0x007c, B:30:0x008b, B:47:0x00a1, B:50:0x00a7, B:54:0x00d1, B:55:0x00d8), top: B:14:0x0034, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00d1 A[SYNTHETIC] */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long p0(long r27, okio.Buffer r29) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSource.p0(long, okio.Buffer):long");
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public final Timeout getF() {
            return Http2Stream.this.n;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokio/AsyncTimeout;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        public final IOException j(IOException iOException) {
            return new SocketTimeoutException("timeout");
        }

        @Override // okio.AsyncTimeout
        public final void k() {
            Http2Stream.this.g(ErrorCode.l);
            Http2Connection http2Connection = Http2Stream.this.f;
            synchronized (http2Connection) {
                long j = http2Connection.r;
                long j2 = http2Connection.q;
                if (j < j2) {
                    return;
                }
                http2Connection.q = j2 + 1;
                http2Connection.s = System.nanoTime() + InstantKt.NANOS_PER_SECOND;
                Unit unit = Unit.INSTANCE;
                TaskQueue.c(http2Connection.l, android.support.v4.media.a.p(new StringBuilder(), http2Connection.g, " ping"), new kotlin.time.a(4, http2Connection), 6);
            }
        }

        public final void l() {
            if (!i()) {
            } else {
                throw j(null);
            }
        }
    }

    public Http2Stream(int i, Http2Connection connection, boolean z, boolean z2, Headers headers) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.f22148c = i;
        this.f = connection;
        this.g = new WindowCounter(i);
        this.i = connection.v.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.j = arrayDeque;
        this.l = new FramingSource(connection.u.a(), z2);
        this.m = new FramingSink(z);
        this.n = new StreamTimeout();
        this.o = new StreamTimeout();
        if (headers != null) {
            if (!i()) {
                arrayDeque.add(headers);
                return;
            }
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (i()) {
        } else {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    @Override // okio.Socket
    public final Source a() {
        return this.l;
    }

    @Override // okio.Socket
    public final Sink b() {
        return this.m;
    }

    public final void c() {
        boolean z;
        boolean j;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        synchronized (this) {
            try {
                FramingSource framingSource = this.l;
                if (!framingSource.f && framingSource.i) {
                    FramingSink framingSink = this.m;
                    if (!framingSink.f22149c) {
                        if (framingSink.g) {
                        }
                    }
                    z = true;
                    j = j();
                    Unit unit = Unit.INSTANCE;
                }
                z = false;
                j = j();
                Unit unit2 = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            e(ErrorCode.l, null);
        } else if (!j) {
            this.f.e(this.f22148c);
        }
    }

    @Override // okio.Socket
    public final void cancel() {
        g(ErrorCode.l);
    }

    public final void d() {
        FramingSink framingSink = this.m;
        if (!framingSink.g) {
            if (!framingSink.f22149c) {
                if (h() != null) {
                    IOException iOException = this.q;
                    if (iOException == null) {
                        ErrorCode h = h();
                        Intrinsics.checkNotNull(h);
                        throw new StreamResetException(h);
                    }
                    throw iOException;
                }
                return;
            }
            throw new IOException("stream finished");
        }
        throw new IOException("stream closed");
    }

    public final void e(ErrorCode statusCode, IOException iOException) {
        Intrinsics.checkNotNullParameter(statusCode, "rstStatusCode");
        if (!f(statusCode, iOException)) {
            return;
        }
        Http2Connection http2Connection = this.f;
        http2Connection.getClass();
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        http2Connection.A.j(this.f22148c, statusCode);
    }

    public final boolean f(ErrorCode errorCode, IOException iOException) {
        TimeZone timeZone = _UtilJvmKt.f22077a;
        synchronized (this) {
            if (h() != null) {
                return false;
            }
            this.p = errorCode;
            this.q = iOException;
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
            if (this.l.f && this.m.f22149c) {
                return false;
            }
            Unit unit = Unit.INSTANCE;
            this.f.e(this.f22148c);
            return true;
        }
    }

    public final void g(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (!f(errorCode, null)) {
            return;
        }
        this.f.k(this.f22148c, errorCode);
    }

    public final ErrorCode h() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.p;
        }
        return errorCode;
    }

    public final boolean i() {
        boolean z;
        if ((this.f22148c & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        this.f.getClass();
        if (true == z) {
            return true;
        }
        return false;
    }

    public final boolean j() {
        synchronized (this) {
            try {
                if (h() != null) {
                    return false;
                }
                FramingSource framingSource = this.l;
                if (!framingSource.f) {
                    if (framingSource.i) {
                    }
                    return true;
                }
                FramingSink framingSink = this.m;
                if (framingSink.f22149c || framingSink.g) {
                    if (this.k) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:4:0x0008, B:6:0x000d, B:8:0x0015, B:11:0x001e, B:13:0x002f, B:14:0x0033, B:22:0x0026), top: B:3:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(okhttp3.Headers r3, boolean r4) {
        /*
            r2 = this;
            java.lang.String r0 = "headers"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.util.TimeZone r0 = okhttp3.internal._UtilJvmKt.f22077a
            monitor-enter(r2)
            boolean r0 = r2.k     // Catch: java.lang.Throwable -> L24
            r1 = 1
            if (r0 == 0) goto L26
            java.lang.String r0 = ":status"
            java.lang.String r0 = r3.a(r0)     // Catch: java.lang.Throwable -> L24
            if (r0 != 0) goto L26
            java.lang.String r0 = ":method"
            java.lang.String r0 = r3.a(r0)     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L1e
            goto L26
        L1e:
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.l     // Catch: java.lang.Throwable -> L24
            r3.getClass()     // Catch: java.lang.Throwable -> L24
            goto L2d
        L24:
            r3 = move-exception
            goto L4c
        L26:
            r2.k = r1     // Catch: java.lang.Throwable -> L24
            java.util.ArrayDeque r0 = r2.j     // Catch: java.lang.Throwable -> L24
            r0.add(r3)     // Catch: java.lang.Throwable -> L24
        L2d:
            if (r4 == 0) goto L33
            okhttp3.internal.http2.Http2Stream$FramingSource r3 = r2.l     // Catch: java.lang.Throwable -> L24
            r3.f = r1     // Catch: java.lang.Throwable -> L24
        L33:
            boolean r3 = r2.j()     // Catch: java.lang.Throwable -> L24
            java.lang.String r4 = "null cannot be cast to non-null type java.lang.Object"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r4)     // Catch: java.lang.Throwable -> L24
            r2.notifyAll()     // Catch: java.lang.Throwable -> L24
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L24
            monitor-exit(r2)
            if (r3 != 0) goto L4b
            okhttp3.internal.http2.Http2Connection r3 = r2.f
            int r4 = r2.f22148c
            r3.e(r4)
        L4b:
            return
        L4c:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.k(okhttp3.Headers, boolean):void");
    }

    public final void l(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        synchronized (this) {
            try {
                if (h() == null) {
                    this.p = errorCode;
                    Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                    notifyAll();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m() {
        try {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
