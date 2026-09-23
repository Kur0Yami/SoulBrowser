package io.opencensus.stats;

import io.opencensus.stats.Aggregation;

/* loaded from: classes3.dex */
final class AutoValue_Aggregation_Sum extends Aggregation.Sum {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof Aggregation.Sum)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1;
    }

    public final String toString() {
        return "Sum{}";
    }
}
