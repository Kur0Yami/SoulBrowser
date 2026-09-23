package io.opencensus.trace;

import io.opencensus.internal.Utils;
import java.util.Map;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class BlankSpan extends Span {

    /* renamed from: c, reason: collision with root package name */
    public static final BlankSpan f21099c = new Span(SpanContext.f21108a);

    @Override // io.opencensus.trace.Span
    public final void a(MessageEvent messageEvent) {
        Utils.b(messageEvent, "messageEvent");
    }

    @Override // io.opencensus.trace.Span
    public final void b(NetworkEvent networkEvent) {
    }

    @Override // io.opencensus.trace.Span
    public final void c(String str, AttributeValue attributeValue) {
        Utils.b(str, "key");
    }

    @Override // io.opencensus.trace.Span
    public final void d(Map map) {
        Utils.b(map, "attributes");
    }

    public final void e(EndSpanOptions endSpanOptions) {
        Utils.b(endSpanOptions, "options");
    }

    public final String toString() {
        return "BlankSpan";
    }
}
