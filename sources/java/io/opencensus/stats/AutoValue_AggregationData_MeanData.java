package io.opencensus.stats;

import io.opencensus.stats.AggregationData;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
final class AutoValue_AggregationData_MeanData extends AggregationData.MeanData {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AggregationData.MeanData) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((int) (1000003 ^ (Double.doubleToLongBits(0.0d) ^ (Double.doubleToLongBits(0.0d) >>> 32)))) * 1000003;
    }

    public final String toString() {
        return "MeanData{mean=0.0, count=0}";
    }
}
