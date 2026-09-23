package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ForwardingSink implements Sink {

    /* renamed from: c, reason: collision with root package name */
    public final Sink f22205c;

    public ForwardingSink(Sink delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f22205c = delegate;
    }

    @Override // okio.Sink
    public void U(long j, Buffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f22205c.U(j, source);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22205c.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.f22205c.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f22205c.timeout();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.f22205c + ')';
    }
}
