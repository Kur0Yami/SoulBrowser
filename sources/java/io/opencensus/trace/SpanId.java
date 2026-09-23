package io.opencensus.trace;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class SpanId implements Comparable<SpanId> {

    /* renamed from: c, reason: collision with root package name */
    public static final SpanId f21109c = new Object();

    public final byte[] a() {
        char[] cArr = BigendianEncoding.f21098a;
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0};
    }

    @Override // java.lang.Comparable
    public final int compareTo(SpanId spanId) {
        spanId.getClass();
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this || (obj instanceof SpanId)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanId{spanId=");
        char[] cArr = new char[16];
        BigendianEncoding.b(cArr, 0);
        sb.append(new String(cArr));
        sb.append("}");
        return sb.toString();
    }
}
