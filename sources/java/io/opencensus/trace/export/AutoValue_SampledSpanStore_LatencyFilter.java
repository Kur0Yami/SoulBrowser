package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;

/* loaded from: classes3.dex */
final class AutoValue_SampledSpanStore_LatencyFilter extends SampledSpanStore.LatencyFilter {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SampledSpanStore.LatencyFilter)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "LatencyFilter{spanName=null, latencyLowerNs=0, latencyUpperNs=0, maxSpansToReturn=0}";
    }
}
