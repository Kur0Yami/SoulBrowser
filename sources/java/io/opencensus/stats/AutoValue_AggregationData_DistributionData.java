package io.opencensus.stats;

import io.opencensus.stats.AggregationData;

/* loaded from: classes3.dex */
final class AutoValue_AggregationData_DistributionData extends AggregationData.DistributionData {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AggregationData.DistributionData) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d)) {
            throw null;
        }
        return false;
    }

    public final int hashCode() {
        Double.doubleToLongBits(0.0d);
        Double.doubleToLongBits(0.0d);
        Double.doubleToLongBits(0.0d);
        Double.doubleToLongBits(0.0d);
        throw null;
    }

    public final String toString() {
        return "DistributionData{mean=0.0, count=0, sumOfSquaredDeviations=0.0, bucketCounts=null, exemplars=null}";
    }
}
