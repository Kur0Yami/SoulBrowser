package okhttp3.internal.http;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HttpMethod {
    public static final boolean a(String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, HttpMethods.GET) && !Intrinsics.areEqual(method, HttpMethods.HEAD)) {
            return true;
        }
        return false;
    }
}
