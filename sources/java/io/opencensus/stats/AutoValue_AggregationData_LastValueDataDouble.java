package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* loaded from: classes3.dex */
final class AutoValue_AggregationData_LastValueDataDouble extends AggregationData.LastValueDataDouble {
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof AggregationData.LastValueDataDouble) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (int) (1000003 ^ (Double.doubleToLongBits(0.0d) ^ (Double.doubleToLongBits(0.0d) >>> 32)));
    }

    public final String toString() {
        return "LastValueDataDouble{lastValue=0.0}";
    }
}
