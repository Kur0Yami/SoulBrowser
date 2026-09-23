package okhttp3.internal.http1;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Arrays;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingTimeout;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;
import okio.Timeout$Companion$NONE$1;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "KnownLengthSink", "ChunkedSink", "AbstractSource", "FixedLengthSource", "ChunkedSource", "UnknownLengthSource", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
/* loaded from: classes4.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Headers f;

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f22123a;
    public final ExchangeCodec.Carrier b;

    /* renamed from: c, reason: collision with root package name */
    public final BufferedSocket f22124c;
    public int d;
    public final HeadersReader e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b¢\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokio/Source;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public abstract class AbstractSource implements Source {

        /* renamed from: c, reason: collision with root package name */
        public final HttpUrl f22125c;
        public final ForwardingTimeout f;
        public boolean g;
        public final /* synthetic */ Http1ExchangeCodec h;

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.h = http1ExchangeCodec;
            this.f22125c = url;
            this.f = new ForwardingTimeout(http1ExchangeCodec.f22124c.a().getF());
        }

        public final void a(Headers trailers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            Intrinsics.checkNotNullParameter(trailers, "trailers");
            Http1ExchangeCodec http1ExchangeCodec = this.h;
            int i = http1ExchangeCodec.d;
            if (i != 6) {
                if (i == 5) {
                    Http1ExchangeCodec.k(http1ExchangeCodec, this.f);
                    http1ExchangeCodec.d = 6;
                    if (trailers.size() > 0 && (okHttpClient = http1ExchangeCodec.f22123a) != null && (cookieJar = okHttpClient.j) != null) {
                        HttpHeaders.d(cookieJar, this.f22125c, trailers);
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("state: " + http1ExchangeCodec.d);
            }
        }

        @Override // okio.Source
        public long p0(long j, Buffer sink) {
            Http1ExchangeCodec http1ExchangeCodec = this.h;
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                return http1ExchangeCodec.f22124c.a().p0(j, sink);
            } catch (IOException e) {
                http1ExchangeCodec.b.e();
                a(Http1ExchangeCodec.f);
                throw e;
            }
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public final Timeout getF() {
            return this.f;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink;", "Lokio/Sink;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    /* loaded from: classes4.dex */
    public final class ChunkedSink implements Sink {

        /* renamed from: c, reason: collision with root package name */
        public final ForwardingTimeout f22126c;
        public boolean f;

        public ChunkedSink() {
            this.f22126c = new ForwardingTimeout(Http1ExchangeCodec.this.f22124c.b().timeout());
        }

        @Override // okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.f) {
                if (j == 0) {
                    return;
                }
                BufferedSink b = Http1ExchangeCodec.this.f22124c.b();
                b.Y(j);
                b.M("\r\n");
                b.U(j, source);
                b.M("\r\n");
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.f) {
                return;
            }
            this.f = true;
            Http1ExchangeCodec.this.f22124c.b().M("0\r\n\r\n");
            Http1ExchangeCodec.k(Http1ExchangeCodec.this, this.f22126c);
            Http1ExchangeCodec.this.d = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final synchronized void flush() {
            if (this.f) {
                return;
            }
            Http1ExchangeCodec.this.f22124c.b().flush();
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.f22126c;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$ChunkedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    /* loaded from: classes4.dex */
    public final class ChunkedSource extends AbstractSource {
        public long i;
        public boolean j;
        public final /* synthetic */ Http1ExchangeCodec k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url) {
            super(http1ExchangeCodec, url);
            Intrinsics.checkNotNullParameter(url, "url");
            this.k = http1ExchangeCodec;
            this.i = -1L;
            this.j = true;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.g) {
                return;
            }
            if (this.j) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                TimeZone timeZone = _UtilJvmKt.f22077a;
                Intrinsics.checkNotNullParameter(this, "<this>");
                Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
                try {
                    z = _UtilJvmKt.e(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    this.k.b.e();
                    a(Http1ExchangeCodec.f);
                }
            }
            this.g = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
        
            if (r7 != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00d6, code lost:
        
            if (r12.j == false) goto L40;
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long p0(long r13, okio.Buffer r15) {
            /*
                Method dump skipped, instructions count: 317
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.p0(long, okio.Buffer):long");
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "NO_CHUNK_YET", "J", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "STATE_IDLE", "I", "STATE_OPEN_REQUEST_BODY", "STATE_WRITING_REQUEST_BODY", "STATE_READ_RESPONSE_HEADERS", "STATE_OPEN_RESPONSE_BODY", "STATE_READING_RESPONSE_BODY", "STATE_CLOSED", "Lokhttp3/Headers;", "TRAILERS_RESPONSE_BODY_TRUNCATED", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$FixedLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    /* loaded from: classes4.dex */
    public final class FixedLengthSource extends AbstractSource {
        public long i;
        public final /* synthetic */ Http1ExchangeCodec j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl url, long j) {
            super(http1ExchangeCodec, url);
            Intrinsics.checkNotNullParameter(url, "url");
            this.j = http1ExchangeCodec;
            this.i = j;
            if (j == 0) {
                a(Headers.f);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.g) {
                return;
            }
            if (this.i != 0) {
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                TimeZone timeZone = _UtilJvmKt.f22077a;
                Intrinsics.checkNotNullParameter(this, "<this>");
                Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
                try {
                    z = _UtilJvmKt.e(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    this.j.b.e();
                    a(Http1ExchangeCodec.f);
                }
            }
            this.g = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long p0(long j, Buffer sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j >= 0) {
                if (!this.g) {
                    long j2 = this.i;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long p0 = super.p0(Math.min(j2, j), sink);
                    if (p0 != -1) {
                        long j3 = this.i - p0;
                        this.i = j3;
                        if (j3 == 0) {
                            a(Headers.f);
                        }
                        return p0;
                    }
                    this.j.b.e();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a(Http1ExchangeCodec.f);
                    throw protocolException;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;", "Lokio/Sink;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    /* loaded from: classes4.dex */
    public final class KnownLengthSink implements Sink {

        /* renamed from: c, reason: collision with root package name */
        public final ForwardingTimeout f22127c;
        public boolean f;

        public KnownLengthSink() {
            this.f22127c = new ForwardingTimeout(Http1ExchangeCodec.this.f22124c.b().timeout());
        }

        @Override // okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.f) {
                long j2 = source.f;
                byte[] bArr = _UtilCommonKt.f22076a;
                if (j >= 0 && 0 <= j2 && j2 >= j) {
                    Http1ExchangeCodec.this.f22124c.b().U(j, source);
                    return;
                }
                throw new ArrayIndexOutOfBoundsException("length=" + j2 + ", offset=0, count=0");
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f) {
                return;
            }
            this.f = true;
            ForwardingTimeout forwardingTimeout = this.f22127c;
            Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
            Http1ExchangeCodec.k(http1ExchangeCodec, forwardingTimeout);
            http1ExchangeCodec.d = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            if (this.f) {
                return;
            }
            Http1ExchangeCodec.this.f22124c.b().flush();
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.f22127c;
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec$AbstractSource;", "Lokhttp3/internal/http1/Http1ExchangeCodec;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nHttp1ExchangeCodec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http1ExchangeCodec.kt\nokhttp3/internal/http1/Http1ExchangeCodec$UnknownLengthSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1#2:563\n*E\n"})
    /* loaded from: classes4.dex */
    public final class UnknownLengthSource extends AbstractSource {
        public boolean i;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.g) {
                return;
            }
            if (!this.i) {
                a(Http1ExchangeCodec.f);
            }
            this.g = true;
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long p0(long j, Buffer sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j >= 0) {
                if (!this.g) {
                    if (this.i) {
                        return -1L;
                    }
                    long p0 = super.p0(j, sink);
                    if (p0 == -1) {
                        this.i = true;
                        a(Headers.f);
                        return -1L;
                    }
                    return p0;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
        }
    }

    static {
        CharSequence trim;
        Headers headers = Headers.f;
        String[] namesAndValues = {"OkHttp-Response-Body", "Truncated"};
        Intrinsics.checkNotNullParameter(namesAndValues, "namesAndValues");
        String[] inputNamesAndValues = (String[]) Arrays.copyOf(namesAndValues, 2);
        Intrinsics.checkNotNullParameter(inputNamesAndValues, "inputNamesAndValues");
        if (inputNamesAndValues.length % 2 == 0) {
            String[] strArr = (String[]) Arrays.copyOf(inputNamesAndValues, inputNamesAndValues.length);
            int length = strArr.length;
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArr[i2] != null) {
                    trim = StringsKt__StringsKt.trim((CharSequence) inputNamesAndValues[i2]);
                    strArr[i2] = trim.toString();
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, strArr.length - 1, 2);
            if (progressionLastElement >= 0) {
                while (true) {
                    String str = strArr[i];
                    String str2 = strArr[i + 1];
                    _HeadersCommonKt.b(str);
                    _HeadersCommonKt.c(str2, str);
                    if (i == progressionLastElement) {
                        break;
                    } else {
                        i += 2;
                    }
                }
            }
            f = new Headers(strArr);
            return;
        }
        throw new IllegalArgumentException("Expected alternating header names and values");
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, BufferedSocket socket) {
        Intrinsics.checkNotNullParameter(carrier, "carrier");
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.f22123a = okHttpClient;
        this.b = carrier;
        this.f22124c = socket;
        this.e = new HeadersReader(socket.a());
    }

    public static final void k(Http1ExchangeCodec http1ExchangeCodec, ForwardingTimeout forwardingTimeout) {
        Timeout timeout = forwardingTimeout.e;
        Timeout$Companion$NONE$1 delegate = Timeout.d;
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        forwardingTimeout.e = delegate;
        timeout.a();
        timeout.b();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        this.f22124c.b().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Proxy.Type proxyType = this.b.getN().b.type();
        Intrinsics.checkNotNullExpressionValue(proxyType, "type(...)");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(proxyType, "proxyType");
        StringBuilder sb = new StringBuilder();
        sb.append(request.b);
        sb.append(' ');
        HttpUrl httpUrl = request.f22061a;
        if (!Intrinsics.areEqual(httpUrl.f22050a, "https") && proxyType == Proxy.Type.HTTP) {
            sb.append(httpUrl);
        } else {
            sb.append(RequestLine.a(httpUrl));
        }
        sb.append(" HTTP/1.1");
        n(request.f22062c, sb.toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean c() {
        if (this.d == 6) {
            return true;
        }
        return false;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.b.cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source d(Response response) {
        boolean equals;
        Intrinsics.checkNotNullParameter(response, "response");
        boolean a2 = HttpHeaders.a(response);
        Request request = response.f22065c;
        if (a2) {
            equals = StringsKt__StringsJVMKt.equals("chunked", Response.a("Transfer-Encoding", response), true);
            if (equals) {
                HttpUrl httpUrl = request.f22061a;
                if (this.d == 4) {
                    this.d = 5;
                    return new ChunkedSource(this, httpUrl);
                }
                throw new IllegalStateException(("state: " + this.d).toString());
            }
            long d = _UtilJvmKt.d(response);
            if (d != -1) {
                return l(request.f22061a, d);
            }
            HttpUrl url = request.f22061a;
            if (this.d == 4) {
                this.d = 5;
                this.b.e();
                Intrinsics.checkNotNullParameter(url, "url");
                return new AbstractSource(this, url);
            }
            throw new IllegalStateException(("state: " + this.d).toString());
        }
        return l(request.f22061a, 0L);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder e(boolean z) {
        int indexOf$default;
        HeadersReader headersReader = this.e;
        int i = this.d;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(("state: " + this.d).toString());
        }
        try {
            String H = headersReader.f22122a.H(headersReader.b);
            headersReader.b -= H.length();
            StatusLine a2 = StatusLine.Companion.a(H);
            int i2 = a2.b;
            Response.Builder builder = new Response.Builder();
            Protocol protocol = a2.f22120a;
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            builder.b = protocol;
            builder.f22067c = i2;
            String message = a2.f22121c;
            Intrinsics.checkNotNullParameter(message, "message");
            builder.d = message;
            Headers.Builder builder2 = new Headers.Builder();
            while (true) {
                String line = headersReader.f22122a.H(headersReader.b);
                headersReader.b -= line.length();
                if (line.length() == 0) {
                    break;
                }
                Intrinsics.checkNotNullParameter(line, "line");
                indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) line, ':', 1, false, 4, (Object) null);
                if (indexOf$default != -1) {
                    String substring = line.substring(0, indexOf$default);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    String substring2 = line.substring(indexOf$default + 1);
                    Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                    builder2.a(substring, substring2);
                } else if (line.charAt(0) == ':') {
                    String substring3 = line.substring(1);
                    Intrinsics.checkNotNullExpressionValue(substring3, "substring(...)");
                    builder2.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, substring3);
                } else {
                    builder2.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, line);
                }
            }
            Headers headers = builder2.b();
            Intrinsics.checkNotNullParameter(headers, "headers");
            builder.f = headers.g();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.d = 3;
                return builder;
            }
            if (102 <= i2 && i2 < 200) {
                this.d = 3;
                return builder;
            }
            this.d = 4;
            return builder;
        } catch (EOFException e) {
            throw new IOException(a.C("unexpected end of stream on ", this.b.getN().f22069a.h.f()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.f22124c.b().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Socket g() {
        return this.f22124c;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long h(Response response) {
        boolean equals;
        Intrinsics.checkNotNullParameter(response, "response");
        if (HttpHeaders.a(response)) {
            equals = StringsKt__StringsJVMKt.equals("chunked", Response.a("Transfer-Encoding", response), true);
            if (equals) {
                return -1L;
            }
            return _UtilJvmKt.d(response);
        }
        return 0L;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    /* renamed from: i, reason: from getter */
    public final ExchangeCodec.Carrier getB() {
        return this.b;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink j(Request request, long j) {
        boolean equals;
        Intrinsics.checkNotNullParameter(request, "request");
        RequestBody requestBody = request.d;
        equals = StringsKt__StringsJVMKt.equals("chunked", request.a("Transfer-Encoding"), true);
        if (equals) {
            if (this.d == 1) {
                this.d = 2;
                return new ChunkedSink();
            }
            throw new IllegalStateException(("state: " + this.d).toString());
        }
        if (j != -1) {
            if (this.d == 1) {
                this.d = 2;
                return new KnownLengthSink();
            }
            throw new IllegalStateException(("state: " + this.d).toString());
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public final Source l(HttpUrl httpUrl, long j) {
        if (this.d == 4) {
            this.d = 5;
            return new FixedLengthSource(this, httpUrl, j);
        }
        throw new IllegalStateException(("state: " + this.d).toString());
    }

    public final void m(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        long d = _UtilJvmKt.d(response);
        if (d == -1) {
            return;
        }
        Source l = l(response.f22065c.f22061a, d);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        _UtilJvmKt.e(l, Integer.MAX_VALUE);
        ((FixedLengthSource) l).close();
    }

    public final void n(Headers headers, String requestLine) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(requestLine, "requestLine");
        if (this.d == 0) {
            BufferedSocket bufferedSocket = this.f22124c;
            bufferedSocket.b().M(requestLine).M("\r\n");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                bufferedSocket.b().M(headers.c(i)).M(": ").M(headers.k(i)).M("\r\n");
            }
            bufferedSocket.b().M("\r\n");
            this.d = 1;
            return;
        }
        throw new IllegalStateException(("state: " + this.d).toString());
    }
}
