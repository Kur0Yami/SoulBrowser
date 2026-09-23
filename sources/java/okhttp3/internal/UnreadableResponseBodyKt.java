package okhttp3.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Response;
import okhttp3.ResponseBody;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class UnreadableResponseBodyKt {
    public static final Response a(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        Response.Builder b = response.b();
        ResponseBody responseBody = response.k;
        UnreadableResponseBody body = new UnreadableResponseBody(responseBody.getF(), responseBody.getG());
        Intrinsics.checkNotNullParameter(body, "body");
        b.g = body;
        return b.a();
    }
}
