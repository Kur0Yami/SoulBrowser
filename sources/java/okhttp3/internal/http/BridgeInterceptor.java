package okhttp3.internal.http;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt;
import okio.GzipSource;
import okio.Okio;
import org.jsoup.helper.HttpConnection;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1878#2,3:126\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n119#1:126,3\n*E\n"})
/* loaded from: classes4.dex */
public final class BridgeInterceptor implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public final CookieJar f22113a;

    public BridgeInterceptor(CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.f22113a = cookieJar;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain chain) {
        boolean z;
        boolean equals;
        ResponseBody responseBody;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.e;
        Request.Builder b = request.b();
        HttpUrl httpUrl = request.f22061a;
        RequestBody requestBody = request.d;
        if (requestBody != null) {
            MediaType b2 = requestBody.b();
            if (b2 != null) {
                b.a(HttpConnection.CONTENT_TYPE, b2.f22055a);
            }
            long a2 = requestBody.a();
            if (a2 != -1) {
                b.a("Content-Length", String.valueOf(a2));
                b.c("Transfer-Encoding");
            } else {
                b.a("Transfer-Encoding", "chunked");
                b.c("Content-Length");
            }
        }
        int i = 0;
        if (request.a("Host") == null) {
            b.a("Host", _UtilJvmKt.g(httpUrl, false));
        }
        if (request.a("Connection") == null) {
            b.a("Connection", "Keep-Alive");
        }
        if (request.a("Accept-Encoding") == null && request.a("Range") == null) {
            b.a("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        CookieJar cookieJar = this.f22113a;
        List b3 = cookieJar.b(httpUrl);
        if (!b3.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : b3) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Cookie cookie = (Cookie) obj;
                if (i > 0) {
                    sb.append("; ");
                }
                sb.append(cookie.f22037a);
                sb.append('=');
                sb.append(cookie.b);
                i = i2;
            }
            b.a("Cookie", sb.toString());
        }
        if (request.a("User-Agent") == null) {
            b.a("User-Agent", "okhttp/5.3.2");
        }
        Request request2 = new Request(b);
        Response b4 = chain.b(request2);
        Headers headers = b4.j;
        HttpHeaders.d(cookieJar, request2.f22061a, headers);
        Response.Builder b5 = b4.b();
        Intrinsics.checkNotNullParameter(request2, "request");
        b5.f22066a = request2;
        if (z) {
            equals = StringsKt__StringsJVMKt.equals("gzip", Response.a(HttpConnection.CONTENT_ENCODING, b4), true);
            if (equals && HttpHeaders.a(b4) && (responseBody = b4.k) != null) {
                GzipSource gzipSource = new GzipSource(responseBody.d());
                Headers.Builder g = headers.g();
                g.c(HttpConnection.CONTENT_ENCODING);
                g.c("Content-Length");
                Headers headers2 = g.b();
                Intrinsics.checkNotNullParameter(headers2, "headers");
                b5.f = headers2.g();
                RealResponseBody body = new RealResponseBody(Response.a(HttpConnection.CONTENT_TYPE, b4), -1L, Okio.b(gzipSource));
                Intrinsics.checkNotNullParameter(body, "body");
                b5.g = body;
            }
        }
        return b5.a();
    }
}
