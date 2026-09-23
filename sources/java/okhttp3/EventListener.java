package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RealCall;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/EventListener;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Factory", "Companion", "AggregateEventListener", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class EventListener {

    /* renamed from: a, reason: collision with root package name */
    public static final EventListener$Companion$NONE$1 f22044a = new Object();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/EventListener$AggregateEventListener;", "Lokhttp3/EventListener;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class AggregateEventListener extends EventListener {
        @Override // okhttp3.EventListener
        public final void a(Call call, Response response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void b(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void c(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
            Intrinsics.checkNotNullParameter(proxy, "proxy");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void d(Call call, Connection connection) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void e(Call call, Connection connection) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(connection, "connection");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void f(RealCall call, Response networkResponse) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(networkResponse, "networkResponse");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void g(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void h(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void i(Call call, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void j(Call call, Request request) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(request, "request");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void k(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void l(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void m(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void n(Call call, IOException ioe) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(ioe, "ioe");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void o(Call call, Response response) {
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            throw null;
        }

        @Override // okhttp3.EventListener
        public final void p(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            throw null;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/EventListener$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/EventListener;", "NONE", "Lokhttp3/EventListener;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lokhttp3/EventListener$Factory;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Factory {
    }

    public void a(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void b(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
    }

    public void c(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void d(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void e(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
    }

    public void f(RealCall call, Response networkResponse) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(networkResponse, "networkResponse");
    }

    public void g(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void h(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void i(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void j(Call call, Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
    }

    public void k(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void l(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void m(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public void n(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
    }

    public void o(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
    }

    public void p(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }
}
