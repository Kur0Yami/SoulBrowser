package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Value;

/* loaded from: classes3.dex */
final class AutoValue_Value_ValueDouble extends Value.ValueDouble {
    public final boolean equals(Object obj) {
        if (obj != this) {
            if ((obj instanceof Value.ValueDouble) && Double.doubleToLongBits(0.0d) == Double.doubleToLongBits(0.0d)) {
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
        return "ValueDouble{value=0.0}";
    }
}
