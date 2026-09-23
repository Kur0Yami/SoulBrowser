package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ForwardingSink;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0010\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/cache/FaultHidingSink;", "Lokio/ForwardingSink;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public class FaultHidingSink extends ForwardingSink {
    public boolean f;

    @Override // okio.ForwardingSink, okio.Sink
    public final void U(long j, Buffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.f) {
            source.skip(j);
            return;
        }
        try {
            super.U(j, source);
        } catch (IOException unused) {
            this.f = true;
            throw null;
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
        } catch (IOException unused) {
            this.f = true;
            throw null;
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (this.f) {
            return;
        }
        try {
            super.flush();
        } catch (IOException unused) {
            this.f = true;
            throw null;
        }
    }
}
