package okhttp3.internal.http;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.jsoup.helper.HttpConnection;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f22119a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MAX_FOLLOW_UPS", "I", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public RetryAndFollowUpInterceptor(OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.f22119a = client;
    }

    public static int d(Response response, int i) {
        String a2 = Response.a("Retry-After", response);
        if (a2 == null) {
            return i;
        }
        if (new Regex("\\d+").matches(a2)) {
            Integer valueOf = Integer.valueOf(a2);
            Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(...)");
            return valueOf.intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x01d2, code lost:
    
        throw new java.lang.IllegalStateException("Check failed.");
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response a(okhttp3.internal.http.RealInterceptorChain r36) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.RetryAndFollowUpInterceptor.a(okhttp3.internal.http.RealInterceptorChain):okhttp3.Response");
    }

    public final Request b(Response response, Exchange exchange) {
        Route route;
        HttpUrl.Builder builder;
        HttpUrl url;
        RequestBody requestBody;
        Response response2;
        RequestBody requestBody2 = null;
        if (exchange != null) {
            route = exchange.c().g;
        } else {
            route = null;
        }
        int i = response.h;
        Request request = response.f22065c;
        String method = request.b;
        boolean z = false;
        if (i != 307 && i != 308) {
            if (i != 401) {
                if (i != 421) {
                    if (i != 503) {
                        if (i != 407) {
                            if (i != 408) {
                                switch (i) {
                                }
                            } else if (this.f22119a.e && (((requestBody = request.d) == null || !requestBody.c()) && (((response2 = response.o) == null || response2.h != 408) && d(response, 0) <= 0))) {
                                return response.f22065c;
                            }
                        } else {
                            Intrinsics.checkNotNull(route);
                            if (route.b.type() == Proxy.Type.HTTP) {
                                return this.f22119a.m.a(route, response);
                            }
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        Response response3 = response.o;
                        if ((response3 == null || response3.h != 503) && d(response, Integer.MAX_VALUE) == 0) {
                            return response.f22065c;
                        }
                    }
                } else {
                    RequestBody requestBody3 = request.d;
                    if ((requestBody3 == null || !requestBody3.c()) && exchange != null && !Intrinsics.areEqual(exchange.f22094c.b().getI().h.d, exchange.d.getB().getN().f22069a.h.d)) {
                        RealConnection c2 = exchange.c();
                        synchronized (c2) {
                            c2.o = true;
                            Unit unit = Unit.INSTANCE;
                        }
                        return response.f22065c;
                    }
                }
                return null;
            }
            return this.f22119a.g.a(route, response);
        }
        OkHttpClient okHttpClient = this.f22119a;
        if (okHttpClient.h) {
            String link = Response.a("Location", response);
            Request request2 = response.f22065c;
            if (link != null) {
                HttpUrl httpUrl = request2.f22061a;
                httpUrl.getClass();
                Intrinsics.checkNotNullParameter(link, "link");
                Intrinsics.checkNotNullParameter(link, "link");
                try {
                    builder = new HttpUrl.Builder();
                    builder.b(httpUrl, link);
                } catch (IllegalArgumentException unused) {
                    builder = null;
                }
                if (builder != null) {
                    url = builder.a();
                } else {
                    url = null;
                }
                if (url != null && (Intrinsics.areEqual(url.f22050a, request2.f22061a.f22050a) || okHttpClient.i)) {
                    Request.Builder b = request2.b();
                    if (HttpMethod.a(method)) {
                        int i2 = response.h;
                        Intrinsics.checkNotNullParameter(method, "method");
                        if (Intrinsics.areEqual(method, "PROPFIND") || i2 == 308 || i2 == 307) {
                            z = true;
                        }
                        Intrinsics.checkNotNullParameter(method, "method");
                        if (!Intrinsics.areEqual(method, "PROPFIND") && i2 != 308 && i2 != 307) {
                            b.b(HttpMethods.GET, null);
                        } else {
                            if (z) {
                                requestBody2 = request2.d;
                            }
                            b.b(method, requestBody2);
                        }
                        if (!z) {
                            b.c("Transfer-Encoding");
                            b.c("Content-Length");
                            b.c(HttpConnection.CONTENT_TYPE);
                        }
                    }
                    if (!_UtilJvmKt.a(request2.f22061a, url)) {
                        b.c("Authorization");
                    }
                    Intrinsics.checkNotNullParameter(url, "url");
                    b.f22063a = url;
                    return new Request(b);
                }
            }
        }
        return null;
    }

    public final boolean c(IOException iOException, RealCall realCall, Request request) {
        RealConnection realConnection;
        RequestBody requestBody;
        boolean z = iOException instanceof ConnectionShutdownException;
        if (this.f22119a.e) {
            if ((z || (((requestBody = request.d) == null || !requestBody.c()) && !(iOException instanceof FileNotFoundException))) && !(iOException instanceof ProtocolException)) {
                if (iOException instanceof InterruptedIOException) {
                    if (!(iOException instanceof SocketTimeoutException) || !z) {
                        return false;
                    }
                } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
                    return false;
                }
                Exchange exchange = realCall.v;
                if (exchange != null && exchange.e) {
                    ExchangeFinder exchangeFinder = realCall.l;
                    Intrinsics.checkNotNull(exchangeFinder);
                    RoutePlanner b = exchangeFinder.b();
                    Exchange exchange2 = realCall.v;
                    if (exchange2 != null) {
                        realConnection = exchange2.c();
                    } else {
                        realConnection = null;
                    }
                    if (b.a(realConnection)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
