package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Summary;

/* loaded from: classes3.dex */
final class AutoValue_Summary_Snapshot extends Summary.Snapshot {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Summary.Snapshot) {
            Object obj2 = null;
            obj2.getClass();
        }
        return false;
    }

    public final int hashCode() {
        Object obj = null;
        obj.getClass();
        throw null;
    }

    public final String toString() {
        return "Snapshot{count=null, sum=null, valueAtPercentiles=null}";
    }
}
