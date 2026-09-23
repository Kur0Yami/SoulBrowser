package okhttp3.internal.http;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.GzipSink;
import okio.Okio;
import okio.RealBufferedSink;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/GzipRequestBody;", "Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipRequestBody.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipRequestBody.kt\nokhttp3/internal/http/GzipRequestBody\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"})
/* loaded from: classes4.dex */
public final class GzipRequestBody extends RequestBody {
    @Override // okhttp3.RequestBody
    public final long a() {
        return -1L;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        throw null;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        throw null;
    }

    @Override // okhttp3.RequestBody
    public final void d(RealBufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        RealBufferedSink a2 = Okio.a(new GzipSink(sink));
        try {
            throw null;
        } finally {
        }
    }
}
