package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;

/* loaded from: classes3.dex */
final class AutoValue_RunningSpanStore_PerSpanNameSummary extends RunningSpanStore.PerSpanNameSummary {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof RunningSpanStore.PerSpanNameSummary)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1000003;
    }

    public final String toString() {
        return "PerSpanNameSummary{numRunningSpans=0}";
    }
}
