package io.opencensus.metrics.export;

import io.opencensus.metrics.export.Distribution;

/* loaded from: classes3.dex */
final class AutoValue_Distribution_Bucket extends Distribution.Bucket {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof Distribution.Bucket)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1000003 * 1000003;
    }

    public final String toString() {
        return "Bucket{count=0, exemplar=null}";
    }
}
