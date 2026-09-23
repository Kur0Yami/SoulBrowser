package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.ServerCall;

/* loaded from: classes3.dex */
abstract class PartialForwardingServerCallListener<ReqT> extends ServerCall.Listener<ReqT> {
    public String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "delegate");
        return b.toString();
    }
}
