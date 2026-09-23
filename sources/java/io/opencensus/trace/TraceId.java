package io.opencensus.trace;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class TraceId implements Comparable<TraceId> {

    /* renamed from: c, reason: collision with root package name */
    public static final TraceId f21114c = new Object();

    public final String a() {
        char[] cArr = new char[32];
        BigendianEncoding.b(cArr, 0);
        BigendianEncoding.b(cArr, 16);
        return new String(cArr);
    }

    @Override // java.lang.Comparable
    public final int compareTo(TraceId traceId) {
        traceId.getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof TraceId)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = (int) 0;
        return ((31 + i) * 31) + i;
    }

    public final String toString() {
        return "TraceId{traceId=" + a() + "}";
    }
}
