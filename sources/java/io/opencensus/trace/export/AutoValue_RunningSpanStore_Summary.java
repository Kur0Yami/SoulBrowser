package io.opencensus.trace.export;

import io.opencensus.trace.export.RunningSpanStore;
import java.util.Map;

/* loaded from: classes3.dex */
final class AutoValue_RunningSpanStore_Summary extends RunningSpanStore.Summary {

    /* renamed from: a, reason: collision with root package name */
    public final Map f21121a;

    public AutoValue_RunningSpanStore_Summary(Map map) {
        if (map != null) {
            this.f21121a = map;
            return;
        }
        throw new NullPointerException("Null perSpanNameSummary");
    }

    @Override // io.opencensus.trace.export.RunningSpanStore.Summary
    public final Map a() {
        return this.f21121a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RunningSpanStore.Summary) {
            return this.f21121a.equals(((RunningSpanStore.Summary) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21121a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Summary{perSpanNameSummary=" + this.f21121a + "}";
    }
}
