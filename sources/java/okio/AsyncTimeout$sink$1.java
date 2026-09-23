package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okio/AsyncTimeout$sink$1", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,514:1\n195#2,11:515\n195#2,11:526\n195#2,11:537\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$sink$1\n*L\n151#1:515,11\n157#1:526,11\n161#1:537,11\n*E\n"})
/* loaded from: classes4.dex */
public final class AsyncTimeout$sink$1 implements Sink {
    @Override // okio.Sink
    public final void U(long j, Buffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.b(source.f, 0L, j);
        long j2 = 0;
        if (j > 0) {
            Segment segment = source.f22195c;
            Intrinsics.checkNotNull(segment);
            while (j2 < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                j2 += segment.f22218c - segment.b;
                if (j2 >= j) {
                    break;
                }
                segment = segment.f;
                Intrinsics.checkNotNull(segment);
            }
            throw null;
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        throw null;
    }

    @Override // okio.Sink
    public final /* bridge */ /* synthetic */ Timeout timeout() {
        return null;
    }

    public final String toString() {
        return "AsyncTimeout.sink(null)";
    }
}
