package io.grpc;

import com.google.common.base.MoreObjects;

/* loaded from: classes3.dex */
abstract class PartialForwardingClientCall<ReqT, RespT> extends ClientCall<ReqT, RespT> {
    public String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "delegate");
        return b.toString();
    }
}
