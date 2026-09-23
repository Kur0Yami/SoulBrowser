package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;
import okio.Socket;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/Response;", "Ljava/io/Closeable;", "Builder", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Response implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final Request f22065c;
    public final Protocol f;
    public final String g;
    public final int h;
    public final Handshake i;
    public final Headers j;
    public final ResponseBody k;
    public final Socket l;
    public final Response m;
    public final Response n;
    public final Response o;
    public final long p;
    public final long q;
    public final Exchange r;
    public final TrailersSource s;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Response$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Response.kt\nokhttp3/Response$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,530:1\n1#2:531\n*E\n"})
    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Request f22066a;
        public Protocol b;
        public String d;
        public Handshake e;
        public Socket h;
        public Response i;
        public Response j;
        public Response k;
        public long l;
        public long m;
        public Exchange n;

        /* renamed from: c, reason: collision with root package name */
        public int f22067c = -1;
        public ResponseBody g = ResponseBody.f22068c;
        public TrailersSource o = TrailersSource.f22072a;
        public Headers.Builder f = new Headers.Builder();

        public static void b(String str, Response response) {
            if (response != null) {
                if (response.m == null) {
                    if (response.n == null) {
                        if (response.o != null) {
                            throw new IllegalArgumentException(str.concat(".priorResponse != null").toString());
                        }
                        return;
                    }
                    throw new IllegalArgumentException(str.concat(".cacheResponse != null").toString());
                }
                throw new IllegalArgumentException(str.concat(".networkResponse != null").toString());
            }
        }

        public final Response a() {
            int i = this.f22067c;
            if (i >= 0) {
                Request request = this.f22066a;
                if (request != null) {
                    Protocol protocol = this.b;
                    if (protocol != null) {
                        String str = this.d;
                        if (str != null) {
                            return new Response(request, protocol, str, i, this.e, this.f.b(), this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
                        }
                        throw new IllegalStateException("message == null");
                    }
                    throw new IllegalStateException("protocol == null");
                }
                throw new IllegalStateException("request == null");
            }
            throw new IllegalStateException(("code < 0: " + this.f22067c).toString());
        }
    }

    public Response(Request request, Protocol protocol, String message, int i, Handshake handshake, Headers headers, ResponseBody body, Socket socket, Response response, Response response2, Response response3, long j, long j2, Exchange exchange, TrailersSource trailersSource) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(trailersSource, "trailersSource");
        this.f22065c = request;
        this.f = protocol;
        this.g = message;
        this.h = i;
        this.i = handshake;
        this.j = headers;
        this.k = body;
        this.l = socket;
        this.m = response;
        this.n = response2;
        this.o = response3;
        this.p = j;
        this.q = j2;
        this.r = exchange;
        this.s = trailersSource;
    }

    public static String a(String name, Response response) {
        Intrinsics.checkNotNullParameter(name, "name");
        String a2 = response.j.a(name);
        if (a2 == null) {
            return null;
        }
        return a2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.Response$Builder, java.lang.Object] */
    public final Builder b() {
        Intrinsics.checkNotNullParameter(this, "response");
        ?? obj = new Object();
        obj.f22067c = -1;
        obj.g = ResponseBody.f22068c;
        obj.o = TrailersSource.f22072a;
        obj.f22066a = this.f22065c;
        obj.b = this.f;
        obj.f22067c = this.h;
        obj.d = this.g;
        obj.e = this.i;
        obj.f = this.j.g();
        obj.g = this.k;
        obj.h = this.l;
        obj.i = this.m;
        obj.j = this.n;
        obj.k = this.o;
        obj.l = this.p;
        obj.m = this.q;
        obj.n = this.r;
        obj.o = this.s;
        return obj;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.k.close();
    }

    public final String toString() {
        return "Response{protocol=" + this.f + ", code=" + this.h + ", message=" + this.g + ", url=" + this.f22065c.f22061a + '}';
    }
}
