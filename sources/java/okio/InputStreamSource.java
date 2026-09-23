package okio;

import android.support.v4.media.a;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.internal._JavaIoKt;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/InputStreamSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmOkio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,234:1\n1#2:235\n85#3:236\n*S KotlinDebug\n*F\n+ 1 JvmOkio.kt\nokio/InputStreamSource\n*L\n93#1:236\n*E\n"})
/* loaded from: classes4.dex */
public class InputStreamSource implements Source {

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f22210c;
    public final Timeout f;

    public InputStreamSource(InputStream input, Timeout timeout) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(timeout, "timeout");
        this.f22210c = input;
        this.f = timeout;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f22210c.close();
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j == 0) {
            return 0L;
        }
        if (j >= 0) {
            try {
                this.f.f();
                Segment m = sink.m(1);
                int read = this.f22210c.read(m.f22217a, m.f22218c, (int) Math.min(j, 8192 - m.f22218c));
                if (read == -1) {
                    if (m.b == m.f22218c) {
                        sink.f22195c = m.a();
                        SegmentPool.a(m);
                        return -1L;
                    }
                    return -1L;
                }
                m.f22218c += read;
                long j2 = read;
                sink.f += j2;
                return j2;
            } catch (AssertionError e) {
                if (_JavaIoKt.a(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.Source
    /* renamed from: timeout, reason: from getter */
    public final Timeout getF() {
        return this.f;
    }

    public final String toString() {
        return "source(" + this.f22210c + ')';
    }
}
