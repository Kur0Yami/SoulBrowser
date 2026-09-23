package okio.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;
import okio.Timeout;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokio/internal/DefaultSocket;", "Lokio/Socket;", "SocketSink", "SocketSource", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultSocket implements Socket {

    /* renamed from: c, reason: collision with root package name */
    public final java.net.Socket f22228c;
    public final AtomicInteger f;
    public final SocketSource g;
    public final SocketSink h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/internal/DefaultSocket$SocketSink;", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n85#2:177\n195#3,11:178\n195#3,11:189\n195#3,11:200\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSink\n*L\n60#1:177\n61#1:178,11\n77#1:189,11\n83#1:200,11\n*E\n"})
    /* loaded from: classes4.dex */
    public final class SocketSink implements Sink {

        /* renamed from: c, reason: collision with root package name */
        public final OutputStream f22229c;
        public final SocketAsyncTimeout f;

        public SocketSink() {
            java.net.Socket socket = DefaultSocket.this.f22228c;
            this.f22229c = socket.getOutputStream();
            this.f = new SocketAsyncTimeout(socket);
        }

        @Override // okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            SegmentedByteString.b(source.f, 0L, j);
            while (j > 0) {
                SocketAsyncTimeout socketAsyncTimeout = this.f;
                socketAsyncTimeout.f();
                Segment segment = source.f22195c;
                Intrinsics.checkNotNull(segment);
                int min = (int) Math.min(j, segment.f22218c - segment.b);
                socketAsyncTimeout.h();
                try {
                    try {
                        this.f22229c.write(segment.f22217a, segment.b, min);
                        Unit unit = Unit.INSTANCE;
                        if (!socketAsyncTimeout.i()) {
                            int i = segment.b + min;
                            segment.b = i;
                            long j2 = min;
                            j -= j2;
                            source.f -= j2;
                            if (i == segment.f22218c) {
                                source.f22195c = segment.a();
                                SegmentPool.a(segment);
                            }
                        } else {
                            throw socketAsyncTimeout.j(null);
                        }
                    } catch (IOException e) {
                        if (!socketAsyncTimeout.i()) {
                            throw e;
                        }
                        throw socketAsyncTimeout.j(e);
                    }
                } catch (Throwable th) {
                    socketAsyncTimeout.i();
                    throw th;
                }
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i;
            OutputStream outputStream = this.f22229c;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.f;
            socketAsyncTimeout.h();
            try {
                AtomicInteger atomicInteger = defaultSocket.f;
                java.net.Socket socket = defaultSocket.f22228c;
                Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
                while (true) {
                    int i2 = atomicInteger.get();
                    if ((i2 & 1) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 1;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i != 0) {
                    if (i != 3) {
                        if (!socket.isClosed() && !socket.isOutputShutdown()) {
                            outputStream.flush();
                            try {
                                socket.shutdownOutput();
                            } catch (UnsupportedOperationException unused) {
                                outputStream.close();
                            }
                        }
                        return;
                    }
                    socket.close();
                    Unit unit = Unit.INSTANCE;
                    if (!socketAsyncTimeout.i()) {
                    } else {
                        throw socketAsyncTimeout.j(null);
                    }
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.i()) {
                    throw e;
                }
                throw socketAsyncTimeout.j(e);
            } finally {
                socketAsyncTimeout.i();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            SocketAsyncTimeout socketAsyncTimeout = this.f;
            socketAsyncTimeout.h();
            try {
                this.f22229c.flush();
                Unit unit = Unit.INSTANCE;
                if (!socketAsyncTimeout.i()) {
                } else {
                    throw socketAsyncTimeout.j(null);
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.i()) {
                    throw e;
                }
                throw socketAsyncTimeout.j(e);
            } finally {
                socketAsyncTimeout.i();
            }
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return this.f;
        }

        public final String toString() {
            return "sink(" + DefaultSocket.this.f22228c + ')';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/internal/DefaultSocket$SocketSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDefaultSocket.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,176:1\n1#2:177\n85#3:178\n195#4,11:179\n195#4,11:190\n*S KotlinDebug\n*F\n+ 1 DefaultSocket.kt\nokio/internal/DefaultSocket$SocketSource\n*L\n121#1:178\n123#1:179,11\n144#1:190,11\n*E\n"})
    /* loaded from: classes4.dex */
    public final class SocketSource implements Source {

        /* renamed from: c, reason: collision with root package name */
        public final InputStream f22230c;
        public final SocketAsyncTimeout f;

        public SocketSource() {
            java.net.Socket socket = DefaultSocket.this.f22228c;
            this.f22230c = socket.getInputStream();
            this.f = new SocketAsyncTimeout(socket);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i;
            DefaultSocket defaultSocket = DefaultSocket.this;
            SocketAsyncTimeout socketAsyncTimeout = this.f;
            socketAsyncTimeout.h();
            try {
                AtomicInteger atomicInteger = defaultSocket.f;
                java.net.Socket socket = defaultSocket.f22228c;
                Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
                while (true) {
                    int i2 = atomicInteger.get();
                    if ((i2 & 2) != 0) {
                        i = 0;
                        break;
                    }
                    int i3 = i2 | 2;
                    if (atomicInteger.compareAndSet(i2, i3)) {
                        i = i3;
                        break;
                    }
                }
                if (i != 0) {
                    if (i != 3) {
                        if (!socket.isClosed() && !socket.isInputShutdown()) {
                            try {
                                socket.shutdownInput();
                            } catch (UnsupportedOperationException unused) {
                                this.f22230c.close();
                            }
                        } else {
                            return;
                        }
                    } else {
                        socket.close();
                    }
                    Unit unit = Unit.INSTANCE;
                    if (!socketAsyncTimeout.i()) {
                    } else {
                        throw socketAsyncTimeout.j(null);
                    }
                }
            } catch (IOException e) {
                if (!socketAsyncTimeout.i()) {
                    throw e;
                }
                throw socketAsyncTimeout.j(e);
            } finally {
                socketAsyncTimeout.i();
            }
        }

        @Override // okio.Source
        public final long p0(long j, Buffer sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (j == 0) {
                return 0L;
            }
            if (j >= 0) {
                SocketAsyncTimeout socketAsyncTimeout = this.f;
                socketAsyncTimeout.f();
                Segment m = sink.m(1);
                int min = (int) Math.min(j, 8192 - m.f22218c);
                try {
                    socketAsyncTimeout.h();
                    try {
                        int read = this.f22230c.read(m.f22217a, m.f22218c, min);
                        if (!socketAsyncTimeout.i()) {
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
                        }
                        throw socketAsyncTimeout.j(null);
                    } catch (IOException e) {
                        if (!socketAsyncTimeout.i()) {
                            throw e;
                        }
                        throw socketAsyncTimeout.j(e);
                    } finally {
                        socketAsyncTimeout.i();
                    }
                } catch (AssertionError e2) {
                    if (_JavaIoKt.a(e2)) {
                        throw new IOException(e2);
                    }
                    throw e2;
                }
            }
            throw new IllegalArgumentException(android.support.v4.media.a.h(j, "byteCount < 0: ").toString());
        }

        @Override // okio.Source
        /* renamed from: timeout */
        public final Timeout getF() {
            return this.f;
        }

        public final String toString() {
            return "source(" + DefaultSocket.this.f22228c + ')';
        }
    }

    public DefaultSocket(java.net.Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "socket");
        this.f22228c = socket;
        this.f = new AtomicInteger();
        this.g = new SocketSource();
        this.h = new SocketSink();
    }

    @Override // okio.Socket
    public final Source a() {
        return this.g;
    }

    @Override // okio.Socket
    public final Sink b() {
        return this.h;
    }

    @Override // okio.Socket
    public final void cancel() {
        this.f22228c.close();
    }

    public final String toString() {
        String socket = this.f22228c.toString();
        Intrinsics.checkNotNullExpressionValue(socket, "toString(...)");
        return socket;
    }
}
