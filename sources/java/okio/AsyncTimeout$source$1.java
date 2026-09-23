package okio;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okio/AsyncTimeout$source$1", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,514:1\n195#2,11:515\n195#2,11:526\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n*L\n177#1:515,11\n181#1:526,11\n*E\n"})
/* loaded from: classes4.dex */
public final class AsyncTimeout$source$1 implements Source {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        throw null;
    }

    @Override // okio.Source
    public final /* bridge */ /* synthetic */ Timeout timeout() {
        return null;
    }

    public final String toString() {
        return "AsyncTimeout.source(null)";
    }
}
