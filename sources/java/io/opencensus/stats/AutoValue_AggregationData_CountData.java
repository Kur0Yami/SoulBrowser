package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* loaded from: classes3.dex */
final class AutoValue_AggregationData_CountData extends AggregationData.CountData {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof AggregationData.CountData)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1000003;
    }

    public final String toString() {
        return "CountData{count=0}";
    }
}
