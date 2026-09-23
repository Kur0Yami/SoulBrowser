package io.opencensus.trace;

import android.support.v4.media.a;
import io.opencensus.common.Timestamp;
import io.opencensus.trace.NetworkEvent;
import javax.annotation.concurrent.Immutable;

/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
@Immutable
/* loaded from: classes3.dex */
public final class AutoValue_NetworkEvent extends NetworkEvent {

    /* renamed from: a, reason: collision with root package name */
    public final NetworkEvent.Type f21093a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21094c;
    public final long d;

    /* loaded from: classes3.dex */
    public static final class Builder extends NetworkEvent.Builder {

        /* renamed from: a, reason: collision with root package name */
        public NetworkEvent.Type f21095a;
        public Long b;

        /* renamed from: c, reason: collision with root package name */
        public Long f21096c;
        public Long d;
    }

    public AutoValue_NetworkEvent(NetworkEvent.Type type, long j, long j2, long j3) {
        this.f21093a = type;
        this.b = j;
        this.f21094c = j2;
        this.d = j3;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public final long a() {
        return this.d;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public final Timestamp b() {
        return null;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public final long c() {
        return this.b;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public final NetworkEvent.Type d() {
        return this.f21093a;
    }

    @Override // io.opencensus.trace.NetworkEvent
    public final long e() {
        return this.f21094c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof NetworkEvent) {
                NetworkEvent networkEvent = (NetworkEvent) obj;
                if (networkEvent.b() == null && this.f21093a.equals(networkEvent.d()) && this.b == networkEvent.c() && this.f21094c == networkEvent.e() && this.d == networkEvent.a()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long hashCode = ((1000003 * 1000003) ^ this.f21093a.hashCode()) * 1000003;
        long j = this.b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f21094c;
        long j4 = this.d;
        return (int) ((((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003) ^ (j4 ^ (j4 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkEvent{kernelTimestamp=null, type=");
        sb.append(this.f21093a);
        sb.append(", messageId=");
        sb.append(this.b);
        sb.append(", uncompressedMessageSize=");
        sb.append(this.f21094c);
        sb.append(", compressedMessageSize=");
        return a.o(sb, this.d, "}");
    }
}
