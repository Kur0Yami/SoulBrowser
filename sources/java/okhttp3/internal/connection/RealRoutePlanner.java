package okhttp3.internal.connection;

import android.support.v4.media.a;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.ConnectionSpec;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.platform.Platform;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RealRoutePlanner;", "Lokhttp3/internal/connection/RoutePlanner;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealRoutePlanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealRoutePlanner.kt\nokhttp3/internal/connection/RealRoutePlanner\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,348:1\n63#2:349\n63#2:350\n*S KotlinDebug\n*F\n+ 1 RealRoutePlanner.kt\nokhttp3/internal/connection/RealRoutePlanner\n*L\n100#1:349\n327#1:350\n*E\n"})
/* loaded from: classes4.dex */
public final class RealRoutePlanner implements RoutePlanner {

    /* renamed from: a, reason: collision with root package name */
    public final TaskRunner f22103a;
    public final RealConnectionPool b;

    /* renamed from: c, reason: collision with root package name */
    public final int f22104c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final boolean h;
    public final Address i;
    public final RouteDatabase j;
    public final RealCall k;
    public final boolean l;
    public RouteSelector.Selection m;
    public RouteSelector n;
    public Route o;
    public final ArrayDeque p;

    public RealRoutePlanner(TaskRunner taskRunner, RealConnectionPool connectionPool, int i, int i2, int i3, int i4, boolean z, boolean z2, Address address, RouteDatabase routeDatabase, RealCall call, Request request) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(routeDatabase, "routeDatabase");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
        this.f22103a = taskRunner;
        this.b = connectionPool;
        this.f22104c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = z;
        this.h = z2;
        this.i = address;
        this.j = routeDatabase;
        this.k = call;
        this.l = !Intrinsics.areEqual(request.b, HttpMethods.GET);
        this.p = new ArrayDeque();
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean a(RealConnection realConnection) {
        RouteSelector routeSelector;
        Route route;
        if (this.p.isEmpty() && this.o == null) {
            if (realConnection != null) {
                synchronized (realConnection) {
                    route = null;
                    if (realConnection.p == 0 && realConnection.n && _UtilJvmKt.a(realConnection.g.f22069a.h, this.i.h)) {
                        route = realConnection.g;
                    }
                }
                if (route != null) {
                    this.o = route;
                    return true;
                }
            }
            RouteSelector.Selection selection = this.m;
            if ((selection == null || selection.b >= selection.f22111a.size()) && (routeSelector = this.n) != null) {
                return routeSelector.a();
            }
        }
        return true;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    /* renamed from: b, reason: from getter */
    public final Address getI() {
        return this.i;
    }

    @Override // okhttp3.internal.connection.RoutePlanner
    public final boolean c(HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HttpUrl httpUrl = this.i.h;
        if (url.e == httpUrl.e && Intrinsics.areEqual(url.d, httpUrl.d)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.RoutePlanner.Plan d() {
        /*
            r7 = this;
            okhttp3.internal.connection.RealCall r0 = r7.k
            okhttp3.internal.connection.RealConnection r0 = r0.m
            r1 = 0
            if (r0 != 0) goto La
        L7:
            r2 = r1
            goto L80
        La:
            boolean r2 = r7.l
            boolean r2 = r0.h(r2)
            monitor-enter(r0)
            if (r2 != 0) goto L23
            boolean r2 = r0.n     // Catch: java.lang.Throwable -> L20
            r3 = 1
            r2 = r2 ^ r3
            r0.n = r3     // Catch: java.lang.Throwable -> L20
            okhttp3.internal.connection.RealCall r3 = r7.k     // Catch: java.lang.Throwable -> L20
            java.net.Socket r3 = r3.h()     // Catch: java.lang.Throwable -> L20
            goto L41
        L20:
            r1 = move-exception
            goto La9
        L23:
            boolean r2 = r0.n     // Catch: java.lang.Throwable -> L20
            r3 = 0
            if (r2 != 0) goto L38
            okhttp3.Route r2 = r0.g     // Catch: java.lang.Throwable -> L20
            okhttp3.Address r2 = r2.f22069a     // Catch: java.lang.Throwable -> L20
            okhttp3.HttpUrl r2 = r2.h     // Catch: java.lang.Throwable -> L20
            boolean r2 = r7.c(r2)     // Catch: java.lang.Throwable -> L20
            if (r2 != 0) goto L35
            goto L38
        L35:
            r2 = r3
            r3 = r1
            goto L41
        L38:
            okhttp3.internal.connection.RealCall r2 = r7.k     // Catch: java.lang.Throwable -> L20
            java.net.Socket r2 = r2.h()     // Catch: java.lang.Throwable -> L20
            r6 = r3
            r3 = r2
            r2 = r6
        L41:
            monitor-exit(r0)
            okhttp3.internal.connection.RealCall r4 = r7.k
            okhttp3.internal.connection.RealConnection r4 = r4.m
            if (r4 == 0) goto L58
            if (r3 != 0) goto L50
            okhttp3.internal.connection.ReusePlan r2 = new okhttp3.internal.connection.ReusePlan
            r2.<init>(r0)
            goto L80
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Check failed."
            r0.<init>(r1)
            throw r0
        L58:
            if (r3 == 0) goto L5d
            okhttp3.internal._UtilJvmKt.b(r3)
        L5d:
            okhttp3.internal.connection.RealCall r4 = r7.k
            okhttp3.EventListener$Companion$NONE$1 r5 = r4.h
            r5.e(r4, r0)
            okhttp3.internal.connection.RealCall r4 = r7.k
            java.lang.String r5 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r5)
            java.lang.String r5 = "call"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r5)
            if (r3 == 0) goto L78
            java.lang.String r2 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            goto L7
        L78:
            if (r2 == 0) goto L7
            java.lang.String r2 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            goto L7
        L80:
            if (r2 == 0) goto L83
            return r2
        L83:
            okhttp3.internal.connection.ReusePlan r0 = r7.g(r1, r1)
            if (r0 == 0) goto L8a
            return r0
        L8a:
            kotlin.collections.ArrayDeque r0 = r7.p
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L9b
            kotlin.collections.ArrayDeque r0 = r7.p
            java.lang.Object r0 = r0.removeFirst()
            okhttp3.internal.connection.RoutePlanner$Plan r0 = (okhttp3.internal.connection.RoutePlanner.Plan) r0
            return r0
        L9b:
            okhttp3.internal.connection.ConnectPlan r0 = r7.e()
            java.util.List r1 = r0.o
            okhttp3.internal.connection.ReusePlan r1 = r7.g(r0, r1)
            if (r1 == 0) goto La8
            return r1
        La8:
            return r0
        La9:
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealRoutePlanner.d():okhttp3.internal.connection.RoutePlanner$Plan");
    }

    public final ConnectPlan e() {
        String domainName;
        int i;
        List addresses;
        boolean contains;
        Route route = this.o;
        if (route != null) {
            this.o = null;
            return f(route, null);
        }
        RouteSelector.Selection selection = this.m;
        if (selection != null && selection.b < selection.f22111a.size()) {
            int i2 = selection.b;
            ArrayList arrayList = selection.f22111a;
            if (i2 < arrayList.size()) {
                int i3 = selection.b;
                selection.b = i3 + 1;
                return f((Route) arrayList.get(i3), null);
            }
            throw new NoSuchElementException();
        }
        RouteSelector routeSelector = this.n;
        if (routeSelector == null) {
            routeSelector = new RouteSelector(this.i, this.j, this.k, this.h);
            this.n = routeSelector;
        }
        if (routeSelector.a()) {
            if (routeSelector.a()) {
                ArrayList arrayList2 = new ArrayList();
                while (routeSelector.f < routeSelector.e.size()) {
                    Address address = routeSelector.f22109a;
                    if (routeSelector.f < routeSelector.e.size()) {
                        List list = routeSelector.e;
                        int i4 = routeSelector.f;
                        routeSelector.f = i4 + 1;
                        Proxy proxy = (Proxy) list.get(i4);
                        RealCall call = routeSelector.f22110c;
                        ArrayList arrayList3 = new ArrayList();
                        routeSelector.g = arrayList3;
                        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
                            SocketAddress address2 = proxy.address();
                            if (address2 instanceof InetSocketAddress) {
                                InetSocketAddress inetSocketAddress = (InetSocketAddress) address2;
                                Intrinsics.checkNotNullParameter(inetSocketAddress, "<this>");
                                InetAddress address3 = inetSocketAddress.getAddress();
                                if (address3 == null) {
                                    domainName = inetSocketAddress.getHostName();
                                    Intrinsics.checkNotNullExpressionValue(domainName, "getHostName(...)");
                                } else {
                                    domainName = address3.getHostAddress();
                                    Intrinsics.checkNotNullExpressionValue(domainName, "getHostAddress(...)");
                                }
                                i = inetSocketAddress.getPort();
                            } else {
                                throw new IllegalArgumentException(("Proxy.address() is not an InetSocketAddress: " + address2.getClass()).toString());
                            }
                        } else {
                            HttpUrl httpUrl = address.h;
                            domainName = httpUrl.d;
                            i = httpUrl.e;
                        }
                        if (1 <= i && i < 65536) {
                            if (proxy.type() == Proxy.Type.SOCKS) {
                                arrayList3.add(InetSocketAddress.createUnresolved(domainName, i));
                            } else {
                                Regex regex = _HostnamesCommonKt.f22075a;
                                Intrinsics.checkNotNullParameter(domainName, "<this>");
                                if (_HostnamesCommonKt.f22075a.matches(domainName)) {
                                    addresses = CollectionsKt.listOf(InetAddress.getByName(domainName));
                                } else {
                                    call.h.getClass();
                                    Intrinsics.checkNotNullParameter(call, "call");
                                    Intrinsics.checkNotNullParameter(domainName, "domainName");
                                    List inetAddressList = address.f22020a.a(domainName);
                                    if (!inetAddressList.isEmpty()) {
                                        call.h.getClass();
                                        Intrinsics.checkNotNullParameter(call, "call");
                                        Intrinsics.checkNotNullParameter(domainName, "domainName");
                                        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
                                        addresses = inetAddressList;
                                    } else {
                                        throw new UnknownHostException(address.f22020a + " returned no addresses for " + domainName);
                                    }
                                }
                                if (routeSelector.d) {
                                    Intrinsics.checkNotNullParameter(addresses, "addresses");
                                    if (addresses.size() >= 2) {
                                        ArrayList arrayList4 = new ArrayList();
                                        ArrayList arrayList5 = new ArrayList();
                                        for (Object obj : addresses) {
                                            if (((InetAddress) obj) instanceof Inet6Address) {
                                                arrayList4.add(obj);
                                            } else {
                                                arrayList5.add(obj);
                                            }
                                        }
                                        Pair pair = new Pair(arrayList4, arrayList5);
                                        List a2 = (List) pair.component1();
                                        List b = (List) pair.component2();
                                        if (!a2.isEmpty() && !b.isEmpty()) {
                                            byte[] bArr = _UtilCommonKt.f22076a;
                                            Intrinsics.checkNotNullParameter(a2, "a");
                                            Intrinsics.checkNotNullParameter(b, "b");
                                            Iterator it = a2.iterator();
                                            Iterator it2 = b.iterator();
                                            List createListBuilder = CollectionsKt.createListBuilder();
                                            while (true) {
                                                if (!it.hasNext() && !it2.hasNext()) {
                                                    break;
                                                }
                                                if (it.hasNext()) {
                                                    createListBuilder.add(it.next());
                                                }
                                                if (it2.hasNext()) {
                                                    createListBuilder.add(it2.next());
                                                }
                                            }
                                            addresses = CollectionsKt.build(createListBuilder);
                                        }
                                    }
                                }
                                Iterator it3 = addresses.iterator();
                                while (it3.hasNext()) {
                                    arrayList3.add(new InetSocketAddress((InetAddress) it3.next(), i));
                                }
                            }
                            Iterator it4 = routeSelector.g.iterator();
                            while (it4.hasNext()) {
                                Route route2 = new Route(routeSelector.f22109a, proxy, (InetSocketAddress) it4.next());
                                RouteDatabase routeDatabase = routeSelector.b;
                                synchronized (routeDatabase) {
                                    Intrinsics.checkNotNullParameter(route2, "route");
                                    contains = routeDatabase.f22106a.contains(route2);
                                }
                                if (contains) {
                                    routeSelector.h.add(route2);
                                } else {
                                    arrayList2.add(route2);
                                }
                            }
                            if (!arrayList2.isEmpty()) {
                                break;
                            }
                        } else {
                            throw new SocketException("No route to " + domainName + ':' + i + "; port is out of range");
                        }
                    } else {
                        throw new SocketException("No route to " + address.h.d + "; exhausted proxy configurations: " + routeSelector.e);
                    }
                }
                if (arrayList2.isEmpty()) {
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList2, routeSelector.h);
                    routeSelector.h.clear();
                }
                RouteSelector.Selection selection2 = new RouteSelector.Selection(arrayList2);
                this.m = selection2;
                if (!this.k.u) {
                    if (selection2.b < arrayList2.size()) {
                        int i5 = selection2.b;
                        selection2.b = i5 + 1;
                        return f((Route) arrayList2.get(i5), arrayList2);
                    }
                    throw new NoSuchElementException();
                }
                throw new IOException("Canceled");
            }
            throw new NoSuchElementException();
        }
        throw new IOException("exhausted all routes");
    }

    public final ConnectPlan f(Route route, ArrayList arrayList) {
        Intrinsics.checkNotNullParameter(route, "route");
        Address address = route.f22069a;
        if (address.f22021c == null) {
            if (address.j.contains(ConnectionSpec.h)) {
                String str = route.f22069a.h.d;
                Platform platform = Platform.f22173a;
                if (!Platform.f22173a.i(str)) {
                    throw new UnknownServiceException(a.l("CLEARTEXT communication to ", str, " not permitted by network security policy"));
                }
            } else {
                throw new UnknownServiceException("CLEARTEXT communication not enabled for client");
            }
        } else if (address.i.contains(Protocol.k)) {
            throw new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS");
        }
        Request request = null;
        if (route.b.type() == Proxy.Type.HTTP) {
            Address address2 = route.f22069a;
            if (address2.f22021c != null || address2.i.contains(Protocol.k)) {
                Request.Builder builder = new Request.Builder();
                HttpUrl url = route.f22069a.h;
                Intrinsics.checkNotNullParameter(url, "url");
                builder.f22063a = url;
                builder.b(HttpMethods.CONNECT, null);
                Address address3 = route.f22069a;
                builder.a("Host", _UtilJvmKt.g(address3.h, true));
                builder.a("Proxy-Connection", "Keep-Alive");
                builder.a("User-Agent", "okhttp/5.3.2");
                request = new Request(builder);
                Response.Builder builder2 = new Response.Builder();
                Intrinsics.checkNotNullParameter(request, "request");
                builder2.f22066a = request;
                Protocol protocol = Protocol.h;
                Intrinsics.checkNotNullParameter(protocol, "protocol");
                builder2.b = protocol;
                builder2.f22067c = 407;
                Intrinsics.checkNotNullParameter("Preemptive Authenticate", "message");
                builder2.d = "Preemptive Authenticate";
                builder2.l = -1L;
                builder2.m = -1L;
                Intrinsics.checkNotNullParameter("Proxy-Authenticate", "name");
                Intrinsics.checkNotNullParameter("OkHttp-Preemptive", "value");
                builder2.f.d("Proxy-Authenticate", "OkHttp-Preemptive");
                Request a2 = address3.f.a(route, builder2.a());
                if (a2 != null) {
                    request = a2;
                }
            }
        }
        return new ConnectPlan(this.f22103a, this.b, this.f22104c, this.d, this.e, this.f, this.g, this.k, this, route, arrayList, 0, request, -1, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0047, code lost:
    
        if (r9 == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.connection.ReusePlan g(okhttp3.internal.connection.ConnectPlan r11, java.util.List r12) {
        /*
            r10 = this;
            okhttp3.internal.connection.RealConnectionPool r0 = r10.b
            boolean r1 = r10.l
            okhttp3.Address r2 = r10.i
            okhttp3.internal.connection.RealCall r3 = r10.k
            r4 = 0
            r5 = 1
            if (r11 == 0) goto L14
            boolean r6 = r11.isReady()
            if (r6 == 0) goto L14
            r6 = r5
            goto L15
        L14:
            r6 = r4
        L15:
            r0.getClass()
            java.lang.String r7 = "address"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r7)
            java.lang.String r7 = "call"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r7)
            java.util.concurrent.ConcurrentLinkedQueue r0 = r0.d
            java.util.Iterator r0 = r0.iterator()
            java.lang.String r7 = "iterator(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r7)
        L2d:
            boolean r7 = r0.hasNext()
            r8 = 0
            if (r7 == 0) goto L84
            java.lang.Object r7 = r0.next()
            okhttp3.internal.connection.RealConnection r7 = (okhttp3.internal.connection.RealConnection) r7
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            monitor-enter(r7)
            if (r6 == 0) goto L4d
            okhttp3.internal.http2.Http2Connection r9 = r7.m     // Catch: java.lang.Throwable -> L4b
            if (r9 == 0) goto L46
            r9 = r5
            goto L47
        L46:
            r9 = r4
        L47:
            if (r9 != 0) goto L4d
        L49:
            r9 = r4
            goto L58
        L4b:
            r11 = move-exception
            goto L82
        L4d:
            boolean r9 = r7.g(r2, r12)     // Catch: java.lang.Throwable -> L4b
            if (r9 != 0) goto L54
            goto L49
        L54:
            r3.a(r7)     // Catch: java.lang.Throwable -> L4b
            r9 = r5
        L58:
            monitor-exit(r7)
            if (r9 == 0) goto L2d
            boolean r9 = r7.h(r1)
            if (r9 == 0) goto L62
            goto L85
        L62:
            monitor-enter(r7)
            boolean r8 = r7.n     // Catch: java.lang.Throwable -> L7f
            r7.n = r5     // Catch: java.lang.Throwable -> L7f
            java.net.Socket r9 = r3.h()     // Catch: java.lang.Throwable -> L7f
            monitor-exit(r7)
            if (r9 == 0) goto L77
            okhttp3.internal._UtilJvmKt.b(r9)
            java.lang.String r8 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r8)
            goto L2d
        L77:
            if (r8 != 0) goto L2d
            java.lang.String r8 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r8)
            goto L2d
        L7f:
            r11 = move-exception
            monitor-exit(r7)
            throw r11
        L82:
            monitor-exit(r7)
            throw r11
        L84:
            r7 = r8
        L85:
            if (r7 != 0) goto L88
            return r8
        L88:
            if (r11 == 0) goto L95
            okhttp3.Route r12 = r11.n
            r10.o = r12
            java.net.Socket r11 = r11.v
            if (r11 == 0) goto L95
            okhttp3.internal._UtilJvmKt.b(r11)
        L95:
            okhttp3.internal.connection.RealCall r11 = r10.k
            okhttp3.EventListener$Companion$NONE$1 r12 = r11.h
            r12.d(r11, r7)
            okhttp3.internal.connection.RealCall r11 = r10.k
            java.lang.String r12 = "connection"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r12)
            java.lang.String r12 = "call"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r12)
            okhttp3.internal.connection.ReusePlan r11 = new okhttp3.internal.connection.ReusePlan
            r11.<init>(r7)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealRoutePlanner.g(okhttp3.internal.connection.ConnectPlan, java.util.List):okhttp3.internal.connection.ReusePlan");
    }
}
