package io.opencensus.stats;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
final class AutoValue_ViewData extends ViewData {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ViewData)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "ViewData{view=null, aggregationMap=null, windowData=null, start=null, end=null}";
    }
}
