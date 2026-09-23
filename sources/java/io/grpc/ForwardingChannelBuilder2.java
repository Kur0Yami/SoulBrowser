package io.grpc;

import com.google.common.base.MoreObjects;
import io.grpc.ManagedChannelBuilder;

/* loaded from: classes3.dex */
public abstract class ForwardingChannelBuilder2<T extends ManagedChannelBuilder<T>> extends ManagedChannelBuilder<T> {
    public abstract ManagedChannelBuilder a();

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(a(), "delegate");
        return b.toString();
    }
}
