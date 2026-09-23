package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.RealBufferedSource;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/RealResponseBody;", "Lokhttp3/ResponseBody;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RealResponseBody extends ResponseBody {
    public final String f;
    public final long g;
    public final RealBufferedSource h;

    public RealResponseBody(String str, long j, RealBufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f = str;
        this.g = j;
        this.h = source;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: a, reason: from getter */
    public final long getG() {
        return this.g;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: b */
    public final MediaType getF() {
        String str = this.f;
        if (str == null) {
            return null;
        }
        Regex regex = MediaType.b;
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return MediaType.Companion.a(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // okhttp3.ResponseBody
    public final BufferedSource d() {
        return this.h;
    }
}
