package io.opencensus.trace.export;

/* loaded from: classes3.dex */
final class AutoValue_SpanData extends SpanData {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SpanData)) {
            return false;
        }
        throw null;
    }

    public final int hashCode() {
        throw null;
    }

    public final String toString() {
        return "SpanData{context=null, parentSpanId=null, hasRemoteParent=null, name=null, kind=null, startTimestamp=null, attributes=null, annotations=null, messageEvents=null, links=null, childSpanCount=null, status=null, endTimestamp=null}";
    }
}
