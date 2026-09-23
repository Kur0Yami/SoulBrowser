package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;
import java.util.Map;

/* loaded from: classes3.dex */
final class AutoValue_SampledSpanStore_PerSpanNameSummary extends SampledSpanStore.PerSpanNameSummary {

    /* renamed from: a, reason: collision with root package name */
    public final Map f21122a;
    public final Map b;

    public AutoValue_SampledSpanStore_PerSpanNameSummary(Map map, Map map2) {
        if (map != null) {
            this.f21122a = map;
            if (map2 != null) {
                this.b = map2;
                return;
            }
            throw new NullPointerException("Null numbersOfErrorSampledSpans");
        }
        throw new NullPointerException("Null numbersOfLatencySampledSpans");
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.PerSpanNameSummary
    public final Map a() {
        return this.b;
    }

    @Override // io.opencensus.trace.export.SampledSpanStore.PerSpanNameSummary
    public final Map b() {
        return this.f21122a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof SampledSpanStore.PerSpanNameSummary) {
                SampledSpanStore.PerSpanNameSummary perSpanNameSummary = (SampledSpanStore.PerSpanNameSummary) obj;
                if (this.f21122a.equals(perSpanNameSummary.b()) && this.b.equals(perSpanNameSummary.a())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.f21122a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public final String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f21122a + ", numbersOfErrorSampledSpans=" + this.b + "}";
    }
}
