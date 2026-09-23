package io.opencensus.trace;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import io.opencensus.trace.MessageEvent;

/* loaded from: classes3.dex */
final class AutoValue_MessageEvent extends MessageEvent {

    /* renamed from: a, reason: collision with root package name */
    public final MessageEvent.Type f21089a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f21090c;
    public final long d;

    /* loaded from: classes3.dex */
    public static final class Builder extends MessageEvent.Builder {

        /* renamed from: a, reason: collision with root package name */
        public MessageEvent.Type f21091a;
        public Long b;

        /* renamed from: c, reason: collision with root package name */
        public Long f21092c;
        public Long d;

        @Override // io.opencensus.trace.MessageEvent.Builder
        public final MessageEvent a() {
            String str;
            if (this.f21091a == null) {
                str = " type";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.b == null) {
                str = str.concat(" messageId");
            }
            if (this.f21092c == null) {
                str = a.k(str, " uncompressedMessageSize");
            }
            if (this.d == null) {
                str = a.k(str, " compressedMessageSize");
            }
            if (str.isEmpty()) {
                return new AutoValue_MessageEvent(this.f21091a, this.b.longValue(), this.f21092c.longValue(), this.d.longValue());
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // io.opencensus.trace.MessageEvent.Builder
        public final MessageEvent.Builder b(long j) {
            this.f21092c = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_MessageEvent(MessageEvent.Type type, long j, long j2, long j3) {
        this.f21089a = type;
        this.b = j;
        this.f21090c = j2;
        this.d = j3;
    }

    @Override // io.opencensus.trace.MessageEvent
    public final long b() {
        return this.d;
    }

    @Override // io.opencensus.trace.MessageEvent
    public final long c() {
        return this.b;
    }

    @Override // io.opencensus.trace.MessageEvent
    public final MessageEvent.Type d() {
        return this.f21089a;
    }

    @Override // io.opencensus.trace.MessageEvent
    public final long e() {
        return this.f21090c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof MessageEvent) {
                MessageEvent messageEvent = (MessageEvent) obj;
                if (this.f21089a.equals(messageEvent.d()) && this.b == messageEvent.c() && this.f21090c == messageEvent.e() && this.d == messageEvent.b()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long hashCode = (this.f21089a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = ((int) (hashCode ^ (j ^ (j >>> 32)))) * 1000003;
        long j3 = this.f21090c;
        long j4 = this.d;
        return (int) ((((int) (j2 ^ (j3 ^ (j3 >>> 32)))) * 1000003) ^ (j4 ^ (j4 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageEvent{type=");
        sb.append(this.f21089a);
        sb.append(", messageId=");
        sb.append(this.b);
        sb.append(", uncompressedMessageSize=");
        sb.append(this.f21090c);
        sb.append(", compressedMessageSize=");
        return a.o(sb, this.d, "}");
    }
}
