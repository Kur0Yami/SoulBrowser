package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.url._UrlKt;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Address;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Address {

    /* renamed from: a, reason: collision with root package name */
    public final Dns f22020a;
    public final SocketFactory b;

    /* renamed from: c, reason: collision with root package name */
    public final SSLSocketFactory f22021c;
    public final HostnameVerifier d;
    public final CertificatePinner e;
    public final Authenticator f;
    public final ProxySelector g;
    public final HttpUrl h;
    public final List i;
    public final List j;

    public Address(String host, int i, Dns dns, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, OkHostnameVerifier okHostnameVerifier, CertificatePinner certificatePinner, Authenticator proxyAuthenticator, List protocols, List connectionSpecs, ProxySelector proxySelector) {
        boolean equals;
        boolean equals2;
        Intrinsics.checkNotNullParameter(host, "uriHost");
        Intrinsics.checkNotNullParameter(dns, "dns");
        Intrinsics.checkNotNullParameter(socketFactory, "socketFactory");
        Intrinsics.checkNotNullParameter(proxyAuthenticator, "proxyAuthenticator");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(proxySelector, "proxySelector");
        this.f22020a = dns;
        this.b = socketFactory;
        this.f22021c = sSLSocketFactory;
        this.d = okHostnameVerifier;
        this.e = certificatePinner;
        this.f = proxyAuthenticator;
        this.g = proxySelector;
        HttpUrl.Builder builder = new HttpUrl.Builder();
        String scheme = sSLSocketFactory != null ? "https" : "http";
        Intrinsics.checkNotNullParameter(scheme, "scheme");
        equals = StringsKt__StringsJVMKt.equals(scheme, "http", true);
        if (!equals) {
            equals2 = StringsKt__StringsJVMKt.equals(scheme, "https", true);
            if (!equals2) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(scheme));
            }
            builder.f22052a = "https";
        } else {
            builder.f22052a = "http";
        }
        Intrinsics.checkNotNullParameter(host, "host");
        String b = _HostnamesCommonKt.b(_UrlKt.c(0, 0, 7, host));
        if (b != null) {
            builder.d = b;
            if (1 <= i && i < 65536) {
                builder.e = i;
                this.h = builder.a();
                this.i = _UtilJvmKt.h(protocols);
                this.j = _UtilJvmKt.h(connectionSpecs);
                return;
            }
            throw new IllegalArgumentException(android.support.v4.media.a.e(i, "unexpected port: ").toString());
        }
        throw new IllegalArgumentException("unexpected host: ".concat(host));
    }

    public final boolean a(Address that) {
        Intrinsics.checkNotNullParameter(that, "that");
        if (Intrinsics.areEqual(this.f22020a, that.f22020a) && Intrinsics.areEqual(this.f, that.f) && Intrinsics.areEqual(this.i, that.i) && Intrinsics.areEqual(this.j, that.j) && Intrinsics.areEqual(this.g, that.g) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual(this.f22021c, that.f22021c) && Intrinsics.areEqual(this.d, that.d) && Intrinsics.areEqual(this.e, that.e) && this.h.e == that.h.e) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Intrinsics.areEqual(this.h, address.h) && a(address)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.f22021c) + ((this.g.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.f.hashCode() + ((this.f22020a.hashCode() + ((this.h.h.hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        HttpUrl httpUrl = this.h;
        sb.append(httpUrl.d);
        sb.append(':');
        sb.append(httpUrl.e);
        sb.append(", ");
        sb.append("proxySelector=" + this.g);
        sb.append('}');
        return sb.toString();
    }
}
