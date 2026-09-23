package io.grpc;

import com.google.common.base.MoreObjects;
import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public abstract class ClientStreamTracer extends StreamTracer {

    /* loaded from: classes3.dex */
    public static abstract class Factory {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public static final class StreamInfo {

        /* loaded from: classes3.dex */
        public static final class Builder {
        }

        public final String toString() {
            MoreObjects.ToStringHelper b = MoreObjects.b(this);
            b.b(null, "callOptions");
            b.a(0, "previousAttempts");
            b.d("isTransparentRetry", false);
            return b.toString();
        }
    }
}
