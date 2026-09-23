package io.opencensus.trace.propagation;

import com.google.api.client.http.HttpHeaders;
import io.opencensus.internal.Utils;
import io.opencensus.trace.SpanContext;

/* loaded from: classes3.dex */
public abstract class TextFormat {

    /* loaded from: classes3.dex */
    public static abstract class Getter<C> {
    }

    /* loaded from: classes3.dex */
    public static final class NoopTextFormat extends TextFormat {
        @Override // io.opencensus.trace.propagation.TextFormat
        public final void a(SpanContext spanContext, HttpHeaders httpHeaders, Setter setter) {
            Utils.b(spanContext, "spanContext");
            Utils.b(httpHeaders, "carrier");
            Utils.b(setter, "setter");
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Setter<C> {
        public abstract void put(Object obj, String str, String str2);
    }

    public abstract void a(SpanContext spanContext, HttpHeaders httpHeaders, Setter setter);
}
