package okio;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lokio/HashingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HashingSource extends ForwardingSource implements Source {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/HashingSource$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long p0 = super.p0(j, sink);
        if (p0 != -1) {
            long j2 = sink.f;
            long j3 = j2 - p0;
            Segment segment = sink.f22195c;
            Intrinsics.checkNotNull(segment);
            while (j2 > j3) {
                segment = segment.g;
                Intrinsics.checkNotNull(segment);
                j2 -= segment.f22218c - segment.b;
            }
            if (j2 < sink.f) {
                int i = segment.b;
                Intrinsics.checkNotNull(null);
                throw null;
            }
        }
        return p0;
    }
}
