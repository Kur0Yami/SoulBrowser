package io.opencensus.contrib.http.util;

import com.google.api.client.http.HttpHeaders;
import com.google.common.base.Preconditions;
import com.google.common.primitives.UnsignedLongs;
import io.opencensus.trace.SpanContext;
import io.opencensus.trace.SpanId;
import io.opencensus.trace.TraceId;
import io.opencensus.trace.Tracestate;
import io.opencensus.trace.propagation.TextFormat;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
final class CloudTraceFormat extends TextFormat {

    /* renamed from: a, reason: collision with root package name */
    public static final List f21064a = Collections.singletonList("X-Cloud-Trace-Context");

    static {
        new Tracestate.Builder(Tracestate.Builder.f21117a);
    }

    @Override // io.opencensus.trace.propagation.TextFormat
    public final void a(SpanContext spanContext, HttpHeaders httpHeaders, TextFormat.Setter setter) {
        Preconditions.h(spanContext, "spanContext");
        Preconditions.h(setter, "setter");
        Preconditions.h(httpHeaders, "carrier");
        StringBuilder sb = new StringBuilder();
        sb.append(TraceId.f21114c.a());
        sb.append('/');
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.put(SpanId.f21109c.a());
        sb.append(UnsignedLongs.b(allocate.getLong(0)));
        sb.append(";o=");
        sb.append("0");
        setter.put(httpHeaders, "X-Cloud-Trace-Context", sb.toString());
    }
}
