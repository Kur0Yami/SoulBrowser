package io.opencensus.stats;

import io.opencensus.stats.Aggregation;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
final class AutoValue_Aggregation_Mean extends Aggregation.Mean {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof Aggregation.Mean)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1;
    }

    public final String toString() {
        return "Mean{}";
    }
}
