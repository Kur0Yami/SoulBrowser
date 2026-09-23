package okhttp3.internal.connection;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okio.Timeout;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/ConnectInterceptor;", "Lokhttp3/Interceptor;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ConnectInterceptor implements Interceptor {

    /* renamed from: a, reason: collision with root package name */
    public static final ConnectInterceptor f22090a = new Object();

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain chain) {
        ExchangeCodec http1ExchangeCodec;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealCall realCall = chain.f22117a;
        Intrinsics.checkNotNullParameter(chain, "chain");
        synchronized (realCall) {
            if (realCall.t) {
                if (!realCall.q && !realCall.p && !realCall.s && !realCall.r) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        ExchangeFinder exchangeFinder = realCall.l;
        Intrinsics.checkNotNull(exchangeFinder);
        RealConnection a2 = exchangeFinder.a();
        OkHttpClient client = realCall.f22099c;
        a2.getClass();
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        BufferedSocket bufferedSocket = a2.l;
        Http2Connection http2Connection = a2.m;
        if (http2Connection != null) {
            http1ExchangeCodec = new Http2ExchangeCodec(client, a2, chain, http2Connection);
        } else {
            a2.i.setSoTimeout(chain.g);
            Timeout f = bufferedSocket.a().getF();
            long j = chain.g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f.g(j, timeUnit);
            bufferedSocket.b().timeout().g(chain.h, timeUnit);
            http1ExchangeCodec = new Http1ExchangeCodec(client, a2, bufferedSocket);
        }
        Exchange exchange = new Exchange(realCall, realCall.h, exchangeFinder, http1ExchangeCodec);
        realCall.o = exchange;
        realCall.v = exchange;
        synchronized (realCall) {
            realCall.p = true;
            realCall.q = true;
        }
        if (!realCall.u) {
            return RealInterceptorChain.a(chain, 0, exchange, null, 61).b(chain.e);
        }
        throw new IOException("Canceled");
    }
}
