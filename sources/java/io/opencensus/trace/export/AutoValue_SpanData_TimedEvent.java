package io.opencensus.trace.export;

import io.opencensus.trace.export.SpanData;

/* loaded from: classes3.dex */
final class AutoValue_SpanData_TimedEvent<T> extends SpanData.TimedEvent<T> {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData.TimedEvent)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "TimedEvent{timestamp=null, event=null}";
    }
}
