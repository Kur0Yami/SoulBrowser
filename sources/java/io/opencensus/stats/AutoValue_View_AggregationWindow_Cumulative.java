package io.opencensus.stats;

import io.opencensus.stats.View;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
final class AutoValue_View_AggregationWindow_Cumulative extends View.AggregationWindow.Cumulative {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof View.AggregationWindow.Cumulative)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1;
    }

    public final String toString() {
        return "Cumulative{}";
    }
}
