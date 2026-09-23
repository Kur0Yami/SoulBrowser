package io.opencensus.stats;

import io.opencensus.stats.View;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
final class AutoValue_View_AggregationWindow_Interval extends View.AggregationWindow.Interval {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof View.AggregationWindow.Interval)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "Interval{duration=null}";
    }
}
