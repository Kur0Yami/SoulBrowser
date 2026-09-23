package okhttp3.internal.cache;

import kotlin.Metadata;
import okio.ForwardingSource;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/cache/DiskLruCache$Entry$newSource$1", "Lokio/ForwardingSource;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DiskLruCache$Entry$newSource$1 extends ForwardingSource {
    public boolean f;

    @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        super.close();
        if (this.f) {
            return;
        }
        this.f = true;
        throw null;
    }
}
