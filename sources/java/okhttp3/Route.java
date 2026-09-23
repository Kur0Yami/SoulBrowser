package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._HostnamesCommonKt;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Route;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Route {

    /* renamed from: a, reason: collision with root package name */
    public final Address f22069a;
    public final Proxy b;

    /* renamed from: c, reason: collision with root package name */
    public final InetSocketAddress f22070c;

    public Route(Address address, Proxy proxy, InetSocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(socketAddress, "socketAddress");
        this.f22069a = address;
        this.b = proxy;
        this.f22070c = socketAddress;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (Intrinsics.areEqual(route.f22069a, this.f22069a) && Intrinsics.areEqual(route.b, this.b) && Intrinsics.areEqual(route.f22070c, this.f22070c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.f22070c.hashCode() + ((this.b.hashCode() + ((this.f22069a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        String str;
        boolean contains$default;
        boolean contains$default2;
        String hostAddress;
        StringBuilder sb = new StringBuilder();
        HttpUrl httpUrl = this.f22069a.h;
        String str2 = httpUrl.d;
        InetSocketAddress inetSocketAddress = this.f22070c;
        InetAddress address = inetSocketAddress.getAddress();
        if (address != null && (hostAddress = address.getHostAddress()) != null) {
            str = _HostnamesCommonKt.b(hostAddress);
        } else {
            str = null;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str2, ':', false, 2, (Object) null);
        if (contains$default) {
            android.support.v4.media.a.y(sb, "[", str2, "]");
        } else {
            sb.append(str2);
        }
        if (httpUrl.e != inetSocketAddress.getPort() || Intrinsics.areEqual(str2, str)) {
            sb.append(":");
            sb.append(httpUrl.e);
        }
        if (!Intrinsics.areEqual(str2, str)) {
            if (Intrinsics.areEqual(this.b, Proxy.NO_PROXY)) {
                sb.append(" at ");
            } else {
                sb.append(" via proxy ");
            }
            if (str != null) {
                contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) str, ':', false, 2, (Object) null);
                if (contains$default2) {
                    android.support.v4.media.a.y(sb, "[", str, "]");
                } else {
                    sb.append(str);
                }
            } else {
                sb.append("<unresolved>");
            }
            sb.append(":");
            sb.append(inetSocketAddress.getPort());
        }
        return sb.toString();
    }
}
