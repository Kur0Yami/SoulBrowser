package io.opencensus.trace.export;

import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class SpanExporter {

    /* loaded from: classes3.dex */
    public static abstract class Handler {
    }

    /* loaded from: classes3.dex */
    public static final class NoopSpanExporter extends SpanExporter {
    }
}
