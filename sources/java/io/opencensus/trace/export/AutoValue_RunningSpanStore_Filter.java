package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;

/* loaded from: classes3.dex */
final class AutoValue_RunningSpanStore_Filter extends RunningSpanStore.Filter {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RunningSpanStore.Filter)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "Filter{spanName=null, maxSpansToReturn=0}";
    }
}
