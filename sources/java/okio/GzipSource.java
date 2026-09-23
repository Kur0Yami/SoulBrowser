package okio;

import android.support.v4.media.a;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/GzipSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,222:1\n1#2:223\n63#3:224\n63#3:226\n63#3:228\n63#3:229\n63#3:230\n63#3:232\n63#3:234\n204#4:225\n204#4:227\n204#4:231\n204#4:233\n88#5:235\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n103#1:224\n105#1:226\n117#1:228\n118#1:229\n120#1:230\n131#1:232\n142#1:234\n104#1:225\n115#1:227\n128#1:231\n139#1:233\n185#1:235\n*E\n"})
/* loaded from: classes4.dex */
public final class GzipSource implements Source {

    /* renamed from: c, reason: collision with root package name */
    public byte f22208c;
    public final RealBufferedSource f;
    public final Inflater g;
    public final InflaterSource h;
    public final CRC32 i;

    public GzipSource(BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.f = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.g = inflater;
        this.h = new InflaterSource(realBufferedSource, inflater);
        this.i = new CRC32();
    }

    public static void a(int i, int i2, String str) {
        String padStart;
        String padStart2;
        if (i2 == i) {
            return;
        }
        StringBuilder v = a.v(str, ": actual 0x");
        padStart = StringsKt__StringsKt.padStart(SegmentedByteString.e(i2), 8, '0');
        v.append(padStart);
        v.append(" != expected 0x");
        padStart2 = StringsKt__StringsKt.padStart(SegmentedByteString.e(i), 8, '0');
        v.append(padStart2);
        throw new IOException(v.toString());
    }

    public final void b(Buffer buffer, long j, long j2) {
        Segment segment = buffer.f22195c;
        Intrinsics.checkNotNull(segment);
        while (true) {
            int i = segment.f22218c;
            int i2 = segment.b;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            segment = segment.f;
            Intrinsics.checkNotNull(segment);
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.f22218c - r6, j2);
            this.i.update(segment.f22217a, (int) (segment.b + j), min);
            j2 -= min;
            segment = segment.f;
            Intrinsics.checkNotNull(segment);
            j = 0;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.h.close();
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        boolean z;
        GzipSource gzipSource = this;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (j == 0) {
                return 0L;
            }
            byte b = gzipSource.f22208c;
            CRC32 crc32 = gzipSource.i;
            RealBufferedSource realBufferedSource = gzipSource.f;
            if (b == 0) {
                realBufferedSource.D0(10L);
                Buffer buffer = realBufferedSource.f;
                byte d = buffer.d(3L);
                if (((d >> 1) & 1) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    gzipSource.b(buffer, 0L, 10L);
                }
                a(8075, realBufferedSource.readShort(), "ID1ID2");
                realBufferedSource.skip(8L);
                if (((d >> 2) & 1) == 1) {
                    realBufferedSource.D0(2L);
                    if (z) {
                        b(buffer, 0L, 2L);
                    }
                    long t0 = buffer.t0() & UShort.MAX_VALUE;
                    realBufferedSource.D0(t0);
                    if (z) {
                        b(buffer, 0L, t0);
                    }
                    realBufferedSource.skip(t0);
                }
                if (((d >> 3) & 1) == 1) {
                    long a2 = realBufferedSource.a((byte) 0, 0L, LongCompanionObject.MAX_VALUE);
                    if (a2 != -1) {
                        if (z) {
                            b(buffer, 0L, a2 + 1);
                        }
                        realBufferedSource.skip(a2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((d >> 4) & 1) == 1) {
                    long a3 = realBufferedSource.a((byte) 0, 0L, LongCompanionObject.MAX_VALUE);
                    if (a3 != -1) {
                        if (z) {
                            gzipSource = this;
                            gzipSource.b(buffer, 0L, a3 + 1);
                        } else {
                            gzipSource = this;
                        }
                        realBufferedSource.skip(a3 + 1);
                    } else {
                        throw new EOFException();
                    }
                } else {
                    gzipSource = this;
                }
                if (z) {
                    a(realBufferedSource.t0(), (short) crc32.getValue(), "FHCRC");
                    crc32.reset();
                }
                gzipSource.f22208c = (byte) 1;
            }
            if (gzipSource.f22208c == 1) {
                long j2 = sink.f;
                long p0 = gzipSource.h.p0(j, sink);
                if (p0 != -1) {
                    gzipSource.b(sink, j2, p0);
                    return p0;
                }
                gzipSource.f22208c = (byte) 2;
            }
            if (gzipSource.f22208c == 2) {
                a(realBufferedSource.l0(), (int) crc32.getValue(), "CRC");
                a(realBufferedSource.l0(), (int) gzipSource.g.getBytesWritten(), "ISIZE");
                gzipSource.f22208c = (byte) 3;
                if (!realBufferedSource.D()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF() {
        return this.f.f22215c.getF();
    }
}
