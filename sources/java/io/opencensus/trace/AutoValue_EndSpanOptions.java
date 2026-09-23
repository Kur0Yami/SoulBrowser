package io.opencensus.trace;

import com.google.android.gms.ads.RequestConfiguration;
import io.opencensus.trace.EndSpanOptions;

/* loaded from: classes3.dex */
final class AutoValue_EndSpanOptions extends EndSpanOptions {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21087a;
    public final Status b;

    /* loaded from: classes3.dex */
    public static final class Builder extends EndSpanOptions.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Boolean f21088a;
        public Status b;

        @Override // io.opencensus.trace.EndSpanOptions.Builder
        public final EndSpanOptions a() {
            String str;
            if (this.f21088a == null) {
                str = " sampleToLocalSpanStore";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (str.isEmpty()) {
                return new AutoValue_EndSpanOptions(this.f21088a.booleanValue(), this.b);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // io.opencensus.trace.EndSpanOptions.Builder
        public final EndSpanOptions.Builder b(Status status) {
            this.b = status;
            return this;
        }
    }

    public AutoValue_EndSpanOptions(boolean z, Status status) {
        this.f21087a = z;
        this.b = status;
    }

    @Override // io.opencensus.trace.EndSpanOptions
    public final boolean b() {
        return this.f21087a;
    }

    @Override // io.opencensus.trace.EndSpanOptions
    public final Status c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof EndSpanOptions) {
                EndSpanOptions endSpanOptions = (EndSpanOptions) obj;
                if (this.f21087a == endSpanOptions.b()) {
                    Status status = this.b;
                    if (status == null) {
                        if (endSpanOptions.c() == null) {
                            return true;
                        }
                        return false;
                    }
                    if (status.equals(endSpanOptions.c())) {
                        return true;
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
        int i;
        int hashCode;
        if (this.f21087a) {
            i = 1231;
        } else {
            i = 1237;
        }
        int i2 = (i ^ 1000003) * 1000003;
        Status status = this.b;
        if (status == null) {
            hashCode = 0;
        } else {
            hashCode = status.hashCode();
        }
        return i2 ^ hashCode;
    }

    public final String toString() {
        return "EndSpanOptions{sampleToLocalSpanStore=" + this.f21087a + ", status=" + this.b + "}";
    }
}
