package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http2.Hpack;
import okhttp3.internal.http2.Http2Connection;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Reader;", "Ljava/io/Closeable;", "ContinuationSource", "Handler", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Http2Reader implements Closeable {
    public static final Logger h;

    /* renamed from: c, reason: collision with root package name */
    public final BufferedSource f22146c;
    public final ContinuationSource f;
    public final Hpack.Reader g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static int a(int i, int i2, int i3) {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            throw new IOException(androidx.work.impl.workers.a.s("PROTOCOL_ERROR padding ", i3, i, " > remaining length "));
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Lokio/Source;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ContinuationSource implements Source {

        /* renamed from: c, reason: collision with root package name */
        public final BufferedSource f22147c;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;

        public ContinuationSource(BufferedSource source) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.f22147c = source;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // okio.Source
        public final long p0(long j, Buffer sink) {
            int i;
            int readInt;
            Intrinsics.checkNotNullParameter(sink, "sink");
            do {
                int i2 = this.i;
                BufferedSource bufferedSource = this.f22147c;
                if (i2 == 0) {
                    bufferedSource.skip(this.j);
                    this.j = 0;
                    if ((this.g & 4) == 0) {
                        i = this.h;
                        int k = _UtilCommonKt.k(bufferedSource);
                        this.i = k;
                        this.f = k;
                        int readByte = bufferedSource.readByte() & UByte.MAX_VALUE;
                        this.g = bufferedSource.readByte() & UByte.MAX_VALUE;
                        Logger logger = Http2Reader.h;
                        if (logger.isLoggable(Level.FINE)) {
                            ByteString byteString = Http2.f22137a;
                            logger.fine(Http2.b(true, this.h, this.f, readByte, this.g));
                        }
                        readInt = bufferedSource.readInt() & Integer.MAX_VALUE;
                        this.h = readInt;
                        if (readByte != 9) {
                            throw new IOException(readByte + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long p0 = bufferedSource.p0(Math.min(j, i2), sink);
                    if (p0 != -1) {
                        this.i -= (int) p0;
                        return p0;
                    }
                }
                return -1L;
            } while (readInt == i);
            throw new IOException("TYPE_CONTINUATION streamId changed");
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public final Timeout getF() {
            return this.f22147c.getF();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Handler;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Handler {
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(...)");
        h = logger;
    }

    public Http2Reader(BufferedSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f22146c = source;
        ContinuationSource continuationSource = new ContinuationSource(source);
        this.f = continuationSource;
        this.g = new Hpack.Reader(continuationSource);
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x01f6, code lost:
    
        throw new java.io.IOException(android.support.v4.media.a.e(r9, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(boolean r19, okhttp3.internal.http2.Http2Connection.ReaderRunnable r20) {
        /*
            Method dump skipped, instructions count: 888
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Reader.a(boolean, okhttp3.internal.http2.Http2Connection$ReaderRunnable):boolean");
    }

    public final List b(int i, int i2, int i3, int i4) {
        ContinuationSource continuationSource = this.f;
        continuationSource.i = i;
        continuationSource.f = i;
        continuationSource.j = i2;
        continuationSource.g = i3;
        continuationSource.h = i4;
        Hpack.Reader reader = this.g;
        RealBufferedSource realBufferedSource = reader.f22134c;
        ArrayList arrayList = reader.b;
        while (!realBufferedSource.D()) {
            byte readByte = realBufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.f22076a;
            int i5 = readByte & UByte.MAX_VALUE;
            if (i5 != 128) {
                if ((readByte & ByteCompanionObject.MIN_VALUE) == 128) {
                    int e = reader.e(i5, 127);
                    int i6 = e - 1;
                    if (i6 >= 0) {
                        Header[] headerArr = Hpack.f22132a;
                        if (i6 <= headerArr.length - 1) {
                            arrayList.add(headerArr[i6]);
                        }
                    }
                    int length = reader.e + 1 + (i6 - Hpack.f22132a.length);
                    if (length >= 0) {
                        Header[] headerArr2 = reader.d;
                        if (length < headerArr2.length) {
                            Header header = headerArr2[length];
                            Intrinsics.checkNotNull(header);
                            arrayList.add(header);
                        }
                    }
                    throw new IOException(android.support.v4.media.a.e(e, "Header index too large "));
                }
                if (i5 == 64) {
                    Header[] headerArr3 = Hpack.f22132a;
                    ByteString d = reader.d();
                    Hpack.a(d);
                    reader.c(new Header(d, reader.d()));
                } else if ((readByte & 64) == 64) {
                    reader.c(new Header(reader.b(reader.e(i5, 63) - 1), reader.d()));
                } else if ((readByte & 32) == 32) {
                    int e2 = reader.e(i5, 31);
                    reader.f22133a = e2;
                    if (e2 >= 0 && e2 <= 4096) {
                        int i7 = reader.g;
                        if (e2 < i7) {
                            if (e2 == 0) {
                                ArraysKt___ArraysJvmKt.fill$default(reader.d, (Object) null, 0, 0, 6, (Object) null);
                                reader.e = reader.d.length - 1;
                                reader.f = 0;
                                reader.g = 0;
                            } else {
                                reader.a(i7 - e2);
                            }
                        }
                    } else {
                        throw new IOException("Invalid dynamic table size update " + reader.f22133a);
                    }
                } else if (i5 != 16 && i5 != 0) {
                    arrayList.add(new Header(reader.b(reader.e(i5, 15) - 1), reader.d()));
                } else {
                    Header[] headerArr4 = Hpack.f22132a;
                    ByteString d2 = reader.d();
                    Hpack.a(d2);
                    arrayList.add(new Header(d2, reader.d()));
                }
            } else {
                throw new IOException("index == 0");
            }
        }
        List list = CollectionsKt.toList(arrayList);
        arrayList.clear();
        return list;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f22146c.close();
    }

    public final void d(Http2Connection.ReaderRunnable readerRunnable, int i) {
        BufferedSource bufferedSource = this.f22146c;
        bufferedSource.readInt();
        bufferedSource.readByte();
        byte[] bArr = _UtilCommonKt.f22076a;
    }
}
