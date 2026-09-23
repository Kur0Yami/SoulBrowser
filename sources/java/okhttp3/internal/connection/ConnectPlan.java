package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Route;
import okhttp3.a;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.internal.DefaultSocket;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/connection/ConnectPlan;", "Lokhttp3/internal/connection/RoutePlanner$Plan;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectPlan.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectPlan.kt\nokhttp3/internal/connection/ConnectPlan\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,564:1\n1#2:565\n63#3:566\n1563#4:567\n1634#4,3:568\n*S KotlinDebug\n*F\n+ 1 ConnectPlan.kt\nokhttp3/internal/connection/ConnectPlan\n*L\n508#1:566\n393#1:567\n393#1:568,3\n*E\n"})
/* loaded from: classes4.dex */
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {

    /* renamed from: c, reason: collision with root package name */
    public final TaskRunner f22091c;
    public final RealConnectionPool f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final boolean k;
    public final RealCall l;
    public final RealRoutePlanner m;
    public final Route n;
    public final List o;
    public final int p;
    public final Request q;
    public final int r;
    public final boolean s;
    public volatile boolean t;
    public Socket u;
    public Socket v;
    public Handshake w;
    public Protocol x;
    public BufferedSocketKt$asBufferedSocket$1 y;
    public RealConnection z;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/connection/ConnectPlan$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "NPE_THROW_WITH_NULL", "Ljava/lang/String;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MAX_TUNNEL_ATTEMPTS", "I", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ConnectPlan(TaskRunner taskRunner, RealConnectionPool connectionPool, int i, int i2, int i3, int i4, boolean z, RealCall call, RealRoutePlanner routePlanner, Route route, List list, int i5, Request request, int i6, boolean z2) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(route, "route");
        this.f22091c = taskRunner;
        this.f = connectionPool;
        this.g = i;
        this.h = i2;
        this.i = i3;
        this.j = i4;
        this.k = z;
        this.l = call;
        this.m = routePlanner;
        this.n = route;
        this.o = list;
        this.p = i5;
        this.q = request;
        this.r = i6;
        this.s = z2;
    }

    public static ConnectPlan j(ConnectPlan connectPlan, int i, Request request, int i2, boolean z, int i3) {
        int i4;
        Request request2;
        int i5;
        boolean z2;
        if ((i3 & 1) != 0) {
            i4 = connectPlan.p;
        } else {
            i4 = i;
        }
        if ((i3 & 2) != 0) {
            request2 = connectPlan.q;
        } else {
            request2 = request;
        }
        if ((i3 & 4) != 0) {
            i5 = connectPlan.r;
        } else {
            i5 = i2;
        }
        if ((i3 & 8) != 0) {
            z2 = connectPlan.s;
        } else {
            z2 = z;
        }
        return new ConnectPlan(connectPlan.f22091c, connectPlan.f, connectPlan.g, connectPlan.h, connectPlan.i, connectPlan.j, connectPlan.k, connectPlan.l, connectPlan.m, connectPlan.n, connectPlan.o, i4, request2, i5, z2);
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.Plan a() {
        return new ConnectPlan(this.f22091c, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s);
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void b(RealCall call, IOException iOException) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* renamed from: c */
    public final RealConnection getF22105c() {
        this.l.f22099c.y.a(this.n);
        RealConnection connection = this.z;
        Intrinsics.checkNotNull(connection);
        connection.getClass();
        Route route = this.n;
        RealCall call = this.l;
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(route, "route");
        Intrinsics.checkNotNullParameter(call, "call");
        ReusePlan g = this.m.g(this, this.o);
        if (g != null) {
            return g.f22105c;
        }
        synchronized (connection) {
            RealConnectionPool realConnectionPool = this.f;
            realConnectionPool.getClass();
            Intrinsics.checkNotNullParameter(connection, "connection");
            TimeZone timeZone = _UtilJvmKt.f22077a;
            realConnectionPool.d.add(connection);
            realConnectionPool.b.d(realConnectionPool.f22102c, 0L);
            this.l.a(connection);
            Unit unit = Unit.INSTANCE;
        }
        RealCall realCall = this.l;
        realCall.h.d(realCall, connection);
        RealCall call2 = this.l;
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(call2, "call");
        return connection;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    public final void cancel() {
        this.t = true;
        Socket socket = this.u;
        if (socket != null) {
            _UtilJvmKt.b(socket);
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final RoutePlanner.ConnectResult d() {
        Socket socket;
        Socket socket2;
        RealConnectionPool realConnectionPool = this.f;
        Route route = this.n;
        RealCall call = this.l;
        CopyOnWriteArrayList copyOnWriteArrayList = call.w;
        if (this.u == null) {
            copyOnWriteArrayList.add(this);
            boolean z = false;
            try {
                try {
                    EventListener$Companion$NONE$1 eventListener$Companion$NONE$1 = call.h;
                    InetSocketAddress inetSocketAddress = route.f22070c;
                    Proxy proxy = route.b;
                    eventListener$Companion$NONE$1.getClass();
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
                    Intrinsics.checkNotNullParameter(proxy, "proxy");
                    realConnectionPool.getClass();
                    Intrinsics.checkNotNullParameter(route, "route");
                    Intrinsics.checkNotNullParameter(call, "call");
                    g();
                    z = true;
                    RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, null, null, 6);
                    copyOnWriteArrayList.remove(this);
                    return connectResult;
                } catch (IOException failure) {
                    Address address = route.f22069a;
                    if (route.b.type() != Proxy.Type.DIRECT) {
                        Address address2 = route.f22069a;
                        address2.g.connectFailed(address2.h.g(), route.b.address(), failure);
                    }
                    call.h.c(call, route.f22070c, route.b, failure);
                    realConnectionPool.getClass();
                    Intrinsics.checkNotNullParameter(route, "route");
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(failure, "failure");
                    RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, failure, 2);
                    copyOnWriteArrayList.remove(this);
                    if (!z && (socket = this.u) != null) {
                        _UtilJvmKt.b(socket);
                    }
                    return connectResult2;
                }
            } catch (Throwable th) {
                copyOnWriteArrayList.remove(this);
                if (!z && (socket2 = this.u) != null) {
                    _UtilJvmKt.b(socket2);
                }
                throw th;
            }
        }
        throw new IllegalStateException("TCP already connected");
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public final void e() {
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x01a8 A[Catch: all -> 0x0038, TryCatch #11 {all -> 0x0038, blocks: (B:7:0x0027, B:149:0x002b, B:151:0x0033, B:9:0x0054, B:12:0x005b, B:14:0x005f, B:15:0x0063, B:17:0x006d, B:19:0x0071, B:20:0x0075, B:22:0x007f, B:24:0x00a8, B:27:0x00e0, B:30:0x00e3, B:33:0x00e6, B:36:0x00e9, B:39:0x00ed, B:42:0x00f4, B:45:0x00ff, B:108:0x0103, B:48:0x0114, B:51:0x011e, B:63:0x018d, B:65:0x01a8, B:68:0x01b2, B:71:0x01b7, B:73:0x01bb, B:76:0x01c4, B:79:0x01c9, B:82:0x01cf, B:139:0x00c5, B:140:0x00cc, B:141:0x00cd, B:144:0x00dc, B:147:0x00da), top: B:6:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01d9  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner.ConnectResult f() {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ConnectPlan.f():okhttp3.internal.connection.RoutePlanner$ConnectResult");
    }

    public final void g() {
        int i;
        Socket createSocket;
        Proxy.Type type = this.n.b.type();
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i != 1 && i != 2) {
            createSocket = new Socket(this.n.b);
        } else {
            createSocket = this.n.f22069a.b.createSocket();
            Intrinsics.checkNotNull(createSocket);
        }
        this.u = createSocket;
        if (!this.t) {
            createSocket.setSoTimeout(this.j);
            try {
                Platform platform = Platform.f22173a;
                Platform.f22173a.f(createSocket, this.n.f22070c, this.i);
                try {
                    Intrinsics.checkNotNullParameter(createSocket, "<this>");
                    Intrinsics.checkNotNullParameter(createSocket, "<this>");
                    DefaultSocket defaultSocket = new DefaultSocket(createSocket);
                    Intrinsics.checkNotNullParameter(defaultSocket, "<this>");
                    this.y = new BufferedSocketKt$asBufferedSocket$1(defaultSocket);
                    return;
                } catch (NullPointerException e) {
                    if (!Intrinsics.areEqual(e.getMessage(), "throw with null exception")) {
                        return;
                    } else {
                        throw new IOException(e);
                    }
                }
            } catch (ConnectException e2) {
                ConnectException connectException = new ConnectException("Failed to connect to " + this.n.f22070c);
                connectException.initCause(e2);
                throw connectException;
            }
        }
        throw new IOException("canceled");
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* renamed from: getRoute, reason: from getter */
    public final Route getN() {
        return this.n;
    }

    public final void h(SSLSocket sslSocket, ConnectionSpec connectionSpec) {
        String str;
        Protocol protocol;
        List plus;
        String trimMargin$default;
        Address address = this.n.f22069a;
        try {
            if (connectionSpec.b) {
                Platform platform = Platform.f22173a;
                Platform.f22173a.e(sslSocket, address.h.d, address.i);
            }
            sslSocket.startHandshake();
            SSLSession session = sslSocket.getSession();
            Intrinsics.checkNotNull(session);
            Handshake a2 = Handshake.Companion.a(session);
            HostnameVerifier hostnameVerifier = address.d;
            Intrinsics.checkNotNull(hostnameVerifier);
            if (!hostnameVerifier.verify(address.h.d, session)) {
                List a3 = a2.a();
                if (!a3.isEmpty()) {
                    Object obj = a3.get(0);
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    X509Certificate certificate = (X509Certificate) obj;
                    StringBuilder sb = new StringBuilder("\n            |Hostname ");
                    sb.append(address.h.d);
                    sb.append(" not verified:\n            |    certificate: ");
                    CertificatePinner certificatePinner = CertificatePinner.f22026c;
                    sb.append(CertificatePinner.Companion.a(certificate));
                    sb.append("\n            |    DN: ");
                    sb.append(certificate.getSubjectDN().getName());
                    sb.append("\n            |    subjectAltNames: ");
                    Intrinsics.checkNotNullParameter(certificate, "certificate");
                    plus = CollectionsKt___CollectionsKt.plus((Collection) OkHostnameVerifier.a(certificate, 7), (Iterable) OkHostnameVerifier.a(certificate, 2));
                    sb.append(plus);
                    sb.append("\n            ");
                    trimMargin$default = StringsKt__IndentKt.trimMargin$default(sb.toString(), null, 1, null);
                    throw new SSLPeerUnverifiedException(trimMargin$default);
                }
                throw new SSLPeerUnverifiedException("Hostname " + address.h.d + " not verified (no certificates)");
            }
            CertificatePinner certificatePinner2 = address.e;
            Intrinsics.checkNotNull(certificatePinner2);
            Handshake handshake = new Handshake(a2.f22046a, a2.b, a2.f22047c, new a(certificatePinner2, a2, address, 1));
            this.w = handshake;
            certificatePinner2.a(address.h.d, new kotlin.time.a(3, handshake));
            if (connectionSpec.b) {
                Platform platform2 = Platform.f22173a;
                str = Platform.f22173a.g(sslSocket);
            } else {
                str = null;
            }
            this.v = sslSocket;
            Intrinsics.checkNotNullParameter(sslSocket, "<this>");
            Intrinsics.checkNotNullParameter(sslSocket, "<this>");
            DefaultSocket defaultSocket = new DefaultSocket(sslSocket);
            Intrinsics.checkNotNullParameter(defaultSocket, "<this>");
            this.y = new BufferedSocketKt$asBufferedSocket$1(defaultSocket);
            if (str != null) {
                Protocol.f.getClass();
                protocol = Protocol.Companion.a(str);
            } else {
                protocol = Protocol.h;
            }
            this.x = protocol;
            Platform platform3 = Platform.f22173a;
            Platform.f22173a.getClass();
            Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        } catch (Throwable th) {
            Platform platform4 = Platform.f22173a;
            Platform.f22173a.getClass();
            Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
            _UtilJvmKt.b(sslSocket);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c1, code lost:
    
        if (r5 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c9, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, null, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ca, code lost:
    
        r0 = r13.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cc, code lost:
    
        if (r0 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ce, code lost:
    
        okhttp3.internal._UtilJvmKt.b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d1, code lost:
    
        r0 = r13.p + 1;
        r6 = r13.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d8, code lost:
    
        if (r0 >= 21) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00da, code lost:
    
        r6.h.b(r6, r4, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f0, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, j(r13, r0, r5, 0, false, 12), null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f1, code lost:
    
        r0 = new java.net.ProtocolException("Too many tunnel connections attempted: 21");
        r6.h.c(r6, r4, r3, r0);
        r13.f.getClass();
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, "route");
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, "call");
        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, "failure");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0118, code lost:
    
        return new okhttp3.internal.connection.RoutePlanner.ConnectResult(r13, null, r0, 2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner.ConnectResult i() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ConnectPlan.i():okhttp3.internal.connection.RoutePlanner$ConnectResult");
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public final boolean isReady() {
        if (this.x != null) {
            return true;
        }
        return false;
    }

    public final ConnectPlan k(List connectionSpecs, SSLSocket socket) {
        String[] strArr;
        String[] strArr2;
        boolean z;
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(socket, "sslSocket");
        int i = this.r;
        int size = connectionSpecs.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            ConnectionSpec connectionSpec = (ConnectionSpec) connectionSpecs.get(i2);
            connectionSpec.getClass();
            Intrinsics.checkNotNullParameter(socket, "socket");
            if (connectionSpec.f22033a && (((strArr = connectionSpec.d) == null || _UtilCommonKt.d(strArr, socket.getEnabledProtocols(), ComparisonsKt.naturalOrder())) && ((strArr2 = connectionSpec.f22034c) == null || _UtilCommonKt.d(strArr2, socket.getEnabledCipherSuites(), CipherSuite.f22030c)))) {
                if (i != -1) {
                    z = true;
                } else {
                    z = false;
                }
                return j(this, 0, null, i2, z, 3);
            }
        }
        return null;
    }

    public final ConnectPlan l(List connectionSpecs, SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (this.r != -1) {
            return this;
        }
        ConnectPlan k = k(connectionSpecs, sslSocket);
        if (k != null) {
            return k;
        }
        StringBuilder sb = new StringBuilder("Unable to find acceptable protocols. isFallback=");
        sb.append(this.s);
        sb.append(", modes=");
        sb.append(connectionSpecs);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.checkNotNull(enabledProtocols);
        String arrays = Arrays.toString(enabledProtocols);
        Intrinsics.checkNotNullExpressionValue(arrays, "toString(...)");
        sb.append(arrays);
        throw new UnknownServiceException(sb.toString());
    }
}
