package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* loaded from: classes3.dex */
final class AutoValue_AggregationData_LastValueDataLong extends AggregationData.LastValueDataLong {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof AggregationData.LastValueDataLong)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1000003;
    }

    public final String toString() {
        return "LastValueDataLong{lastValue=0}";
    }
}
