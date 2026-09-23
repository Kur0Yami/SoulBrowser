package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.internal._ZlibJvmKt;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/DeflaterSink;", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDeflaterSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeflaterSink.kt\nokio/DeflaterSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,140:1\n85#2:141\n*S KotlinDebug\n*F\n+ 1 DeflaterSink.kt\nokio/DeflaterSink\n*L\n39#1:141\n*E\n"})
/* loaded from: classes4.dex */
public final class DeflaterSink implements Sink {

    /* renamed from: c, reason: collision with root package name */
    public final RealBufferedSink f22199c;
    public final Deflater f;
    public boolean g;

    public DeflaterSink(RealBufferedSink sink, Deflater deflater) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(deflater, "deflater");
        this.f22199c = sink;
        this.f = deflater;
    }

    @Override // okio.Sink
    public final void U(long j, Buffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.b(source.f, 0L, j);
        while (true) {
            Deflater deflater = this.f;
            if (j > 0) {
                Segment segment = source.f22195c;
                Intrinsics.checkNotNull(segment);
                int min = (int) Math.min(j, segment.f22218c - segment.b);
                deflater.setInput(segment.f22217a, segment.b, min);
                a(false);
                long j2 = min;
                source.f -= j2;
                int i = segment.b + min;
                segment.b = i;
                if (i == segment.f22218c) {
                    source.f22195c = segment.a();
                    SegmentPool.a(segment);
                }
                j -= j2;
            } else {
                deflater.setInput(_ZlibJvmKt.f22235a, 0, 0);
                return;
            }
        }
    }

    public final void a(boolean z) {
        Segment m;
        int deflate;
        RealBufferedSink realBufferedSink = this.f22199c;
        Buffer buffer = realBufferedSink.f;
        while (true) {
            m = buffer.m(1);
            byte[] bArr = m.f22217a;
            Deflater deflater = this.f;
            if (z) {
                try {
                    int i = m.f22218c;
                    deflate = deflater.deflate(bArr, i, 8192 - i, 2);
                } catch (NullPointerException e) {
                    throw new IOException("Deflater already closed", e);
                }
            } else {
                int i2 = m.f22218c;
                deflate = deflater.deflate(bArr, i2, 8192 - i2);
            }
            if (deflate > 0) {
                m.f22218c += deflate;
                buffer.f += deflate;
                realBufferedSink.a();
            } else if (deflater.needsInput()) {
                break;
            }
        }
        if (m.b == m.f22218c) {
            buffer.f22195c = m.a();
            SegmentPool.a(m);
        }
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Deflater deflater = this.f;
        if (!this.g) {
            try {
                deflater.finish();
                a(false);
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                deflater.end();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            try {
                this.f22199c.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.g = true;
            if (th == null) {
            } else {
                throw th;
            }
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        a(true);
        this.f22199c.flush();
    }

    @Override // okio.Sink
    public final Timeout timeout() {
        return this.f22199c.f22214c.timeout();
    }

    public final String toString() {
        return "DeflaterSink(" + this.f22199c + ')';
    }
}
