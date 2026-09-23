package io.opencensus.common;

/* loaded from: classes3.dex */
final class AutoValue_Duration extends Duration {
    @Override // io.opencensus.common.Duration
    public final int a() {
        return 0;
    }

    @Override // io.opencensus.common.Duration
    public final long b() {
        return 0L;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Duration) {
                Duration duration = (Duration) obj;
                if (0 == duration.b() && duration.a() == 0) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 1000003 * 1000003;
    }

    public final String toString() {
        return "Duration{seconds=0, nanos=0}";
    }
}
