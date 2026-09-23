package io.opencensus.stats;

import io.opencensus.stats.Aggregation;

/* loaded from: classes3.dex */
final class AutoValue_Aggregation_Count extends Aggregation.Count {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof Aggregation.Count)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1;
    }

    public final String toString() {
        return "Count{}";
    }
}
