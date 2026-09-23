package okio;

import android.support.v4.media.a;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/GzipSink;", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n+ 2 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,152:1\n51#2:153\n1#3:154\n85#4:155\n*S KotlinDebug\n*F\n+ 1 GzipSink.kt\nokio/GzipSink\n*L\n62#1:153\n130#1:155\n*E\n"})
/* loaded from: classes4.dex */
public final class GzipSink implements Sink {

    /* renamed from: c, reason: collision with root package name */
    public final RealBufferedSink f22207c;
    public final Deflater f;
    public final DeflaterSink g;
    public boolean h;
    public final CRC32 i;

    public GzipSink(RealBufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        RealBufferedSink realBufferedSink = new RealBufferedSink(sink);
        this.f22207c = realBufferedSink;
        Deflater deflater = new Deflater(-1, true);
        this.f = deflater;
        this.g = new DeflaterSink(realBufferedSink, deflater);
        this.i = new CRC32();
        Buffer buffer = realBufferedSink.f;
        buffer.L(8075);
        buffer.v(8);
        buffer.v(0);
        buffer.F(0);
        buffer.v(0);
        buffer.v(0);
    }

    @Override // okio.Sink
    public final void U(long j, Buffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j >= 0) {
            if (j == 0) {
                return;
            }
            Segment segment = source.f22195c;
            Intrinsics.checkNotNull(segment);
            long j2 = j;
            while (j2 > 0) {
                int min = (int) Math.min(j2, segment.f22218c - segment.b);
                this.i.update(segment.f22217a, segment.b, min);
                j2 -= min;
                segment = segment.f;
                Intrinsics.checkNotNull(segment);
            }
            this.g.U(j, source);
            return;
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int value;
        boolean z;
        Buffer buffer;
        Deflater deflater = this.f;
        RealBufferedSink realBufferedSink = this.f22207c;
        if (!this.h) {
            try {
                DeflaterSink deflaterSink = this.g;
                deflaterSink.f.finish();
                deflaterSink.a(false);
                value = (int) this.i.getValue();
                z = realBufferedSink.g;
                buffer = realBufferedSink.f;
            } catch (Throwable th) {
                th = th;
            }
            if (!z) {
                buffer.F(SegmentedByteString.c(value));
                realBufferedSink.a();
                int bytesRead = (int) deflater.getBytesRead();
                if (!realBufferedSink.g) {
                    buffer.F(SegmentedByteString.c(bytesRead));
                    realBufferedSink.a();
                    th = null;
                    try {
                        deflater.end();
                    } catch (Throwable th2) {
                        if (th == null) {
                            th = th2;
                        }
                    }
                    try {
                        realBufferedSink.close();
                    } catch (Throwable th3) {
                        if (th == null) {
                            th = th3;
                        }
                    }
                    this.h = true;
                    if (th == null) {
                        return;
                    } else {
                        throw th;
                    }
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalStateException("closed");
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        this.g.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f22207c.f22214c.timeout();
    }
}
