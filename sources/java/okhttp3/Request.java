package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.EmptyTags;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.HttpMethod;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/Request;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Request.kt\nokhttp3/Request\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,495:1\n92#1:497\n1#2:496\n1878#3,3:498\n*S KotlinDebug\n*F\n+ 1 Request.kt\nokhttp3/Request\n*L\n107#1:497\n180#1:498,3\n*E\n"})
/* loaded from: classes4.dex */
public final class Request {

    /* renamed from: a, reason: collision with root package name */
    public final HttpUrl f22061a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Headers f22062c;
    public final RequestBody d;
    public final EmptyTags e;
    public CacheControl f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Request$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public HttpUrl f22063a;
        public RequestBody d;
        public EmptyTags e = EmptyTags.f22074a;
        public String b = HttpMethods.GET;

        /* renamed from: c, reason: collision with root package name */
        public Headers.Builder f22064c = new Headers.Builder();

        public final void a(String name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.f22064c.d(name, value);
        }

        public final void b(String method, RequestBody requestBody) {
            Intrinsics.checkNotNullParameter(method, "method");
            if (method.length() > 0) {
                if (requestBody == null) {
                    Intrinsics.checkNotNullParameter(method, "method");
                    if (Intrinsics.areEqual(method, HttpMethods.POST) || Intrinsics.areEqual(method, HttpMethods.PUT) || Intrinsics.areEqual(method, HttpMethods.PATCH) || Intrinsics.areEqual(method, "PROPPATCH") || Intrinsics.areEqual(method, "QUERY") || Intrinsics.areEqual(method, "REPORT")) {
                        throw new IllegalArgumentException(android.support.v4.media.a.l("method ", method, " must have a request body.").toString());
                    }
                } else if (!HttpMethod.a(method)) {
                    throw new IllegalArgumentException(android.support.v4.media.a.l("method ", method, " must not have a request body.").toString());
                }
                this.b = method;
                this.d = requestBody;
                return;
            }
            throw new IllegalArgumentException("method.isEmpty() == true");
        }

        public final void c(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.f22064c.c(name);
        }

        public final void d(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            if (StringsKt.H(url, "ws:")) {
                StringBuilder sb = new StringBuilder("http:");
                String substring = url.substring(3);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                sb.append(substring);
                url = sb.toString();
            } else if (StringsKt.H(url, "wss:")) {
                StringBuilder sb2 = new StringBuilder("https:");
                String substring2 = url.substring(4);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                sb2.append(substring2);
                url = sb2.toString();
            }
            Intrinsics.checkNotNullParameter(url, "<this>");
            HttpUrl.Builder builder = new HttpUrl.Builder();
            builder.b(null, url);
            HttpUrl url2 = builder.a();
            Intrinsics.checkNotNullParameter(url2, "url");
            this.f22063a = url2;
        }
    }

    public Request(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        HttpUrl httpUrl = builder.f22063a;
        if (httpUrl != null) {
            this.f22061a = httpUrl;
            this.b = builder.b;
            this.f22062c = builder.f22064c.b();
            this.d = builder.d;
            this.e = builder.e;
            return;
        }
        throw new IllegalStateException("url == null");
    }

    public final String a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return this.f22062c.a(name);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.Request$Builder, java.lang.Object] */
    public final Builder b() {
        Intrinsics.checkNotNullParameter(this, "request");
        ?? obj = new Object();
        obj.f22063a = this.f22061a;
        obj.b = this.b;
        obj.d = this.d;
        obj.e = this.e;
        obj.f22064c = this.f22062c.g();
        return obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.f22061a);
        Headers headers = this.f22062c;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            Iterator<Pair<? extends String, ? extends String>> it = headers.iterator();
            int i = 0;
            while (it.hasNext()) {
                Pair<? extends String, ? extends String> next = it.next();
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair<? extends String, ? extends String> pair = next;
                String component1 = pair.component1();
                String component2 = pair.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(component1);
                sb.append(':');
                if (_UtilCommonKt.i(component1)) {
                    component2 = "██";
                }
                sb.append(component2);
                i = i2;
            }
            sb.append(']');
        }
        EmptyTags emptyTags = EmptyTags.f22074a;
        EmptyTags emptyTags2 = this.e;
        if (!Intrinsics.areEqual(emptyTags2, emptyTags)) {
            sb.append(", tags=");
            sb.append(emptyTags2);
        }
        sb.append('}');
        return sb.toString();
    }
}
