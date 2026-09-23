package io.opencensus.trace.config;

import android.support.v4.media.a;
import io.opencensus.trace.Sampler;
import io.opencensus.trace.config.TraceParams;

/* loaded from: classes3.dex */
final class AutoValue_TraceParams extends TraceParams {

    /* loaded from: classes3.dex */
    public static final class Builder extends TraceParams.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Sampler f21119a;
        public Integer b;

        /* renamed from: c, reason: collision with root package name */
        public Integer f21120c;
        public Integer d;
        public Integer e;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public final int a() {
        return 0;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public final int b() {
        return 0;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public final int c() {
        return 0;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public final int d() {
        return 0;
    }

    @Override // io.opencensus.trace.config.TraceParams
    public final Sampler e() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TraceParams)) {
            return false;
        }
        ((TraceParams) obj).e();
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TraceParams{sampler=");
        sb.append((Object) null);
        sb.append(", maxNumberOfAttributes=");
        sb.append(0);
        sb.append(", maxNumberOfAnnotations=");
        sb.append(0);
        sb.append(", maxNumberOfMessageEvents=");
        sb.append(0);
        sb.append(", maxNumberOfLinks=");
        return a.g(0, "}", sb);
    }
}
