package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ForwardingSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ForwardingSource implements Source {

    /* renamed from: c, reason: collision with root package name */
    public final Source f22206c;

    public ForwardingSource(Source delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f22206c = delegate;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22206c.close();
    }

    @Override // okio.Source
    public long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return this.f22206c.p0(j, sink);
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.f22206c.timeout();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.f22206c + ')';
    }
}
