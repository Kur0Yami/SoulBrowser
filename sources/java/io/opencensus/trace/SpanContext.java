package io.opencensus.trace;

import io.opencensus.trace.Tracestate;
import java.util.Arrays;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class SpanContext {

    /* renamed from: a, reason: collision with root package name */
    public static final SpanContext f21108a;

    /* JADX WARN: Type inference failed for: r0v1, types: [io.opencensus.trace.SpanContext, java.lang.Object] */
    static {
        new Tracestate.Builder(Tracestate.Builder.f21117a);
        f21108a = new Object();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof SpanContext) {
                TraceId traceId = TraceId.f21114c;
                if (traceId.equals(traceId)) {
                    SpanId spanId = SpanId.f21109c;
                    if (spanId.equals(spanId)) {
                        TraceOptions traceOptions = TraceOptions.b;
                        if (traceOptions.equals(traceOptions)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{TraceId.f21114c, SpanId.f21109c, TraceOptions.b});
    }

    public final String toString() {
        return "SpanContext{traceId=" + TraceId.f21114c + ", spanId=" + SpanId.f21109c + ", traceOptions=" + TraceOptions.b + "}";
    }
}
