package io.opencensus.trace;

import java.util.Arrays;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class TraceOptions {
    public static final TraceOptions b = new TraceOptions((byte) 0);

    /* renamed from: a, reason: collision with root package name */
    public final byte f21115a;

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    public TraceOptions(byte b2) {
        this.f21115a = b2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof TraceOptions) && this.f21115a == ((TraceOptions) obj).f21115a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new byte[]{this.f21115a});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TraceOptions{sampled=");
        boolean z = true;
        if ((this.f21115a & 1) == 0) {
            z = false;
        }
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }
}
