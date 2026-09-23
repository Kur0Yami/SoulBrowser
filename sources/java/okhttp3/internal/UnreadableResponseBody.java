package okhttp3.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import okio.Timeout;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/UnreadableResponseBody;", "Lokhttp3/ResponseBody;", "Lokio/Source;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class UnreadableResponseBody extends ResponseBody implements Source {
    public final MediaType f;
    public final long g;

    public UnreadableResponseBody(MediaType mediaType, long j) {
        this.f = mediaType;
        this.g = j;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: a, reason: from getter */
    public final long getG() {
        return this.g;
    }

    @Override // okhttp3.ResponseBody
    /* renamed from: b, reason: from getter */
    public final MediaType getF() {
        return this.f;
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // okhttp3.ResponseBody
    public final BufferedSource d() {
        return Okio.b(this);
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF() {
        return Timeout.d;
    }
}
