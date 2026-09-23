package io.opencensus.trace;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class EndSpanOptions {

    /* loaded from: classes3.dex */
    public static abstract class Builder {
        public abstract EndSpanOptions a();

        public abstract Builder b(Status status);
    }

    static {
        a().a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, io.opencensus.trace.AutoValue_EndSpanOptions$Builder, io.opencensus.trace.EndSpanOptions$Builder] */
    public static Builder a() {
        ?? obj = new Object();
        obj.f21088a = Boolean.FALSE;
        return obj;
    }

    public abstract boolean b();

    public abstract Status c();
}
