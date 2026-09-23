package io.opencensus.trace;

import java.util.List;

/* loaded from: classes3.dex */
final class AutoValue_Tracestate extends Tracestate {

    /* renamed from: a, reason: collision with root package name */
    public final List f21097a;

    public AutoValue_Tracestate(List list) {
        if (list != null) {
            this.f21097a = list;
            return;
        }
        throw new NullPointerException("Null entries");
    }

    @Override // io.opencensus.trace.Tracestate
    public final List a() {
        return this.f21097a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Tracestate) {
            return this.f21097a.equals(((Tracestate) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f21097a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Tracestate{entries=" + this.f21097a + "}";
    }
}
