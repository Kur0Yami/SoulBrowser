package okhttp3.internal.cache;

import java.io.IOException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.Source;
import okio.Timeout;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1", "Lokio/Source;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 implements Source {

    /* renamed from: c, reason: collision with root package name */
    public boolean f22080c;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (!this.f22080c) {
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
                this.f22080c = true;
                throw null;
            }
            throw null;
        }
        throw null;
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        throw null;
    }

    @Override // okio.Source
    /* renamed from: timeout */
    public final Timeout getF() {
        throw null;
    }
}
