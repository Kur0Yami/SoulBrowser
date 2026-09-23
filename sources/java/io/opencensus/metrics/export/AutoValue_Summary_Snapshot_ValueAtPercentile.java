package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Summary;

/* loaded from: classes3.dex */
final class AutoValue_Summary_Snapshot_ValueAtPercentile extends Summary.Snapshot.ValueAtPercentile {
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof Summary.Snapshot.ValueAtPercentile) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (int) ((((int) (1000003 ^ ((Double.doubleToLongBits(0.0d) >>> 32) ^ Double.doubleToLongBits(0.0d)))) * 1000003) ^ (Double.doubleToLongBits(0.0d) ^ (Double.doubleToLongBits(0.0d) >>> 32)));
    }

    public final String toString() {
        return "ValueAtPercentile{percentile=0.0, value=0.0}";
    }
}
