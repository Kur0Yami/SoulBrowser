package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.EventListener;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Socket;
import okio.Source;
import org.jsoup.helper.HttpConnection;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/connection/Exchange;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "RequestBodySink", "ResponseBodySource", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Exchange {

    /* renamed from: a, reason: collision with root package name */
    public final RealCall f22093a;
    public final EventListener b;

    /* renamed from: c, reason: collision with root package name */
    public final ExchangeFinder f22094c;
    public final ExchangeCodec d;
    public boolean e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$RequestBodySink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"})
    /* loaded from: classes4.dex */
    public final class RequestBodySink extends ForwardingSink {
        public final long f;
        public final boolean g;
        public boolean h;
        public long i;
        public boolean j;
        public boolean k;
        public final /* synthetic */ Exchange l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, Sink delegate, long j, boolean z) {
            super(delegate);
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.l = exchange;
            this.f = j;
            this.g = z;
            this.j = z;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.k) {
                long j2 = this.f;
                if (j2 != -1 && this.i + j > j2) {
                    throw new ProtocolException("expected " + j2 + " bytes but received " + (this.i + j));
                }
                try {
                    if (this.j) {
                        this.j = false;
                        Exchange exchange = this.l;
                        exchange.b.h(exchange.f22093a);
                    }
                    super.U(j, source);
                    this.i += j;
                    return;
                } catch (IOException e) {
                    IOException a2 = a(e);
                    Intrinsics.checkNotNull(a2);
                    throw a2;
                }
            }
            throw new IllegalStateException("closed");
        }

        public final IOException a(IOException iOException) {
            if (this.h) {
                return iOException;
            }
            this.h = true;
            return Exchange.a(this.l, this.i, this.g, iOException, 4);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.k) {
                return;
            }
            this.k = true;
            long j = this.f;
            if (j != -1 && this.i != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                IOException a2 = a(e);
                Intrinsics.checkNotNull(a2);
                throw a2;
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public final void flush() {
            try {
                super.flush();
            } catch (IOException e) {
                IOException a2 = a(e);
                Intrinsics.checkNotNull(a2);
                throw a2;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nExchange.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Exchange.kt\nokhttp3/internal/connection/Exchange$ResponseBodySource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"})
    /* loaded from: classes4.dex */
    public final class ResponseBodySource extends ForwardingSource {
        public final long f;
        public final boolean g;
        public long h;
        public boolean i;
        public boolean j;
        public boolean k;
        public final /* synthetic */ Exchange l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, Source delegate, long j, boolean z) {
            super(delegate);
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.l = exchange;
            this.f = j;
            this.g = z;
            this.i = true;
            if (j == 0) {
                a(null);
            }
        }

        public final IOException a(IOException iOException) {
            if (this.j) {
                return iOException;
            }
            this.j = true;
            Exchange exchange = this.l;
            if (iOException == null && this.i) {
                this.i = false;
                exchange.b.m(exchange.f22093a);
            }
            return Exchange.a(exchange, this.h, this.g, iOException, 8);
        }

        @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.k) {
                return;
            }
            this.k = true;
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                IOException a2 = a(e);
                Intrinsics.checkNotNull(a2);
                throw a2;
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public final long p0(long j, Buffer sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.k) {
                try {
                    long p0 = this.f22206c.p0(j, sink);
                    boolean z = this.i;
                    Exchange exchange = this.l;
                    if (z) {
                        this.i = false;
                        exchange.b.m(exchange.f22093a);
                    }
                    if (p0 == -1) {
                        a(null);
                        return -1L;
                    }
                    long j2 = this.h + p0;
                    long j3 = this.f;
                    if (j3 != -1 && j2 > j3) {
                        throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
                    }
                    this.h = j2;
                    if (exchange.d.c()) {
                        a(null);
                    }
                    return p0;
                } catch (IOException e) {
                    IOException a2 = a(e);
                    Intrinsics.checkNotNull(a2);
                    throw a2;
                }
            }
            throw new IllegalStateException("closed");
        }
    }

    public Exchange(RealCall call, EventListener$Companion$NONE$1 eventListener, ExchangeFinder finder, ExchangeCodec codec) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.f22093a = call;
        this.b = eventListener;
        this.f22094c = finder;
        this.d = codec;
    }

    public static IOException a(Exchange exchange, long j, boolean z, IOException iOException, int i) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        IOException iOException2;
        Exchange exchange2;
        RealCall realCall = exchange.f22093a;
        if ((i & 4) != 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if ((i & 8) != 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        EventListener eventListener = exchange.b;
        if (iOException != null) {
            exchange.f(iOException);
        }
        if (z3) {
            if (iOException != null) {
                eventListener.i(realCall, iOException);
            } else {
                eventListener.g(realCall);
            }
        }
        if (z2) {
            if (iOException != null) {
                eventListener.n(realCall, iOException);
            } else {
                eventListener.l(realCall);
            }
        }
        if (z3 && !z) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z2 && !z) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (z3 && z) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z2 && z) {
            z7 = true;
            exchange2 = exchange;
            iOException2 = iOException;
        } else {
            z7 = false;
            iOException2 = iOException;
            exchange2 = exchange;
        }
        return realCall.f(exchange2, z4, z5, z7, z6, iOException2);
    }

    public final Sink b(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        RequestBody requestBody = request.d;
        Intrinsics.checkNotNull(requestBody);
        long a2 = requestBody.a();
        this.b.h(this.f22093a);
        return new RequestBodySink(this, this.d.j(request, a2), a2, false);
    }

    public final RealConnection c() {
        RealConnection realConnection;
        ExchangeCodec.Carrier b = this.d.getB();
        if (b instanceof RealConnection) {
            realConnection = (RealConnection) b;
        } else {
            realConnection = null;
        }
        if (realConnection != null) {
            return realConnection;
        }
        throw new IllegalStateException("no connection for CONNECT tunnels");
    }

    public final RealResponseBody d(Response response) {
        Exchange exchange;
        String a2;
        long h;
        ExchangeCodec exchangeCodec = this.d;
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            a2 = Response.a(HttpConnection.CONTENT_TYPE, response);
            h = exchangeCodec.h(response);
            exchange = this;
        } catch (IOException e) {
            e = e;
            exchange = this;
        }
        try {
            return new RealResponseBody(a2, h, Okio.b(new ResponseBodySource(exchange, exchangeCodec.d(response), h, false)));
        } catch (IOException e2) {
            e = e2;
            IOException iOException = e;
            exchange.b.n(exchange.f22093a, iOException);
            f(iOException);
            throw iOException;
        }
    }

    public final Response.Builder e(boolean z) {
        try {
            Response.Builder e = this.d.e(z);
            if (e != null) {
                Intrinsics.checkNotNullParameter(this, "exchange");
                e.n = this;
            }
            return e;
        } catch (IOException e2) {
            this.b.n(this.f22093a, e2);
            f(e2);
            throw e2;
        }
    }

    public final void f(IOException iOException) {
        this.e = true;
        this.d.getB().b(this.f22093a, iOException);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [okhttp3.internal.connection.Exchange$upgradeToSocket$1] */
    public final Exchange$upgradeToSocket$1 g() {
        RealCall realCall = this.f22093a;
        if (!realCall.n) {
            realCall.n = true;
            realCall.i.i();
            synchronized (realCall) {
                if (realCall.v != null) {
                    if (!realCall.r && !realCall.s) {
                        if (!realCall.p) {
                            if (realCall.q) {
                                realCall.q = false;
                                realCall.r = true;
                                realCall.s = true;
                                Unit unit = Unit.INSTANCE;
                            } else {
                                throw new IllegalStateException("Check failed.");
                            }
                        } else {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            }
            ExchangeCodec.Carrier b = this.d.getB();
            Intrinsics.checkNotNull(b, "null cannot be cast to non-null type okhttp3.internal.connection.RealConnection");
            RealConnection realConnection = (RealConnection) b;
            realConnection.i.setSoTimeout(0);
            realConnection.e();
            return new Socket() { // from class: okhttp3.internal.connection.Exchange$upgradeToSocket$1

                /* renamed from: c, reason: collision with root package name */
                public final Exchange.RequestBodySink f22095c;
                public final Exchange.ResponseBodySource f;

                {
                    ExchangeCodec exchangeCodec = Exchange.this.d;
                    this.f22095c = new Exchange.RequestBodySink(Exchange.this, exchangeCodec.g().b(), -1L, true);
                    this.f = new Exchange.ResponseBodySource(Exchange.this, exchangeCodec.g().a(), -1L, true);
                }

                @Override // okio.Socket
                public final Source a() {
                    return this.f;
                }

                @Override // okio.Socket
                public final Sink b() {
                    return this.f22095c;
                }

                @Override // okio.Socket
                public final void cancel() {
                    Exchange.this.d.cancel();
                }
            };
        }
        throw new IllegalStateException("Check failed.");
    }
}
