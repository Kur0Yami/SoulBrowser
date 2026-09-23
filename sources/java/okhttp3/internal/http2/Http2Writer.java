package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "Lokhttp3/internal/concurrent/Lockable;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHttp2Writer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,384:1\n63#2:385\n63#2:386\n63#2:387\n63#2:388\n63#2:389\n63#2:390\n63#2:391\n63#2:392\n63#2:393\n63#2:395\n63#2:396\n63#2:397\n1#3:394\n*S KotlinDebug\n*F\n+ 1 Http2Writer.kt\nokhttp3/internal/http2/Http2Writer\n*L\n60#1:385\n74#1:386\n108#1:387\n129#1:388\n140#1:389\n172#1:390\n201#1:391\n228#1:392\n256#1:393\n283#1:395\n329#1:396\n360#1:397\n*E\n"})
/* loaded from: classes4.dex */
public final class Http2Writer implements Closeable, Lockable {
    public static final Logger j = Logger.getLogger(Http2.class.getName());

    /* renamed from: c, reason: collision with root package name */
    public final BufferedSink f22151c;
    public final Buffer f;
    public int g;
    public boolean h;
    public final Hpack.Writer i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [okio.Buffer, java.lang.Object] */
    public Http2Writer(BufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.f22151c = sink;
        ?? obj = new Object();
        this.f = obj;
        this.g = 16384;
        this.i = new Hpack.Writer(obj);
    }

    public final void a(Settings peerSettings) {
        int i;
        Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
        synchronized (this) {
            try {
                if (!this.h) {
                    int i2 = this.g;
                    int i3 = peerSettings.f22157a;
                    if ((i3 & 32) != 0) {
                        i2 = peerSettings.b[5];
                    }
                    this.g = i2;
                    int i4 = -1;
                    if ((i3 & 2) != 0) {
                        i = peerSettings.b[1];
                    } else {
                        i = -1;
                    }
                    if (i != -1) {
                        Hpack.Writer writer = this.i;
                        if ((i3 & 2) != 0) {
                            i4 = peerSettings.b[1];
                        }
                        writer.getClass();
                        int min = Math.min(i4, 16384);
                        int i5 = writer.d;
                        if (i5 != min) {
                            if (min < i5) {
                                writer.b = Math.min(writer.b, min);
                            }
                            writer.f22136c = true;
                            writer.d = min;
                            int i6 = writer.h;
                            if (min < i6) {
                                if (min == 0) {
                                    ArraysKt___ArraysJvmKt.fill$default(writer.e, (Object) null, 0, 0, 6, (Object) null);
                                    writer.f = writer.e.length - 1;
                                    writer.g = 0;
                                    writer.h = 0;
                                } else {
                                    writer.a(i6 - min);
                                }
                            }
                        }
                    }
                    d(0, 0, 4, 1);
                    this.f22151c.flush();
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IOException("closed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(boolean z, int i, Buffer buffer, int i2) {
        synchronized (this) {
            if (!this.h) {
                d(i, i2, 0, z ? 1 : 0);
                if (i2 > 0) {
                    BufferedSink bufferedSink = this.f22151c;
                    Intrinsics.checkNotNull(buffer);
                    bufferedSink.U(i2, buffer);
                }
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IOException("closed");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.h = true;
            this.f22151c.close();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void d(int i, int i2, int i3, int i4) {
        if (i3 != 8) {
            Level level = Level.FINE;
            Logger logger = j;
            if (logger.isLoggable(level)) {
                logger.fine(Http2.b(false, i, i2, i3, i4));
            }
        }
        if (i2 <= this.g) {
            if ((Integer.MIN_VALUE & i) == 0) {
                byte[] bArr = _UtilCommonKt.f22076a;
                BufferedSink bufferedSink = this.f22151c;
                Intrinsics.checkNotNullParameter(bufferedSink, "<this>");
                bufferedSink.writeByte((i2 >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                bufferedSink.writeByte((i2 >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                bufferedSink.writeByte(i2 & KotlinVersion.MAX_COMPONENT_VALUE);
                bufferedSink.writeByte(i3 & KotlinVersion.MAX_COMPONENT_VALUE);
                bufferedSink.writeByte(i4 & KotlinVersion.MAX_COMPONENT_VALUE);
                bufferedSink.writeInt(i & Integer.MAX_VALUE);
                return;
            }
            throw new IllegalArgumentException(android.support.v4.media.a.e(i, "reserved bit set: ").toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.g + ": " + i2).toString());
    }

    public final void e(int i, ErrorCode errorCode, byte[] debugData) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(debugData, "debugData");
        synchronized (this) {
            if (!this.h) {
                if (errorCode.f22128c != -1) {
                    d(0, debugData.length + 8, 7, 0);
                    this.f22151c.writeInt(i);
                    this.f22151c.writeInt(errorCode.f22128c);
                    if (debugData.length != 0) {
                        this.f22151c.write(debugData);
                    }
                    this.f22151c.flush();
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void f(int i, ArrayList headerBlock, boolean z) {
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        synchronized (this) {
            if (!this.h) {
                this.i.d(headerBlock);
                long j2 = this.f.f;
                long min = Math.min(this.g, j2);
                if (j2 == min) {
                    i2 = 4;
                } else {
                    i2 = 0;
                }
                if (z) {
                    i2 |= 1;
                }
                d(i, (int) min, 1, i2);
                this.f22151c.U(min, this.f);
                if (j2 > min) {
                    long j3 = j2 - min;
                    while (j3 > 0) {
                        long min2 = Math.min(this.g, j3);
                        j3 -= min2;
                        int i4 = (int) min2;
                        if (j3 == 0) {
                            i3 = 4;
                        } else {
                            i3 = 0;
                        }
                        d(i, i4, 9, i3);
                        this.f22151c.U(min2, this.f);
                    }
                }
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void flush() {
        synchronized (this) {
            if (!this.h) {
                this.f22151c.flush();
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void i(int i, int i2, boolean z) {
        synchronized (this) {
            if (!this.h) {
                d(0, 8, 6, z ? 1 : 0);
                this.f22151c.writeInt(i);
                this.f22151c.writeInt(i2);
                this.f22151c.flush();
                Unit unit = Unit.INSTANCE;
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void j(int i, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        synchronized (this) {
            if (!this.h) {
                if (errorCode.f22128c != -1) {
                    d(i, 4, 3, 0);
                    this.f22151c.writeInt(errorCode.f22128c);
                    this.f22151c.flush();
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IllegalArgumentException("Failed requirement.");
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final void k(Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "settings");
        synchronized (this) {
            try {
                if (!this.h) {
                    d(0, Integer.bitCount(settings.f22157a) * 6, 4, 0);
                    for (int i = 0; i < 10; i++) {
                        boolean z = true;
                        if (((1 << i) & settings.f22157a) == 0) {
                            z = false;
                        }
                        if (z) {
                            this.f22151c.writeShort(i);
                            this.f22151c.writeInt(settings.b[i]);
                        }
                    }
                    this.f22151c.flush();
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new IOException("closed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(int i, long j2) {
        synchronized (this) {
            try {
                if (!this.h) {
                    if (j2 != 0 && j2 <= 2147483647L) {
                        Logger logger = j;
                        if (logger.isLoggable(Level.FINE)) {
                            logger.fine(Http2.c(i, 4, j2, false));
                        }
                        d(i, 4, 8, 0);
                        this.f22151c.writeInt((int) j2);
                        this.f22151c.flush();
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j2).toString());
                    }
                } else {
                    throw new IOException("closed");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
