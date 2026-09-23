package io.opencensus.trace.export;

import io.opencensus.trace.export.SampledSpanStore;

/* loaded from: classes3.dex */
final class AutoValue_SampledSpanStore_ErrorFilter extends SampledSpanStore.ErrorFilter {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SampledSpanStore.ErrorFilter)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "ErrorFilter{spanName=null, canonicalCode=null, maxSpansToReturn=0}";
    }
}
