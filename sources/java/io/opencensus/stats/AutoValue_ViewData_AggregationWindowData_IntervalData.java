package io.opencensus.stats;

import io.opencensus.stats.ViewData;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
final class AutoValue_ViewData_AggregationWindowData_IntervalData extends ViewData.AggregationWindowData.IntervalData {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewData.AggregationWindowData.IntervalData)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "IntervalData{end=null}";
    }
}
