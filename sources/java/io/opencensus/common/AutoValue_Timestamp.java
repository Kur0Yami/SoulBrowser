package io.opencensus.common;

/* loaded from: classes3.dex */
final class AutoValue_Timestamp extends Timestamp {
    @Override // io.opencensus.common.Timestamp
    public final int a() {
        return 0;
    }

    @Override // io.opencensus.common.Timestamp
    public final long b() {
        return 0L;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Timestamp) {
                Timestamp timestamp = (Timestamp) obj;
                if (0 == timestamp.b() && timestamp.a() == 0) {
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
        return "Timestamp{seconds=0, nanos=0}";
    }
}
