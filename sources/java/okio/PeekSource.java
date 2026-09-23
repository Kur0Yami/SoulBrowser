package okio;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
/* loaded from: classes4.dex */
public final class PeekSource implements Source {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.Source
    public final Timeout timeout() {
        throw null;
    }
}
