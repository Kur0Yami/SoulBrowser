package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.ClientCall;

/* loaded from: classes3.dex */
abstract class PartialForwardingClientCallListener<RespT> extends ClientCall.Listener<RespT> {
    public String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "delegate");
        return b.toString();
    }
}
