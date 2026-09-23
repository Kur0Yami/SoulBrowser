package io.opencensus.trace;

/* loaded from: classes3.dex */
public abstract class SpanBuilder {

    /* loaded from: classes3.dex */
    public static final class NoopSpanBuilder extends SpanBuilder {
        @Override // io.opencensus.trace.SpanBuilder
        public final BlankSpan a() {
            return BlankSpan.f21099c;
        }
    }

    public abstract BlankSpan a();
}
