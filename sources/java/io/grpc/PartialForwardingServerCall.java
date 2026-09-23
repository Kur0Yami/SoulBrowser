package io.grpc;

import com.google.common.base.MoreObjects;

/* loaded from: classes3.dex */
abstract class PartialForwardingServerCall<ReqT, RespT> extends ServerCall<ReqT, RespT> {
    public abstract ServerCall a();

    public String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(a(), "delegate");
        return b.toString();
    }
}
