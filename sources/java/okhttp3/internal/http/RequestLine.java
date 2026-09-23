package okhttp3.internal.http;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/RequestLine;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RequestLine {
    public static String a(HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String b = url.b();
        String d = url.d();
        if (d != null) {
            return b + '?' + d;
        }
        return b;
    }
}
