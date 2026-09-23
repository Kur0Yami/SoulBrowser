package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/connection/RouteSelector;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Selection", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RouteSelector {

    /* renamed from: a, reason: collision with root package name */
    public final Address f22109a;
    public final RouteDatabase b;

    /* renamed from: c, reason: collision with root package name */
    public final RealCall f22110c;
    public final boolean d;
    public final List e;
    public int f;
    public List g;
    public final ArrayList h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RouteSelector$Selection;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Selection {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f22111a;
        public int b;

        public Selection(ArrayList routes) {
            Intrinsics.checkNotNullParameter(routes, "routes");
            this.f22111a = routes;
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, RealCall call, boolean z) {
        List proxies;
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(routeDatabase, "routeDatabase");
        Intrinsics.checkNotNullParameter(call, "call");
        this.f22109a = address;
        this.b = routeDatabase;
        this.f22110c = call;
        this.d = z;
        this.e = CollectionsKt.emptyList();
        this.g = CollectionsKt.emptyList();
        this.h = new ArrayList();
        HttpUrl url = address.h;
        EventListener$Companion$NONE$1 eventListener$Companion$NONE$1 = call.h;
        eventListener$Companion$NONE$1.getClass();
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        URI g = url.g();
        if (g.getHost() == null) {
            Proxy[] elements = {Proxy.NO_PROXY};
            TimeZone timeZone = _UtilJvmKt.f22077a;
            Intrinsics.checkNotNullParameter(elements, "elements");
            proxies = _UtilJvmKt.i(elements);
        } else {
            List<Proxy> select = address.g.select(g);
            if (select != null && !select.isEmpty()) {
                proxies = _UtilJvmKt.h(select);
            } else {
                Proxy[] elements2 = {Proxy.NO_PROXY};
                TimeZone timeZone2 = _UtilJvmKt.f22077a;
                Intrinsics.checkNotNullParameter(elements2, "elements");
                proxies = _UtilJvmKt.i(elements2);
            }
        }
        this.e = proxies;
        this.f = 0;
        eventListener$Companion$NONE$1.getClass();
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(proxies, "proxies");
    }

    public final boolean a() {
        if (this.f < this.e.size() || !this.h.isEmpty()) {
            return true;
        }
        return false;
    }
}
