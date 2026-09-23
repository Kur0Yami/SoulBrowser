package io.grpc;

import com.google.common.base.MoreObjects;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckReturnValue;
import javax.annotation.concurrent.Immutable;

@CheckReturnValue
@Immutable
/* loaded from: classes3.dex */
public final class CallOptions {

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    /* loaded from: classes3.dex */
    public static final class Key<T> {
        public final String toString() {
            throw null;
        }
    }

    static {
        List list = Collections.EMPTY_LIST;
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "deadline");
        b.b(null, "authority");
        b.b(null, "callCredentials");
        b.b(null, "executor");
        b.b(null, "compressorName");
        b.b(Arrays.deepToString(null), "customOptions");
        b.d("waitForReady", Boolean.TRUE.equals(null));
        b.b(null, "maxInboundMessageSize");
        b.b(null, "maxOutboundMessageSize");
        b.b(null, "onReadyThreshold");
        b.b(null, "streamTracerFactories");
        return b.toString();
    }
}
