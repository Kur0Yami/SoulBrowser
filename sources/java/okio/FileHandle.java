package okio;

import android.support.v4.media.a;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "FileHandleSink", "FileHandleSource", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n40#2:445\n40#2:447\n40#2:448\n40#2:449\n40#2:450\n40#2:451\n40#2:452\n40#2:453\n40#2:457\n40#2:459\n1#3:446\n63#4:454\n63#4:455\n63#4:456\n51#5:458\n85#6:460\n85#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"})
/* loaded from: classes4.dex */
public abstract class FileHandle implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public boolean f22200c;
    public int f;
    public final ReentrantLock g = new ReentrantLock();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/FileHandle$FileHandleSink;", "Lokio/Sink;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n40#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n*L\n410#1:446\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class FileHandleSink implements Sink {
        @Override // okio.Sink
        public final void U(long j, Buffer source) {
            Intrinsics.checkNotNullParameter(source, "source");
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink
        public final Timeout timeout() {
            return Timeout.d;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/FileHandle$FileHandleSource;", "Lokio/Source;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n40#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class FileHandleSource implements Source {

        /* renamed from: c, reason: collision with root package name */
        public final FileHandle f22201c;
        public long f;
        public boolean g;

        public FileHandleSource(FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.f22201c = fileHandle;
            this.f = j;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.g) {
                return;
            }
            this.g = true;
            FileHandle fileHandle = this.f22201c;
            ReentrantLock reentrantLock = fileHandle.g;
            reentrantLock.lock();
            try {
                int i = fileHandle.f - 1;
                fileHandle.f = i;
                if (i == 0 && fileHandle.f22200c) {
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    fileHandle.a();
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // okio.Source
        public final long p0(long j, Buffer sink) {
            long j2;
            long j3;
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.g) {
                long j4 = this.f;
                if (j >= 0) {
                    long j5 = j + j4;
                    long j6 = j4;
                    while (true) {
                        if (j6 < j5) {
                            Segment m = sink.m(1);
                            j2 = -1;
                            long j7 = j5;
                            int b = this.f22201c.b(j6, m.f22217a, m.f22218c, (int) Math.min(j5 - j6, 8192 - r10));
                            if (b == -1) {
                                if (m.b == m.f22218c) {
                                    sink.f22195c = m.a();
                                    SegmentPool.a(m);
                                }
                                if (j4 == j6) {
                                    j3 = -1;
                                }
                            } else {
                                m.f22218c += b;
                                long j8 = b;
                                j6 += j8;
                                sink.f += j8;
                                j5 = j7;
                            }
                        } else {
                            j2 = -1;
                            break;
                        }
                    }
                    j3 = j6 - j4;
                    if (j3 != j2) {
                        this.f += j3;
                    }
                    return j3;
                }
                throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Source
        public final Timeout timeout() {
            return Timeout.d;
        }
    }

    public abstract void a();

    public abstract int b(long j, byte[] bArr, int i, int i2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            if (this.f22200c) {
                return;
            }
            this.f22200c = true;
            if (this.f != 0) {
                return;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            a();
        } finally {
            reentrantLock.unlock();
        }
    }

    public abstract long d();

    public final Source e(long j) {
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            if (!this.f22200c) {
                this.f++;
                reentrantLock.unlock();
                return new FileHandleSource(this, j);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long size() {
        ReentrantLock reentrantLock = this.g;
        reentrantLock.lock();
        try {
            if (!this.f22200c) {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return d();
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
