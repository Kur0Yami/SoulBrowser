package io.opencensus.common;

/* loaded from: classes3.dex */
final class AutoValue_ServerStats extends ServerStats {
    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof ServerStats)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 1000003 * 1000003 * 1000003;
    }

    public final String toString() {
        return "ServerStats{lbLatencyNs=0, serviceLatencyNs=0, traceOption=0}";
    }
}
