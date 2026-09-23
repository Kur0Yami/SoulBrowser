package com.google.api.client.http;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableList;
import io.opencensus.contrib.http.util.HttpPropagationUtil;
import io.opencensus.trace.BlankSpan;
import io.opencensus.trace.EndSpanOptions;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import io.opencensus.trace.Status;
import io.opencensus.trace.Tracer;
import io.opencensus.trace.Tracing;
import io.opencensus.trace.propagation.TextFormat;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

@Beta
/* loaded from: classes3.dex */
public class OpenCensusUtils {
    private static final AtomicLong idGenerator;
    private static volatile boolean isRecordEvent;

    @VisibleForTesting
    @Nullable
    static volatile TextFormat propagationTextFormat;

    @VisibleForTesting
    @Nullable
    static volatile TextFormat.Setter propagationTextFormatSetter;
    private static final Tracer tracer;
    private static final Logger logger = Logger.getLogger(OpenCensusUtils.class.getName());
    public static final String SPAN_NAME_HTTP_REQUEST_EXECUTE = "Sent." + HttpRequest.class.getName() + ".execute";

    static {
        Tracing.f21118a.getClass();
        tracer = Tracer.f21116a;
        idGenerator = new AtomicLong();
        isRecordEvent = true;
        propagationTextFormat = null;
        propagationTextFormatSetter = null;
        try {
            propagationTextFormat = HttpPropagationUtil.a();
            propagationTextFormatSetter = new TextFormat.Setter<HttpHeaders>() { // from class: com.google.api.client.http.OpenCensusUtils.1
                @Override // io.opencensus.trace.propagation.TextFormat.Setter
                public void put(HttpHeaders httpHeaders, String str, String str2) {
                    httpHeaders.set(str, (Object) str2);
                }
            };
        } catch (Exception e) {
            logger.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e);
        }
        try {
            Tracing.f21118a.a().a().a(ImmutableList.w(SPAN_NAME_HTTP_REQUEST_EXECUTE));
        } catch (Exception e2) {
            logger.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e2);
        }
    }

    private OpenCensusUtils() {
    }

    public static EndSpanOptions getEndSpanOptions(@Nullable Integer num) {
        EndSpanOptions.Builder a2 = EndSpanOptions.a();
        if (num == null) {
            a2.b(Status.e);
        } else if (!HttpStatusCodes.isSuccess(num.intValue())) {
            int intValue = num.intValue();
            if (intValue != 400) {
                if (intValue != 401) {
                    if (intValue != 403) {
                        if (intValue != 404) {
                            if (intValue != 412) {
                                if (intValue != 500) {
                                    a2.b(Status.e);
                                } else {
                                    a2.b(Status.k);
                                }
                            } else {
                                a2.b(Status.j);
                            }
                        } else {
                            a2.b(Status.g);
                        }
                    } else {
                        a2.b(Status.h);
                    }
                } else {
                    a2.b(Status.i);
                }
            } else {
                a2.b(Status.f);
            }
        } else {
            a2.b(Status.d);
        }
        return a2.a();
    }

    public static Tracer getTracer() {
        return tracer;
    }

    public static boolean isRecordEvent() {
        return isRecordEvent;
    }

    public static void propagateTracingContext(Span span, HttpHeaders httpHeaders) {
        boolean z;
        boolean z2 = false;
        if (span != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "span should not be null.");
        if (httpHeaders != null) {
            z2 = true;
        }
        Preconditions.checkArgument(z2, "headers should not be null.");
        if (propagationTextFormat != null && propagationTextFormatSetter != null && !span.equals(BlankSpan.f21099c)) {
            propagationTextFormat.a(span.f21105a, httpHeaders, propagationTextFormatSetter);
        }
    }

    @VisibleForTesting
    public static void recordMessageEvent(Span span, long j, MessageEvent.Type type) {
        boolean z;
        if (span != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "span should not be null.");
        if (j < 0) {
            j = 0;
        }
        MessageEvent.Builder a2 = MessageEvent.a(type, idGenerator.getAndIncrement());
        a2.b(j);
        span.a(a2.a());
    }

    public static void recordReceivedMessageEvent(Span span, long j) {
        recordMessageEvent(span, j, MessageEvent.Type.f);
    }

    public static void recordSentMessageEvent(Span span, long j) {
        recordMessageEvent(span, j, MessageEvent.Type.f21103c);
    }

    public static void setIsRecordEvent(boolean z) {
        isRecordEvent = z;
    }

    public static void setPropagationTextFormat(@Nullable TextFormat textFormat) {
        propagationTextFormat = textFormat;
    }

    public static void setPropagationTextFormatSetter(@Nullable TextFormat.Setter setter) {
        propagationTextFormatSetter = setter;
    }
}
