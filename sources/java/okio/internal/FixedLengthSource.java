package okio.internal;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ForwardingSource;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FixedLengthSource extends ForwardingSource {
    public long f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.ForwardingSource, okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.f > 0) {
            j = 0;
        }
        long p0 = super.p0(j, sink);
        if (p0 != -1) {
            this.f += p0;
        }
        long j2 = this.f;
        if ((j2 < 0 && p0 == -1) || j2 > 0) {
            if (p0 > 0 && j2 > 0) {
                long j3 = sink.f - (j2 - 0);
                ?? obj = new Object();
                obj.u(sink);
                sink.U(j3, obj);
                obj.a();
            }
            throw new IOException("expected 0 bytes but got " + this.f);
        }
        return p0;
    }
}
