package io.opencensus.trace;

import io.opencensus.common.Scope;
import io.opencensus.internal.Utils;
import io.opencensus.trace.CurrentSpanUtils;

/* loaded from: classes3.dex */
public abstract class Tracer {

    /* renamed from: a, reason: collision with root package name */
    public static final NoopTracer f21116a = new Object();

    /* loaded from: classes3.dex */
    public static final class NoopTracer extends Tracer {
        /* JADX WARN: Type inference failed for: r0v0, types: [io.opencensus.trace.SpanBuilder, java.lang.Object] */
        @Override // io.opencensus.trace.Tracer
        public final SpanBuilder a(String str) {
            ?? obj = new Object();
            Utils.b(str, "name");
            return obj;
        }
    }

    public static Scope b(Span span) {
        return new CurrentSpanUtils.ScopeInSpan(span);
    }

    public abstract SpanBuilder a(String str);
}
