package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.Connection;
import okhttp3.Handshake;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Http2Writer;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okio.BufferedSource;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/internal/concurrent/Lockable;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,463:1\n63#2:464\n63#2:465\n63#2:466\n55#2,4:467\n55#2,4:474\n49#2,4:478\n63#2:482\n63#2:483\n63#2:484\n1761#3,3:471\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n133#1:464\n141#1:465\n147#1:466\n185#1:467,4\n241#1:474,4\n301#1:478,4\n318#1:482\n337#1:483\n372#1:484\n234#1:471,3\n*E\n"})
/* loaded from: classes4.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier, Lockable {
    public final TaskRunner f;
    public final Route g;
    public final Socket h;
    public final Socket i;
    public final Handshake j;
    public final Protocol k;
    public final BufferedSocket l;
    public Http2Connection m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public int s;
    public final ArrayList t;
    public long u;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "IDLE_CONNECTION_HEALTHY_NS", "J", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public RealConnection(TaskRunner taskRunner, RealConnectionPool connectionPool, Route route, Socket rawSocket, Socket javaNetSocket, Handshake handshake, Protocol protocol, BufferedSocketKt$asBufferedSocket$1 socket) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(rawSocket, "rawSocket");
        Intrinsics.checkNotNullParameter(javaNetSocket, "javaNetSocket");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(socket, "socket");
        ConnectionListener$Companion$NONE$1 connectionListener = ConnectionListener.f22092a;
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        this.f = taskRunner;
        this.g = route;
        this.h = rawSocket;
        this.i = javaNetSocket;
        this.j = handshake;
        this.k = protocol;
        this.l = socket;
        this.s = 1;
        this.t = new ArrayList();
        this.u = LongCompanionObject.MAX_VALUE;
    }

    public static void d(OkHttpClient client, Route failedRoute, IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.b.type() != Proxy.Type.DIRECT) {
            Address address = failedRoute.f22069a;
            address.g.connectFailed(address.h.g(), failedRoute.b.address(), failure);
        }
        RouteDatabase routeDatabase = client.y;
        synchronized (routeDatabase) {
            Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
            routeDatabase.f22106a.add(failedRoute);
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void a(Http2Connection connection, Settings settings) {
        int i;
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this) {
            if ((settings.f22157a & 8) != 0) {
                i = settings.b[3];
            } else {
                i = Integer.MAX_VALUE;
            }
            this.s = i;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void b(RealCall call, IOException iOException) {
        boolean z;
        boolean z2;
        Intrinsics.checkNotNullParameter(call, "call");
        synchronized (this) {
            try {
                z = false;
                if (iOException instanceof StreamResetException) {
                    if (((StreamResetException) iOException).f22158c == ErrorCode.k) {
                        int i = this.r + 1;
                        this.r = i;
                        if (i > 1) {
                            z = !this.n;
                            this.n = true;
                            this.p++;
                        }
                    } else if (((StreamResetException) iOException).f22158c != ErrorCode.l || !call.u) {
                        z = !this.n;
                        this.n = true;
                        this.p++;
                    }
                } else {
                    if (this.m != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2 || (iOException instanceof ConnectionShutdownException)) {
                        z = !this.n;
                        this.n = true;
                        if (this.q == 0) {
                            if (iOException != null) {
                                d(call.f22099c, this.g, iOException);
                            }
                            this.p++;
                        }
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            Intrinsics.checkNotNullParameter(this, "connection");
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void c(Http2Stream stream) {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.e(ErrorCode.k, null);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        _UtilJvmKt.b(this.h);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void e() {
        synchronized (this) {
            this.n = true;
            Unit unit = Unit.INSTANCE;
        }
        Intrinsics.checkNotNullParameter(this, "connection");
    }

    public final void f() {
        synchronized (this) {
            this.q++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
    
        if (okhttp3.internal.tls.OkHostnameVerifier.c(r5, (java.security.cert.X509Certificate) r11) != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(okhttp3.Address r10, java.util.List r11) {
        /*
            r9 = this;
            java.lang.String r0 = "address"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.util.TimeZone r0 = okhttp3.internal._UtilJvmKt.f22077a
            java.util.ArrayList r0 = r9.t
            int r0 = r0.size()
            int r1 = r9.s
            r2 = 0
            if (r0 >= r1) goto Ld4
            boolean r0 = r9.n
            if (r0 == 0) goto L18
            goto Ld4
        L18:
            okhttp3.Route r0 = r9.g
            okhttp3.Address r1 = r0.f22069a
            okhttp3.Address r3 = r0.f22069a
            boolean r1 = r1.a(r10)
            okhttp3.HttpUrl r4 = r10.h
            if (r1 != 0) goto L28
            goto Ld4
        L28:
            java.lang.String r1 = r4.d
            java.lang.String r5 = r4.d
            okhttp3.HttpUrl r6 = r3.h
            java.lang.String r6 = r6.d
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r6)
            r6 = 1
            if (r1 == 0) goto L38
            return r6
        L38:
            okhttp3.internal.http2.Http2Connection r1 = r9.m
            if (r1 != 0) goto L3e
            goto Ld4
        L3e:
            if (r11 == 0) goto Ld4
            boolean r1 = r11.isEmpty()
            if (r1 == 0) goto L48
            goto Ld4
        L48:
            java.util.Iterator r11 = r11.iterator()
        L4c:
            boolean r1 = r11.hasNext()
            if (r1 == 0) goto Ld4
            java.lang.Object r1 = r11.next()
            okhttp3.Route r1 = (okhttp3.Route) r1
            java.net.Proxy r7 = r1.b
            java.net.Proxy$Type r7 = r7.type()
            java.net.Proxy$Type r8 = java.net.Proxy.Type.DIRECT
            if (r7 != r8) goto L4c
            java.net.Proxy r7 = r0.b
            java.net.Proxy$Type r7 = r7.type()
            if (r7 != r8) goto L4c
            java.net.InetSocketAddress r7 = r0.f22070c
            java.net.InetSocketAddress r1 = r1.f22070c
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r1)
            if (r1 == 0) goto L4c
            javax.net.ssl.HostnameVerifier r11 = r10.d
            okhttp3.internal.tls.OkHostnameVerifier r0 = okhttp3.internal.tls.OkHostnameVerifier.f22190a
            if (r11 == r0) goto L7b
            goto Ld4
        L7b:
            java.util.TimeZone r11 = okhttp3.internal._UtilJvmKt.f22077a
            okhttp3.HttpUrl r11 = r3.h
            int r0 = r4.e
            int r1 = r11.e
            if (r0 == r1) goto L86
            goto Ld4
        L86:
            java.lang.String r11 = r11.d
            boolean r11 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r11)
            okhttp3.Handshake r0 = r9.j
            if (r11 == 0) goto L91
            goto Lb2
        L91:
            boolean r11 = r9.o
            if (r11 != 0) goto Ld4
            if (r0 == 0) goto Ld4
            java.util.List r11 = r0.a()
            boolean r1 = r11.isEmpty()
            if (r1 != 0) goto Ld4
            java.lang.Object r11 = r11.get(r2)
            java.lang.String r1 = "null cannot be cast to non-null type java.security.cert.X509Certificate"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r11, r1)
            java.security.cert.X509Certificate r11 = (java.security.cert.X509Certificate) r11
            boolean r11 = okhttp3.internal.tls.OkHostnameVerifier.c(r5, r11)
            if (r11 == 0) goto Ld4
        Lb2:
            okhttp3.CertificatePinner r10 = r10.e     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            kotlin.jvm.internal.Intrinsics.checkNotNull(r10)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.util.List r11 = r0.a()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r10.getClass()     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.lang.String r0 = "hostname"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            java.lang.String r0 = "peerCertificates"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            okhttp3.a r0 = new okhttp3.a     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r0.<init>(r10, r11, r5, r2)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            r10.a(r5, r0)     // Catch: javax.net.ssl.SSLPeerUnverifiedException -> Ld4
            return r6
        Ld4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.g(okhttp3.Address, java.util.List):boolean");
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* renamed from: getRoute, reason: from getter */
    public final Route getG() {
        return this.g;
    }

    public final boolean h(boolean z) {
        long j;
        TimeZone timeZone = _UtilJvmKt.f22077a;
        long nanoTime = System.nanoTime();
        if (this.h.isClosed() || this.i.isClosed() || this.i.isInputShutdown() || this.i.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.m;
        if (http2Connection != null) {
            return http2Connection.d(nanoTime);
        }
        synchronized (this) {
            j = nanoTime - this.u;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        Socket socket = this.i;
        BufferedSource source = this.l.a();
        Intrinsics.checkNotNullParameter(socket, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !source.D();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final void i() {
        FlowControlListener flowControlListener;
        int i;
        this.u = System.nanoTime();
        Protocol protocol = this.k;
        if (protocol != Protocol.j && protocol != Protocol.k) {
            return;
        }
        this.i.setSoTimeout(0);
        Object obj = ConnectionListener.f22092a;
        if (obj instanceof FlowControlListener) {
            flowControlListener = (FlowControlListener) obj;
        } else {
            flowControlListener = null;
        }
        if (flowControlListener == null) {
            flowControlListener = FlowControlListener.None.f22129a;
        }
        Http2Connection.Builder builder = new Http2Connection.Builder(this.f);
        BufferedSocket socket = this.l;
        String peerName = this.g.f22069a.h.d;
        Intrinsics.checkNotNullParameter(socket, "socket");
        Intrinsics.checkNotNullParameter(peerName, "peerName");
        Intrinsics.checkNotNullParameter(socket, "<set-?>");
        builder.b = socket;
        String str = _UtilJvmKt.b + ' ' + peerName;
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        builder.f22141c = str;
        Intrinsics.checkNotNullParameter(this, "listener");
        builder.d = this;
        Intrinsics.checkNotNullParameter(flowControlListener, "flowControlListener");
        builder.f = flowControlListener;
        Http2Connection http2Connection = new Http2Connection(builder);
        this.m = http2Connection;
        Settings settings = Http2Connection.D;
        if ((settings.f22157a & 8) != 0) {
            i = settings.b[3];
        } else {
            i = Integer.MAX_VALUE;
        }
        this.s = i;
        Http2Writer http2Writer = http2Connection.A;
        synchronized (http2Writer) {
            try {
                if (!http2Writer.h) {
                    Logger logger = Http2Writer.j;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(_UtilJvmKt.c(">> CONNECTION " + Http2.f22137a.e(), new Object[0]));
                    }
                    http2Writer.f22151c.r0(Http2.f22137a);
                    http2Writer.f22151c.flush();
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IOException("closed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        http2Connection.A.k(http2Connection.u);
        if (http2Connection.u.a() != 65535) {
            http2Connection.A.l(0, r2 - 65535);
        }
        TaskQueue.c(http2Connection.k.d(), http2Connection.g, http2Connection.B, 6);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        Route route = this.g;
        sb.append(route.f22069a.h.d);
        sb.append(':');
        sb.append(route.f22069a.h.e);
        sb.append(", proxy=");
        sb.append(route.b);
        sb.append(" hostAddress=");
        sb.append(route.f22070c);
        sb.append(" cipherSuite=");
        Handshake handshake = this.j;
        if (handshake == null || (obj = handshake.b) == null) {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.k);
        sb.append('}');
        return sb.toString();
    }
}
