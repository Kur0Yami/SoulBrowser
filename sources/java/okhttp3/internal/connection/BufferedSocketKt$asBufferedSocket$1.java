package okhttp3.internal.connection;

import kotlin.Metadata;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;
import okio.internal.DefaultSocket;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1", "Lokhttp3/internal/connection/BufferedSocket;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BufferedSocketKt$asBufferedSocket$1 implements BufferedSocket {

    /* renamed from: c, reason: collision with root package name */
    public final DefaultSocket f22089c;
    public final RealBufferedSource f;
    public final RealBufferedSink g;

    public BufferedSocketKt$asBufferedSocket$1(DefaultSocket defaultSocket) {
        this.f22089c = defaultSocket;
        this.f = Okio.b(defaultSocket.g);
        this.g = Okio.a(defaultSocket.h);
    }

    @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
    public final BufferedSource a() {
        return this.f;
    }

    @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
    public final BufferedSink b() {
        return this.g;
    }

    @Override // okio.Socket
    public final void cancel() {
        this.f22089c.cancel();
    }

    @Override // okio.Socket
    public final Source a() {
        return this.f;
    }

    @Override // okio.Socket
    public final Sink b() {
        return this.g;
    }
}
