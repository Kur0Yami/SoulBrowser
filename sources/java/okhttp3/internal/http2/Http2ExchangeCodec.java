package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http2.Http2Stream;
import okio.ByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final List g;
    public static final List h;

    /* renamed from: a, reason: collision with root package name */
    public final RealConnection f22144a;
    public final RealInterceptorChain b;

    /* renamed from: c, reason: collision with root package name */
    public final Http2Connection f22145c;
    public volatile Http2Stream d;
    public final Protocol e;
    public volatile boolean f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "CONNECTION", "Ljava/lang/String;", "HOST", "KEEP_ALIVE", "PROXY_CONNECTION", "TRANSFER_ENCODING", "TE", "ENCODING", "UPGRADE", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "HTTP_2_SKIPPED_REQUEST_HEADERS", "Ljava/util/List;", "HTTP_2_SKIPPED_RESPONSE_HEADERS", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    static {
        String[] elements = {"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"};
        TimeZone timeZone = _UtilJvmKt.f22077a;
        Intrinsics.checkNotNullParameter(elements, "elements");
        g = _UtilJvmKt.i(elements);
        String[] elements2 = {"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"};
        Intrinsics.checkNotNullParameter(elements2, "elements");
        h = _UtilJvmKt.i(elements2);
    }

    public Http2ExchangeCodec(OkHttpClient client, RealConnection carrier, RealInterceptorChain chain, Http2Connection http2Connection) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(carrier, "carrier");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(http2Connection, "http2Connection");
        this.f22144a = carrier;
        this.b = chain;
        this.f22145c = http2Connection;
        List list = client.r;
        Protocol protocol = Protocol.k;
        this.e = list.contains(protocol) ? protocol : Protocol.j;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        Http2Stream http2Stream = this.d;
        Intrinsics.checkNotNull(http2Stream);
        http2Stream.m.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) {
        boolean z;
        int i;
        Http2Stream http2Stream;
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.d != null) {
            return;
        }
        boolean z2 = false;
        if (request.d != null) {
            z = true;
        } else {
            z = false;
        }
        Intrinsics.checkNotNullParameter(request, "request");
        Headers headers = request.f22062c;
        ArrayList requestHeaders = new ArrayList(headers.size() + 4);
        requestHeaders.add(new Header(Header.f, request.b));
        ByteString byteString = Header.g;
        HttpUrl httpUrl = request.f22061a;
        requestHeaders.add(new Header(byteString, RequestLine.a(httpUrl)));
        String a2 = request.a("Host");
        if (a2 != null) {
            requestHeaders.add(new Header(Header.i, a2));
        }
        requestHeaders.add(new Header(Header.h, httpUrl.f22050a));
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String c2 = headers.c(i2);
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = c2.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!g.contains(lowerCase) || (Intrinsics.areEqual(lowerCase, "te") && Intrinsics.areEqual(headers.k(i2), "trailers"))) {
                requestHeaders.add(new Header(lowerCase, headers.k(i2)));
            }
        }
        Http2Connection http2Connection = this.f22145c;
        http2Connection.getClass();
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        boolean z3 = !z;
        synchronized (http2Connection.A) {
            synchronized (http2Connection) {
                try {
                    if (http2Connection.i > 1073741823) {
                        http2Connection.f(ErrorCode.k);
                    }
                    if (!http2Connection.j) {
                        i = http2Connection.i;
                        http2Connection.i = i + 2;
                        http2Stream = new Http2Stream(i, http2Connection, z3, false, null);
                        if (!z || http2Connection.x >= http2Connection.y || http2Stream.h >= http2Stream.i) {
                            z2 = true;
                        }
                        if (http2Stream.j()) {
                            http2Connection.f.put(Integer.valueOf(i), http2Stream);
                        }
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IOException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.A.f(i, requestHeaders, z3);
        }
        if (z2) {
            http2Connection.A.flush();
        }
        this.d = http2Stream;
        if (!this.f) {
            Http2Stream http2Stream2 = this.d;
            Intrinsics.checkNotNull(http2Stream2);
            Http2Stream.StreamTimeout streamTimeout = http2Stream2.n;
            long j = this.b.g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            streamTimeout.g(j, timeUnit);
            Http2Stream http2Stream3 = this.d;
            Intrinsics.checkNotNull(http2Stream3);
            http2Stream3.o.g(this.b.h, timeUnit);
            return;
        }
        Http2Stream http2Stream4 = this.d;
        Intrinsics.checkNotNull(http2Stream4);
        http2Stream4.g(ErrorCode.l);
        throw new IOException("Canceled");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean c() {
        boolean z;
        Http2Stream http2Stream = this.d;
        if (http2Stream == null) {
            return false;
        }
        synchronized (http2Stream) {
            Http2Stream.FramingSource framingSource = http2Stream.l;
            if (framingSource.f) {
                if (framingSource.h.D()) {
                    z = true;
                }
            }
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.f = true;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            http2Stream.g(ErrorCode.l);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source d(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Http2Stream http2Stream = this.d;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002a, code lost:
    
        if (r3 == false) goto L20;
     */
    @Override // okhttp3.internal.http.ExchangeCodec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Response.Builder e(boolean r11) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2ExchangeCodec.e(boolean):okhttp3.Response$Builder");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.f22145c.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket g() {
        Http2Stream http2Stream = this.d;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long h(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (!HttpHeaders.a(response)) {
            return 0L;
        }
        return _UtilJvmKt.d(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    /* renamed from: i */
    public final ExchangeCodec.Carrier getB() {
        return this.f22144a;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink j(Request request, long j) {
        Intrinsics.checkNotNullParameter(request, "request");
        Http2Stream http2Stream = this.d;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.m;
    }
}
